import createConnection from "./database.js";

export function addUserRequest (body) { // done
  return new Promise((resolve, reject) => {
    createConnection().then((db)=>{
      db.query("INSERT INTO `global_user-request` (username, email, jabatan, password ) VALUES ('" + body.user + "', '" + body.mail + "', '" + body.jabatan + "', '" + body.pass + "')",
        (err, rows, fields) => {
          if (err) {
            reject(err)
          } else {
            resolve(rows)
          }
        }
      )
    },(err)=>{
      reject(err)
    })
  })
}

export function deleteUserRequest (body){
  return new Promise((resolve, reject) => {
    createConnection().then((db)=>{
      db.query('DELETE FROM user_request WHERE email="' + body.email +'"',
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      })
    }, (err)=>{
      reject(err)
    })
  })
}

export function addUsertoDatabase (body) {//done
  return new Promise((resolve, reject) => {
    createConnection().then((db)=>{
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
      db.query(updateQuery, updateValues,
        (err, rows, fields) => {
          if (err) {
            reject(err)
          } else {
            resolve(rows)
          }
        }
      )
    },(err)=>{
      reject(err)
    })
  })
}

export function getUserApprovalTable () { //done
  return new Promise((resolve, reject) => {
    createConnection().then((db)=>{
      db.query('SELECT * FROM user_request',
      (err, rows, fields) => {
        if (err) {
          reject(err)
        } else {
          resolve(rows)
        }
      }
     )
    }, (err)=>{
      reject(err)
    })
  })
}
/* console test
  let body = {
    user: "pengguna",
    mail: "pengguna",
    jabatan: "pengguna",
    pass: "pengguna"
  }
  addUserRequest(body).then((value)=>{
    console.log(value)
  },(err)=>{
    console.log(error + "wahui")
  })
*/