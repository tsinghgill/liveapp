const stringHash = require('string-hash');
const { googleMapsLookup, generateAddressObject } = require('./googleMapsApi.js');

/*
Masking Example:
- For compliance reasons, validating and hashing key customer info (ie: bank account number, policy number)
- We can encrypt also this data and keep decrypting codes in another table
*/
function hashSecretForCompliance(str) {
    // Keep only correctly formatted codes

    // Matches CCC##CCC#CC
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
Data Validation Example:
- Cleaning data. In this case raw phone number data
- Future we could verify number using 3rd party API library from Telnyx, Twillio
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
Data Enrichment Example:
- Validating addresses to sending samples or marketing mail to customers
- Future could also use a webhook to automate sending mail (ie: signup bonus, coupons, gift basket)
*/
function validateAddress(record) {
    console.log(`[validateAddress] record:`, record)
    
    const payload = record.value.payload;
    console.log(`[validateAddress] payload:`, payload)
    
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

    // if (buildAddress.length > 10) {
    //   return 'valid';
    // } else {
    //   return 'invalid';
    // }

    /*
    Stretch Goal:
    - Add support to lookup address via google maps
    - Create a new datastore to store validated address and attributes
    */

    let addressObj = null
    googleMapsLookup(buildAddress).then((res) => {
        addressObj = generateAddressObject(res)
        if (addressObj && addressObj.fullAddress && addressObj.fullAddress.length > 0) {
            console.log(`addressObj`, addressObj)
            return 'valid';
        } else {
            return 'invalid';
        }
    })
}

module.exports = {
    hashSecretForCompliance,
    cleanPhone,
    validateAddress
}