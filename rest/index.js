const express = require('express')
const app = express()
const port = 3000
const request = require('request')
const firebase = require('firebase-admin')
const credentials = require('./key/credentials.json')
const mysql = require('mysql')
const key = require('./key/apiKey.json')
const multer = require('multer')
const path = require('path')

const cors = require('cors')
app.use(cors())
app.use(express.json())

const connection = mysql.createConnection({ // Configure your database
  multipleStatements: true,
  host: 'localhost',
  user: 'root',
  // password: 'your_password', 
  database: 'siap'
})
connection.connect()

function isValidApiKey (apiKey) {
  // Check if apiKey exists in your authorized keys list
  const authorizedKeys = [key.key]
  return authorizedKeys.includes(apiKey)
}

// eslint-disable-next-line no-unused-vars
const apiKeyMiddleware = (req, res, next) => {
  const apiKey = req.body.key
  if (apiKey && isValidApiKey(apiKey)) {
    next()
  } else {
    res.status(401).json({ message: 'Unauthorized' })
  }
}

const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, path.join(__dirname, '/sources')) // Specify the directory where you want to store uploaded images
  },
  filename: (req, file, cb) => {
    cb(null, Date.now() + '-' + file.originalname)
  }
})

const upload = multer({ storage })

function addUserRequest (body) { // done
  return new Promise((resolve, reject) => {
    connection.query("INSERT INTO user_request (username, email, jabatan, password ) VALUES ('" + body.user + "', '" + body.mail + "', '" + body.jabatan + "', '" + body.pass + "')",
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

function getUserApprovalTable () { //done
  return new Promise((resolve, reject) => {
    connection.query('SELECT * FROM userrequest',
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

function deleteUserRequest (body) { //done
  return new Promise((resolve, reject) => {
    connection.query('DELETE FROM userrequest WHERE email=' + body.email,
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

function addUsertoDatabase (body) {//done
  return new Promise((resolve, reject) => {
    const updateData = body

    const updateQuery = `
      INSERT INTO users (
        username,
        email,
        jabatan,
        password
    ) VALUES (?, ?, ?, ?) `

    const updateValues = [
      updateData.username,
      updateData.email,
      updateData.jabatan,
      updateData.password
    ]
    connection.query(updateQuery, updateValues,
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

function updateAsset (body) { //done
  return new Promise((resolve, reject) => {
    const id = body.id
    const updateData = body
    const currentTimestamp = new Date().toISOString()

    const updateQuery = `
    UPDATE ` + body.nama_tabel + ` 
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
      user_edit = ?,
      merk = ?,
      tipe_mesin = ?,
      kategori_fungsi_mesin = ?,
      raw_material = ?
    WHERE id = ?;
    INSERT INTO log (
      user_edit,
      keterangan,
      date_edit    
    ) VALUES (?, ?, ?)
  `

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
      updateData.merk,
      updateData.tipe_mesin,
      JSON.stringify(updateData.kategori_fungsi_mesin),
      JSON.stringify(updateData.raw_material),
      id,
      updateData.user_edit,
      'Mengupdate data ' + id + ' pada tabel ' + body.nama_tabel,
      currentTimestamp
    ]
    connection.query(updateQuery, updateValues,
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

function updateAssetPhoto (body, linkFile) {
  return new Promise((resolve, reject) => {
    const id = body.id
    const updateData = body
    const currentTimestamp = new Date().toISOString()

    const updateQuery = `
    UPDATE ` + body.nama_tabel + ` 
    SET
      gambar = ?
    WHERE id = ?;
    INSERT INTO log (
      user_edit,
      keterangan,
      date_edit    
    ) VALUES (?, ?, ?)
  `

    const updateValues = [
      linkFile,
      parseInt(id),
      updateData.user_edit,
      'Menambahkan foto pada asset ' + id + ' pada tabel ' + body.nama_tabel,
      currentTimestamp
    ]
    connection.query(updateQuery, updateValues,
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

function deleteAssetPhoto (body) {
  return new Promise((resolve, reject) => {
    const id = body.id
    const updateData = body
    const currentTimestamp = new Date().toISOString()

    const updateQuery = `
    UPDATE ` + body.nama_tabel + ` 
    SET
      gambar = ?,
      user_edit = ?,
      date_edit = ?
    WHERE id = ?;
    INSERT INTO log (
      user_edit,
      keterangan,
      date_edit    
    ) VALUES (?, ?, ?)
  `

    const updateValues = [
      null,
      updateData.user_edit,
      currentTimestamp,
      id,
      updateData.user_edit,
      'Menghapus foto pada asset ' + id + ' pada tabel ' + body.nama_tabel,
      currentTimestamp
    ]
    connection.query(updateQuery, updateValues,
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

function insertAsset (body) {
  return new Promise((resolve, reject) => {
    const updateData = body
    const currentTimestamp = new Date().toISOString()

    const updateQuery = `
    INSERT INTO ` + body.nama_tabel + ` (
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
      user_edit,
      merk,
      tipe_mesin,
      kategori_fungsi_mesin,
      raw_material 
  ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?); 
  INSERT INTO log (
    user_edit,
    keterangan,
    date_edit    
  ) VALUES (?, ?, ?);
  SELECT LAST_INSERT_ID() AS inserted_id
  `

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
      updateData.merk,
      updateData.tipe_mesin,
      JSON.stringify(updateData.kategori_fungsi_mesin),
      JSON.stringify(updateData.raw_material),
      updateData.user_edit,
      'Menambahkan data ' + updateData.nama_asset + ' pada tabel ' + body.nama_tabel,
      currentTimestamp
    ]
    connection.query(updateQuery, updateValues,
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

function getTableAsset (body) {
  return new Promise((resolve, reject) => {
    connection.query('SELECT * FROM ' + body,
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

function insertMail (body) {
  return new Promise((resolve, reject) => {
    const updateData = body
    const currentTimestamp = new Date().toISOString()

    const updateQuery = `
      INSERT INTO ` + body.nama_tabel + ` (
        nomor_surat, 
        linkFile, 
        nama_file, 
        mime_type, 
        url
    ) VALUES (?, ?, ?, ?, ?) `

    const updateValues = [
      updateData.nomor_surat,
      updateData.linkFile,
      updateData.nama_file,
      updateData.mime_type,
      updateData.url
    ]
    connection.query(updateQuery, updateValues,
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

function updateMail (body) {
  return new Promise((resolve, reject) => {
    const id = body.id_surat
    const updateData = body
    const currentTimestamp = new Date().toISOString()

    const updateQuery = `
      UPDATE ` + body.nama_tabel + ` 
      SET
        nomor_surat = ?,
        linkFile = ?,
        nama_file = ?,
        mime_type = ?,
        url = ?,
        date_edit = ?
      WHERE id_surat = ?
    `

    const updateValues = [
      updateData.nomor_surat,
      updateData.linkFile,
      updateData.nama_file,
      updateData.mime_type,
      updateData.url,
      currentTimestamp,
      id
    ]
    connection.query(updateQuery, updateValues,
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

function deleteMail (body) {
  return new Promise((resolve, reject) => {
    connection.query('DELETE FROM ' + body.nama_tabel + ' WHERE id_surat=' + body.id_surat,
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
    )
  })
}

app.use(express.json())
firebase.initializeApp({
  credential: firebase.credential.cert(credentials)
})

app.post('/user/signup', async (req, res) => {
  const userResponse = await firebase.auth().createUser({
    email: req.body.email,
    password: req.body.password,
    emailVerified: false,
    disabled: false
  }).then(() => {
    const table = addUsertoDatabase(req.body).then((value) => {
      res.send('success')
    },
    (err) => {
      res.send('failed')
    })
  }).catch((error) = {
    
  })
})

// WEB ONLY
app.get('/user/reject', async (req, res) => {
  const table = deleteUserRequest(req.body).then((value) => {
    res.send('success')
  },
  (err) => {
    res.send('failed')
  }
  )
})

// WEB ONLY
app.get('/user/approvalTable', async (req, res) => {
  const table = getUserApprovalTable().then((value) => {
    res.send(JSON.parse(JSON.stringify(value)))
  },
  (err) => {
    res.send('failed')
  }

  )
})

app.post('/user/requestAccount', async (req, res) => {//done
  const userList = addUserRequest(req.body).then((value) => {
    res.send('success')
  },
  (err) => {
    res.send(err)
    console.log(err)
  }
  )
})

// WEB ONLY
app.get('/user/approvalTable', async (req, res) => {
  const table = getUserApprovalTable().then((value) => {
    res.send(JSON.parse(JSON.stringify(value)))
  },
  (err) => {
    res.send('failed')
  }

  )
})

// Tambahkan params nama table - WEB ONLY
app.get('/table/mergeSpreadsheetTable', (req, res) => {
  request('https://script.google.com/macros/s/AKfycbyT8m4aZHjVQVwi-KD4lDgWfqe7oxM63sXw5RFQ5IftnjJpMtZx3gUSssCfvS9CwzK4/exec?action=' + req.query.action + '&destinationSheet=' + req.query.destinationSheet + '&spreadsheetId=1s-SAB3kPISzLc2ppEq8IZ4-OrSAlsuyQBqNME2RJBa8', (err, body) => {
    const jsonArray = JSON.parse(body.body)

    const promises = jsonArray.map(obj => {
      return new Promise((resolve, reject) => {
        const idToCheck = obj.no
        const selectQuery = 'SELECT id FROM ' + req.query.tableName + ' WHERE id = ?'

        connection.query(selectQuery, [idToCheck], (error, results) => {
          if (error) {
            console.error('Error:', error)
            reject(error)
            return
          }

          if (results.length > 0) {
            obj.read = true // ID exists in the table
          } else {
            obj.read = false // ID doesn't exist in the table
          }

          resolve(obj)
        })
      })
    })

    Promise.all(promises)
      .then(updatedArray => {
        // Send the updated array as the response
        res.send(updatedArray)
      })
      .catch(error => {
        // Handle error if needed
        console.error('Error:', error)
        res.status(500).send('An error occurred')
      })
  })
})

// Jangan Dipakai
app.post('/table/oneTimeInput', (req, res) => {
  request('https://script.google.com/macros/s/AKfycbyT8m4aZHjVQVwi-KD4lDgWfqe7oxM63sXw5RFQ5IftnjJpMtZx3gUSssCfvS9CwzK4/exec?action=getTable&destinationSheet=Len', (err, body) => {
    const insertQuery = 'INSERT INTO pindad_assets (id, nama_asset, jenis_asset, kondisi, status_pemakaian, utilisasi, tahun_perolehan, umur_teknis, sumber_dana, nilai_perolehan, nilai_buku, rencana_optimisasi, lokasi) VALUES ?'

    const values = JSON.parse(body.body).map(obj => [obj.id, obj.nama_asset, obj.jenis_asset, obj.kondisi, obj.status_pemakaian, obj.utilisasi, obj.tahun_perolehan, obj.umur_teknis, obj.sumber_dana, obj.nilai_perolehan, obj.nilai_buku, obj.rencana_optimisasi, obj.lokasi])

    connection.query(insertQuery, [values], (err, result) => {
      if (err) {
        console.error('Insertion failed:', err)
        res.status(500).send('Insertion failed')
      } else {
        console.log('Insertion successful')
        res.status(200).send('Insertion successful')
      }
    })
  })
})

app.get('/table/get', (req, res) => {
  const table = getTableAsset(req.query.nama_tabel).then((value) => {
    res.send(JSON.parse(JSON.stringify(value)))
  },
  (err) => {
    console.log(err)
    res.send('failed')
  })
})

app.put('/table/update', (req, res) => {
  const table = updateAsset(req.body).then((value) => {
    res.send('success')
  },
  (err) => {
    console.log(err)
    res.send('failed')
  }

  )
})

app.post('/table/insert', (req, res) => {
  const table = insertAsset(req.body).then((value) => {
    res.send(value[2][0])
  },
  (err) => {
    console.log(err)
    res.send('failed')
  })
})

app.post('/table/uploadPhoto', upload.single('photo'), (req, res) => {
  const file = req.file.path
  if (!file) {
    res.status(400).send({
      status: false,
      data: 'No File is selected.'
    })
  }
  const table = updateAssetPhoto(req.body, file).then((value) => {
    res.send('success')
  },
  (err) => {
    console.log(err)
    res.send('failed')
  })
})

app.delete('/table/deletePhoto', (req, res) => {
  const table = deleteAssetPhoto(req.body).then((value) => {
    res.send('success')
  },
  (err) => {
    console.log(err)
    res.send('failed')
  })
})

app.post('/mail/insert', (req, res) => {
  const table = insertMail(req.body).then((value) => {
    res.send('success')
  },
  (err) => {
    console.log(err)
    res.send('failed')
  })
})

app.put('/mail/update', (req, res) => {
  const table = updateMail(req.body).then((value) => {
    res.send('success')
  },
  (err) => {
    console.log(err)
    res.send('failed')
  }
  )
})

app.delete('/mail/delete', (req, res) => {
  const table = deleteMail(req.body).then((value) => {
    res.send('success')
  },
  (err) => {
    console.log(err)
    res.send('failed')
  }
  )
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
