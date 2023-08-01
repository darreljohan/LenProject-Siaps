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
  database: 'lendatabase'
})
connection.connect()

app.use(express.json())
firebase.initializeApp({
  credential: firebase.credential.cert(credentials),
});

let addUserRequest = (body)=>{
  return new Promise((resolve, reject)=>{
    connection.query
    ("INSERT INTO userrequest (username, email, password ) VALUES ('"+body.user+"', '"+body.mail+"', '"+body.pass+"')",
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

let getUserApprovalTable = ()=>{
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

let deleteUserRequest = (body)=>{
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


app.get('/tester', async(req, res)=>{
  res.send("masok")
})


app.get('/table', (req, res) => {
    request('https://script.google.com/macros/s/AKfycbziucgZNcukEo3r2Xb70b_NELVbqAkrloKW1jIH7vLhzmA-7WGl55zW2lcwI6b4U9LTiA/exec', (err, body)=>{
        console.log(body)
        res.send(body.body)
    })
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})