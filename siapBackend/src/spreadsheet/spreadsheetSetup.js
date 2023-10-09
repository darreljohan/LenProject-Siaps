import axios from "axios";
import { JWT } from "google-auth-library";

const url = 'https://script.google.com/macros/s/AKfycbzI-vlrV2De3bvEePMIIC8_01Wbnm9R4BfL4sqkXpcObIZtbvnGOfbPdPhI-uZ9R3rT/exec'
const account ={
    "type": "service_account",
    "project_id": "siapbackend",
    "private_key_id": "8b2ed2246830f66b0a40a9441a749ed5610a12b0",
    "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQClYmO+PyXdmYt2\ndGQ3Ykxtn4RdtjyrqL4TOUHDkFWw5tY1eQkOinJnKCf+1Z+Z9yrqXvaySO0NGvOs\nh527RGFWYhJ6hV7xr8v8KqxfrQeEfTB73W9ab+erfPCoaLtaFAosqUqjiS2bszle\nU9oT4Qk31/hv+m9FrlcnKoD3QTsS5ts5DOardwAhOYGbhYMXh9sfEp6as10KpJ0y\nAD7E+AVvr5cm9yty5SJh6g9Rtl3FOdXb+jMB13P/LY8D0lNZM//A/lDz446sDbVG\n9a31xFopZxEpKAXSm4b4JfZCu6+jJ9qA38ZIsbUlvVShgYS28E5DOs5RHRnVc48P\nGDILCXe9AgMBAAECggEADTKy3wXPEcYlGQjkzn6rtrvaJlhasyA+Ou6Azwh/riRd\nx9qm3GA0DQNpXa7Sk8jjxdxaN5QWRst10rjn33/vfKNK8jgegY8T6kXFh8UZKnuL\nGPds4Xy4sjjAQ9BH00JyJWpFKJPT7e75jwuGBbwZrjkv/E+x/Y+SKO/9Zr3v5uwg\nbnsy2Az2frAIR0NivYf6vsma9hO88+oNBtWsb7yd3Isr5OQrNb1umGnmw2LqHkIW\n+ARp0vFl9evrIipxtYUZl6pUSDHVf70GI0Qbl3uuFlz0n9Aw749lEzHYZgu8jvxR\nS1oJot44MpzT6y+D4P32s2J4gMul8sd4bSdbkLJcQQKBgQDguqiUnXVpj1GN0Rny\nsZZwDoJ51+iABesV4T5O+IhVBVs2Lc3Q8MmN3CzEoZC1Fyfoems/AwkzBCesddPH\nDqPN2y4PxnOthQA3JfeocVQ1RRJPSHBB6FqFQ4X9lvdEmmArRpJ9jZj2Zc7St+Hy\nciPlKhoDlkL+NksD7BemX3sLeQKBgQC8Zb1wiY+1IX6qgCILHaj2CmDfK/9JHQ1I\nOgLgwFfrfPoxyLMW3bUp66Aop6VXLCafDva7PylzCgHRz2j3yJ1bRURDy4jbsPaw\nVfFAw9AanFNvtG23+9vyNYKGPCiJceDUiudTQmWjyZLAkNvS2xPj5IANCrpzagdl\nOFqsXXA5ZQKBgQDKBoOutq7qqrDCMQyGpSd8rU6Wgoa9MJTaIpeFHuBQrnQFDMBN\n6WkIYrrMOgKBCcQStprbFruaZU3VOEeeV4bidPu/qsQrZbl/2l39y4PML7/6DkD8\nvwlBbCZ0htbbkXyK6vKedEDioTuBK1WwQvQJ/ANO3jJznhNp/0BzjLps4QKBgF0p\nknxMChxv68s0gaEtkZfZmf3CLANjsmW9Ch9J/jAdJTvpG2Z7TFLmidSQ0lpBIvgU\n1j3SBhU1JaEzB51AP1Aa+J7tz0eUQukAFsUID6iZFUlv17HbgfBMNbdbmFAfWCbC\naZHqi4hq7X78IzgpzbQsEoZgf8MC85VCQNRrgEthAoGBAK1SyS509GebdJaEDTpt\nFTtC747SUZIdODBSRPKoVrp429b+fTrkP4QcgO1IxQIawO9rnJsgczczvkFxZdUr\n4UeTGJXcg1QRP896llRXx+6tkf92Fnd87aaapoqgWvC5yA12Vion69Hka/eYbjCC\nM0bqwBEhS4ZF5bH1VMtiGF15\n-----END PRIVATE KEY-----\n",
    "client_email": "siapbackend@siapbackend.iam.gserviceaccount.com",
    "client_id": "116300414033919148827",
    "auth_uri": "https://accounts.google.com/o/oauth2/auth",
    "token_uri": "https://oauth2.googleapis.com/token",
    "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
    "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/siapbackend%40siapbackend.iam.gserviceaccount.com",
    "universe_domain": "googleapis.com"
}   

function getServiceAccountAccessToken() {
  return new Promise((resolve, reject) => {
    const client = new JWT({
      email: account.client_email, // Use client_email as the email
      key: account.private_key,    // Use private_key as the key 
      scopes: 'https://www.googleapis.com/auth/script.external_request'// Replace with your desired scope(s)
    });
    // Authorize the client
    client.authorize((err, tokens) => {
      if (err) {
        console.error('Service account authentication failed:', err);
        reject(err);
        return;
      }

      if (!tokens.access_token) {
        const errorMessage = 'Access token not found';
        console.error(errorMessage);
        reject(errorMessage);
        return;
      }

      // Resolve the Promise with the access token
      resolve(tokens.access_token);
    });
  });
}

function getAppscript(body){
  return new Promise((resolve, reject) => {
    const token = getServiceAccountAccessToken();

    let parameter = {
      action: body.action,
      spreadsheet: body.spreadsheet,
      sheet: body.sheet
    }
    axios.get(url, 
    {
    headers: {Authorization: 'Bearer ${token}'}, 
    params: parameter
    }).then((value)=>{
      resolve(value)
    }).catch((error)=>{
      reject(error)
    })
  })
}
let body = {
  action: "getAsset",
  spreadsheet: '1aVU683a-eFwCspfFMejkRgY1WZyZZ0oukF26rtc7IEU',
  sheet: 'Dahana'
}

getAppscript(body).then((value)=>{
  console.log(value)
}, (err)=>{
  console.log(err)
})

function postAppscript(){
  return new Promise((resolve, reject) => {
    const token = getServiceAccountAccessToken();

    let parameter = {
      action: body.action,
      spreadsheet: body.spreadsheet,
      sheet: body.sheet
    }
    axios.post(url, 
    {
    headers: {Authorization: 'Bearer ${token}'}, 
    params: parameter
    }).then((value)=>{
      resolve(value)
    }).catch((error)=>{
      reject(error)
    })
  })
}