import createConnection from "./database.js";

export function getKapabilitas (body){
    return new Promise((resolve, reject) => {
        createConnection().then((db)=>{
            db.query(`SELECT * FROM `+"`"+body+"`",
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
