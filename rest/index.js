const express = require('express')
const app = express()
const port = 3000
const request = require('request')
const firebase = require('firebase-admin')
const credentials = require("./key/credentials.json");
const mysql = require('mysql')

let cors = require("cors");
app.use(cors());
app.use(express.json())

const connection =  mysql.createConnection({ //Configure your database
  multipleStatements: true,
  host: 'localhost',
  user: 'root',
  //password: 'your_password',
  database: 'siap'
})
connection.connect()

let addUserRequest = function (body){
  return new Promise((resolve, reject)=>{
    connection.query
    ("INSERT INTO user_request (username, email, jabatan, password ) VALUES ('"+body.user+"', '"+body.mail+"', '"+'jabatan1'+"', '"+body.pass+"')",
    (err, rows, fields)=>{
      if (err){
        reject(err)
      }else{
        resolve(rows)
      }
    }
    ) 
  })
}

let getUserApprovalTable = function(){
  return new Promise((resolve, reject)=>{
    connection.query
    ("SELECT * FROM userrequest",
    (err, rows, fields)=>{
      if (err){
        reject(err)
      }else{
        resolve(rows)
      }
    }
    ) 
  })
}

let deleteUserRequest = function(body){
  return new Promise((resolve, reject)=>{
    connection.query
    ("DELETE FROM userrequest WHERE email="+body.email,
    (err, rows, fields)=>{
      if (err){
        reject(err)
      }else{
        resolve(rows)
      }
    }
    ) 
  })
}

let updateAsset = function(body){
  return new Promise((resolve, reject)=>{
  const id = body.id;
  const updateData = body;
  const currentTimestamp = new Date().toISOString();

  const updateQuery = `
    UPDATE `+body.nama_tabel+` 
    SET
      nama_asset = ?,
      jenis_asset = ?,
      kondisi = ?,
      status_pemakaian = ?,
      utilisasi = ?,
      tahun_perolehan = ?,
      umur_teknis = ?,
      sumber_dana = ?,
      nilai_perolehan = ?,
      nilai_buku = ?,
      rencana_optimisasi = ?,
      lokasi = ?,
      date_edit = ?,
      user_edit = ?
    WHERE id = ?
  `;

  const updateValues = [
    updateData.nama_asset,
    updateData.jenis_asset,
    updateData.kondisi,
    updateData.status_pemakaian,
    updateData.utilisasi,
    updateData.tahun_perolehan,
    updateData.umur_teknis,
    updateData.sumber_dana,
    updateData.nilai_perolehan,
    updateData.nilai_buku,
    updateData.rencana_optimisasi,
    updateData.lokasi,
    currentTimestamp,
    updateData.user_edit,
    id
  ];
    connection.query
    (updateQuery, updateValues,
    (err, rows, fields)=>{
      if (err){
        reject(err)
      }else{
        resolve(rows)
      }
    }
    ) 
  })
}

let insertAsset = function(body){
  return new Promise((resolve, reject)=>{
  const updateData = body;
  const currentTimestamp = new Date().toISOString();

  const updateQuery = `
    INSERT INTO `+body.nama_tabel+` (
      nama_asset, 
      jenis_asset, 
      kondisi, 
      status_pemakaian, 
      utilisasi, 
      tahun_perolehan, 
      umur_teknis, 
      sumber_dana, 
      nilai_perolehan, 
      nilai_buku, 
      rencana_optimisasi, 
      lokasi,
      user_edit 
  ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) `;

  const updateValues = [
    updateData.nama_asset,
    updateData.jenis_asset,
    updateData.kondisi,
    updateData.status_pemakaian,
    updateData.utilisasi,
    updateData.tahun_perolehan,
    updateData.umur_teknis,
    updateData.sumber_dana,
    updateData.nilai_perolehan,
    updateData.nilai_buku,
    updateData.rencana_optimisasi,
    updateData.lokasi,
    updateData.user_edit,
  ];
    connection.query
    (updateQuery, updateValues,
    (err, rows, fields)=>{
      if (err){
        reject(err)
      }else{
        resolve(rows)
      }
    }
    ) 
  })
}

let getTableAsset = function(body){
  return new Promise((resolve, reject)=>{
    connection.query
    ("SELECT * FROM "+body,
    (err, rows, fields)=>{
      if (err){
        reject(err)
      }else{
        resolve(rows)
      }
    }
    ) 
  })
}


app.use(express.json())
firebase.initializeApp({
  credential: firebase.credential.cert(credentials),
});

app.post('/user/signup', async(req, res)=>{
  const userResponse = await firebase.auth().createUser({
    email: req.body.email,
    password: req.body.password,
    emailVerified: false,
    disabled: false
  })
  res.json(userResponse)
})

app.get('/user/reject', async(req, res)=>{
  let table = deleteUserRequest(req.body).then((value)=>{
    res.send('success')
  },
  (err)=>{
    res.send('failed')
  }

  )
})

app.get('/user/approvalTable', async(req, res)=>{
  let table = getUserApprovalTable().then((value)=>{
    res.send(JSON.parse(JSON.stringify(value)))
  },
  (err)=>{
    res.send('failed')
  }

  )
})

app.post('/user/requestAccount', async(req, res)=>{
  let userList = addUserRequest(req.body).then((value)=>{
    res.send('success')
  },
  (err)=>{
    res.send(err)
    console.log(err)
  }
  )
})

app.get('/user/approvalTable', async(req, res)=>{
  let table = getUserApprovalTable().then((value)=>{
    res.send(JSON.parse(JSON.stringify(value)))
  },
  (err)=>{
    res.send('failed')
  }

  )
})

//Tambahkan params nama table
app.get('/table/mergeSpreadsheetTable', (req, res) => {
  request('https://script.google.com/macros/s/AKfycbyT8m4aZHjVQVwi-KD4lDgWfqe7oxM63sXw5RFQ5IftnjJpMtZx3gUSssCfvS9CwzK4/exec?action=' + req.query.action + "&destinationSheet=" + req.query.destinationSheet +"&spreadsheetId=1s-SAB3kPISzLc2ppEq8IZ4-OrSAlsuyQBqNME2RJBa8", (err, body) => {
    const jsonArray = JSON.parse(body.body);

    const promises = jsonArray.map(obj => {
      return new Promise((resolve, reject) => {
        const idToCheck = obj.no;
        const selectQuery = "SELECT id FROM "+req.query.tableName+" WHERE id = ?";

        connection.query(selectQuery, [idToCheck], (error, results) => {
          if (error) {
            console.error('Error:', error);
            reject(error);
            return;
          }

          if (results.length > 0) {
            obj.read = true; // ID exists in the table
          } else {
            obj.read = false; // ID doesn't exist in the table
          }

          resolve(obj);
        });
      });
    });

    Promise.all(promises)
      .then(updatedArray => {
        // Send the updated array as the response
        res.send(updatedArray);
      })
      .catch(error => {
        // Handle error if needed
        console.error('Error:', error);
        res.status(500).send('An error occurred');
      });
  });
})

//Jangan Dipakai
app.post('/table/oneTimeInput', (req, res)=>{
  request("https://script.google.com/macros/s/AKfycbyT8m4aZHjVQVwi-KD4lDgWfqe7oxM63sXw5RFQ5IftnjJpMtZx3gUSssCfvS9CwzK4/exec?action=getTable&destinationSheet=Len", (err, body)=>{
    const insertQuery = 'INSERT INTO pindad_assets (id, nama_asset, jenis_asset, kondisi, status_pemakaian, utilisasi, tahun_perolehan, umur_teknis, sumber_dana, nilai_perolehan, nilai_buku, rencana_optimisasi, lokasi) VALUES ?';

   const values = JSON.parse(body.body).map(obj => [obj.id, obj.nama_asset, obj.jenis_asset, obj.kondisi, obj.status_pemakaian, obj.utilisasi, obj.tahun_perolehan, obj.umur_teknis, obj.sumber_dana, obj.nilai_perolehan, obj.nilai_buku, obj.rencana_optimisasi, obj.lokasi]);

   connection.query(insertQuery, [values], (err, result) => {
    if (err) {
      console.error('Insertion failed:', err);
      res.status(500).send('Insertion failed');
    } else {
      console.log('Insertion successful');
      res.status(200).send('Insertion successful'); 
    }
  });
  })
})

app.get('/table/get', (req, res)=>{
  let table = getTableAsset(req.query.nama_tabel).then((value)=>{
    res.send(JSON.parse(JSON.stringify(value)))
  },
  (err)=>{
    console.log(err)
    res.send('failed')
  })
})

app.put('/table/update', (req, res)=>{
  let table = updateAsset(req.body).then((value)=>{
    res.send('success')
  },
  (err)=>{
    console.log(err)
    res.send('failed')
  }

  )
})

app.post('/table/insert', (req, res)=>{
  let table = insertAsset(req.body).then((value)=>{
    res.send('success')
  },
  (err)=>{
    console.log(err)
    res.send('failed')
  }
  )
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})