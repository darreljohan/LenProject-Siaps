import createConnection from "./database.js";
import { getQuery, updateQuery, insertQuery, insertLog, updateLog, insertPhoto, getMobile } from "./query/asset.js";
import { insertAssetLogQuery, updateAssetLogQuery, insertPhotoLogQuery } from "./query/log.js";
import { getTimeNow } from "../config.js";

export function getTableAsset(params){
    return new Promise((resolve, reject) => {
        if(params == "notfound"){
          reject({message : "table not found"})
        }
        createConnection().then((db)=>{
            db.query(getQuery(params).query,
            (err, rows, fields) => {
              if (err) {
                reject(err)
              } else {
                resolve(rows)
              }
        })}, 
        (err)=>{
            reject(err)
        })
    })
}

export function getTableAssetMobile(params){ //Pending
  return new Promise((resolve, reject) => {
      if(params == "notfound"){
        reject({message : "table not found"})
      }
      createConnection().then((db)=>{
          let getAsset = getMobile(params)

          db.query(getAsset.asset+ getAsset.log+ getAsset.photo,
          (err, rows, fields) => {
            if (err) {
              reject(err)
            } else {
              resolve(rows)
            }
      })}, 
      (err)=>{
          reject(err)
      })
  })
}

export function updateAsset(body, nama_tabel, dataSheet, kartuMesin){
    return new Promise((resolve, reject) => {
        createConnection().then((db)=>{

            const currentTimestamp = getTimeNow();
            let update = updateQuery(body, nama_tabel, dataSheet, kartuMesin)
            let log = updateAssetLogQuery(body, nama_tabel, currentTimestamp)
            let join = updateLog(body, nama_tabel, currentTimestamp)

            db.query(update.query+log.query+join.query, [...update.value, ...log.value, ...join.value],
            (err, rows, fields) => {
                if (err) {
                reject(err)
                } else {
                resolve(rows)
                }
            })
        },
        (err)=>[
            reject(err)
        ])
    })
}

export function insertAsset (body, nama_tabel, kartuMesin, dataSheet){
    return new Promise((resolve, reject) => {
        const currentTimestamp = getTimeNow();
        createConnection().then((db)=>{

            let insert = insertQuery(body, nama_tabel,kartuMesin, dataSheet)
            let log = insertAssetLogQuery(body, nama_tabel, currentTimestamp)
            let join = insertLog(body, nama_tabel, currentTimestamp)

            db.query(insert.query+log.query+join.query, [...insert.value, ...log.value, ...join.value],
              (err, rows, fields) => {
                if (err) {
                  reject(err)
                } else {
                  resolve(rows)
                }
              }
            )
        },
        (err)=>{
            reject(err)
        })
    })
}

export function insertAssetPhoto(body, nama_tabel, linkFile){
  return new Promise((resolve, reject) => {
    createConnection().then((db)=>{

      const currentTimestamp = getTimeNow();
      const insert = insertPhoto(body, nama_tabel, linkFile)
      const log = insertPhotoLogQuery(body, nama_tabel, currentTimestamp)

      db.query(insert.query + log.query, [...insert.value, ...log.value],
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

export function deleteAssetPhoto (body){
  return new Promise((resolve, reject) => {
    createConnection().then((db)=>{
      const id = body.id
      const updateData = body
      const currentTimestamp = getTimeNow();
  
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
      db.query(updateQuery, updateValues,
        (err, rows, fields) => {
          if (err) {
            reject(err)
          } else {
            resolve(rows)
          }
        }
      )
    },
    (err)=>{
      reject(err)
    })
  })
}

