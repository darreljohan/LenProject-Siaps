import createConnection from "./database.js";

export function getLog (body){
    return new Promise((resolve, reject) => {
        createConnection().then((db)=>{
            db.query(`SELECT * FROM global_log`,
            (err, rows, fields) => {
              if (err) {
                reject(err)
              } else {
                resolve(rows)
              }
            }
          )
        })
    })
}