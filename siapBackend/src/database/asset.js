import createConnection from "./database.js";
import multer from "multer";
import { fileURLToPath } from 'url';
import path from 'path';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const storage = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, path.join(__dirname, '../asset')) // Specify the directory where you want to store uploaded images
  },
  filename: (req, file, cb) => {
    cb(null, Date.now() + '-' + file.originalname)
  }
})

export const upload = multer({ storage })

export function getTableAsset(params){
    return new Promise((resolve, reject) => {
        createConnection().then((db)=>{
            db.query('SELECT * FROM ' + params,
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

export function updateAsset(body){
    return new Promise((resolve, reject) => {
        createConnection().then((db)=>{
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
            db.query(updateQuery, updateValues,
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

export function insertAsset (body){
    return new Promise((resolve, reject) => {
        createConnection().then((db)=>{
            const updateData = body
            const currentTimestamp = new Date().toISOString()
        
            const updateQuery = `
            INSERT INTO ` + body.nama_tabel + ` (
              id
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
          ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?); 
          INSERT INTO log (
            user_edit,
            keterangan,
            date_edit    
          ) VALUES (?, ?, ?);
          SELECT LAST_INSERT_ID() AS inserted_id
          `
        
            const updateValues = [
              updateData.id,
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

export function updateAssetPhoto (body, linkFile){
  return new Promise((resolve, reject) => {
    createConnection().then((db)=>{
      const id = body.id
      const updateData = body
      const currentTimestamp = new Date().toISOString()
  
      const updateQuery = `
      UPDATE ` + body.nama_tabel + ` 
      SET
        gambar = ?,
        user_edit = ?
      WHERE id = ?;
      INSERT INTO log (
        user_edit,
        keterangan,
        date_edit    
      ) VALUES (?, ?, ?)
    `
  
      const updateValues = [
        linkFile,
        updateData.user_edit,
        id,
        updateData.user_edit,
        'Menambahkan foto pada asset ' + id + ' pada tabel ' + body.nama_tabel,
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

