import createConnection from "./database.js";

export function getNews (body){
    return new Promise((resolve, reject) => {
        createConnection().then((db)=>{
            db.query(`SELECT * FROM  global_news`,
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
