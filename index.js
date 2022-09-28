const { cleanPhone, hashSecretForCompliance, validateAddress } = require('./helpers.js');

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
    // Send upstream
    let source = await turbine.resources('liveapp_pg_db');

    // Specify records to pull
    let records = await source.records('customer_data');

    // Process data
    let anonymized = await turbine.process(records, this.processData);

    // Send downstream
    let destination = await turbine.resources('liveapp_pg_db');
    // let destination = await turbine.resources('etl_demo_s3');

    // Write data
    await destination.write(anonymized, 'processed_customer_data');
  }
};
