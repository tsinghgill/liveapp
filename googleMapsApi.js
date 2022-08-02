const https = require('https');
require("dotenv").config();

function googleMapsLookup(address) {
  return new Promise((resolve, reject) => {
    const apiKey = process.env.API_KEY;

    const requestOptions = {
      method: 'GET',
      header: {
        'Content-Type': 'application/json',
      },
    };

    const req = https.request(
      `https://maps.googleapis.com/maps/api/geocode/json?address=${address}&key=${apiKey}`,
      requestOptions,
      res => {
        let response = '';

        res.on('data', d => {
          response += d;
        });

        res.on('end', () => {
          obj = JSON.parse(response);
          resolve(obj);
        });
      }
    );

    req.on('error', e => {
      reject(e);
    });

    req.end();
  });
}

function generateAddressObject(response) {
  if (response.results.length === 0 || response.status !== 'OK') {
    return null
  }

  const longNames = {}
  const shortNames = {}

  response.results[0].address_components.forEach((component) => {
    longNames[component.types.filter((type) => type !== 'political')[0]] = component.long_name
    shortNames[component.types.filter((type) => type !== 'political')[0]] = component.short_name
  })

  const city = longNames.locality || longNames.sublocality || longNames.neighborhood

  if (
    longNames.street_number &&
    longNames.route &&
    city &&
    longNames.administrative_area_level_1 &&
    longNames.postal_code &&
    longNames.country &&
    shortNames.administrative_area_level_1 &&
    shortNames.country
  ) {
    const address1 = `${longNames.street_number} ${longNames.route}`
    const address2 = longNames.subpremise ?? ''
    const province = longNames.administrative_area_level_1
    const zip = longNames.postal_code

    return {
      address1,
      address2,
      city,
      state: longNames.administrative_area_level_1,
      zip,
      country: longNames.country,
      provinceCode: shortNames.administrative_area_level_1,
      countryCode: shortNames.country,
      fullAddress:
        `${address1}${address2 ? ` ${address2}` : ''}, ${city}, ${province}, ${zip}`
    }
  }

  return null
}

module.exports = {
  googleMapsLookup,
  generateAddressObject
};
