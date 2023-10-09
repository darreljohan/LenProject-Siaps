import createConnection from "./database.js";

export function getMail (body){
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

export function insertMail (body){
    return new Promise((resolve, reject)=>{
        createConnection().then((db)=>{
            const updateData = body
            const currentTimestamp = new Date().toISOString()
        
            const updateQuery = `
              INSERT INTO ` + body.nama_tabel + ` (
                nomor_surat, 
                link_File, 
                nama_file, 
                mime_type, 
                url
            ) VALUES (?, ?, ?, ?, ?) `
        
            const updateValues = [
              updateData.nomor_surat,
              updateData.link_File,
              updateData.nama_file,
              updateData.mime_type,
              updateData.url
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

export function updateMail(body){
    return new Promise((resolve, reject) => {
        createConnection().then((db)=>{
            const id = body.id_surat
            const updateData = body
            const currentTimestamp = new Date().toISOString()
        
            const updateQuery = `
              UPDATE ` + body.nama_tabel + ` 
              SET
                nomor_surat = ?,
                link_file = ?,
                nama_file = ?,
                mime_type = ?,
                url = ?,
                date_edit = ?
              WHERE id_surat = ?
            `
        
            const updateValues = [
              updateData.nomor_surat,
              updateData.link_file,
              updateData.nama_file,
              updateData.mime_type,
              updateData.url,
              currentTimestamp,
              id
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
            resolve(err)
        })
    })
}

export function deleteMail(body){
    return new Promise((resolve, reject)=>{
        createConnection().then((db)=>{
            db.query('DELETE FROM ' + body.nama_tabel + ' WHERE id_surat=' + body.id_surat,
            (err, rows, fields) => {
              if (err) {
                reject(err)
              } else {
                resolve(rows)
              }
            })
        },(err)=>{
            reject(err)
        })
    })
}