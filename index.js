const stringHash = require('string-hash');
// const { googleMapsLookup } = require('./googleMapsApi.js');
// const { generateAddressObject } = require('./googleMapsApi.js');

/*
Example:
- For compliance reasons, validating and hashing key customer info (ie: bank account number, policy number)
- Alternatively we can encrypt this data and keep decrypting codes in another table
*/
function hashSecretForCompliance(str) {
  // Keep only correctly formatted codes
  let modifiedCode = '';
  if (str && /[a-zA-Z]{3}[0-9]{2}[a-zA-Z]{3}[0-9]{1}[a-zA-Z]{2}/.test(str)) {
    modifiedCode = str;
  }

  // Hash the code if it is valid
  if (modifiedCode.length > 0) {
    modifiedCode = stringHash(modifiedCode);
  }

  return modifiedCode;
}

/*
Example:
- Cleaning data. In this case raw phone number data
- Future we could verify number using 3rd party API library from Telnyx
- Organize numbers via landline, voip, or wireless to determine sms capabilities and generate a new data store
*/
function cleanPhone(str) {
  let phone = str.replace(/[^\d]/g, '');

  if (phone.length == 10) {
    phone = phone.replace(/(\d{3})(\d{3})(\d{4})/, '($1) $2-$3');
  } else if (phone.length == 11) {
    phone = phone.slice(1).replace(/(\d{3})(\d{3})(\d{4})/, '($1) $2-$3');
  }
  return phone;
}

/*
Example:
- Validating addresses to sending samples or marketing mail to customers
- Future could also use a webhook to automate sending mail (ie: signup bonus, coupons, gift basket)
*/
function validateAddress(record) {
  const payload = record.value.payload;
  let buildAddress = '';

  if (payload.address.length > 0) {
    buildAddress = buildAddress + ' ' + payload.address;
  } else {
    return 'invalid';
  }

  if (payload.region.length > 0) {
    buildAddress = buildAddress + ' ' + payload.region;
  }

  if (payload.country.length > 0) {
    buildAddress = buildAddress + ' ' + payload.country;
  }

  if (payload.postalzip.length > 0) {
    buildAddress = buildAddress + ' ' + payload.postalzip;
  }

  buildAddress = buildAddress.trim();

  if (buildAddress.length > 10) {
    return 'valid';
  } else {
    return 'invalid';
  }

  /*
  Stretch Goal:
  - Add support to lookup address via google maps
  - Create a new datastore to store validated address and attributes
  */
  // let addressObj = null
  // googleMapsLookup(buildAddress).then((res) => {
  //   addressObj = generateAddressObject(res)
  //   if (addressObj && addressObj.fullAddress && addressObj.fullAddress.length > 0) {
  //     console.log(`addressObj.fullAddress`, addressObj.fullAddress)
  //     return 'valid';
  //   } else {
  //     return 'invalid';
  //   }
  // })
}

exports.App = class App {
  processData(records) {
    records.forEach(record => {
      record.set(
        'secretcode',
        hashSecretForCompliance(record.get('secretcode'))
      );
      
      const validaddress = validateAddress(record)
      record.set('validaddress', validaddress);

      record.set('phone', cleanPhone(record.get('phone')));
    });

    return records;
  }

  async run(turbine) {
    // To configure resources for your production datastores
    // on Meroxa, use the Dashboard, CLI, or Terraform Provider
    // For more details refer to: http://docs.meroxa.com/

    // Identify the upstream datastore with the `resources` function
    // Replace `source_name` with the resource name configured on Meroxa
    let source = await turbine.resources('pg_db');

    // Specify which `source` records to pull with the `records` function
    // Replace `collection_name` with whatever data organisation method
    // is relevant to the datastore (e.g., table, bucket, collection, etc.)
    // If additional connector configs are needed, provided another argument i.e.
    // {"incrementing.field.name": "id"}
    let records = await source.records('customer_data');

    // Specify the code to execute against `records` with the `process` function
    // Replace `Anonymize` with the function. If environment variables are needed
    // by the function, provide another argument i.e. {"MY_SECRET": "deadbeef"}.
    // let anonymized = await turbine.process(records, this.anonymize);
    let anonymized = await turbine.process(records, this.processData);

    // Identify the upstream datastore with the `resources` function
    // Replace `source_name` with the resource name configured on Meroxa
    // let destination = await turbine.resources('source_name');
    let destination = await turbine.resources('pg_db');

    // Specify where to write records to your `destination` using the `write` function
    // Replace `collection_archive` with whatever data organisation method
    // is relevant to the datastore (e.g., table, bucket, collection, etc.)
    // If additional connector configs are needed, provided another argument i.e.
    // {"behavior.on.null.values": "ignore"}
    await destination.write(anonymized, 'collection_archive', 'postgres');
  }
};
