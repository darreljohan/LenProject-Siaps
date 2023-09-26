import {google} from 'googleapis'
import {JWT} from 'google-auth-library'

const keyFile = './siapBackend/src/spreadsheet/siapbackend-8b2ed2246830.json';
const scriptUrl = 'AKfycbzDjIvwfST4rSwYuUxf2xIxb_wg_kE7b2aNwtGyY_sL1eqgl2BiUQ7UJLQwuyh5T-_f';

async function runScript(){
  return new Promise((resolve, reject) => {
    try {
      const auth = new JWT({
        keyFile,
        scopes: ['https://www.googleapis.com/auth/script.external_request'],
      });

      auth.authorize();
      const script = google.script('v1');
      const response = script.scripts.run({
        auth,
        scriptId: scriptUrl,
        resource: {
          function: 'doGet',
          parameters:{
            action : 'getKapabilitas',
            destinationId : "1IiYP0ACAsqXdeePDwG-GyO7tFeK6uhDtT-DHI4TxESI",
            destinationSheet : "Sheet1"
          }
        },
      });
      console.log('Apps Script API Response:', response.data);
      resolve(response.data)
    } catch (error) {
      console.error('Error:', error.message);
      reject(error)
    }
  })
}

// Call the function to get the array of objects.
runScript();