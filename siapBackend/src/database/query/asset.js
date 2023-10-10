export function getMobile(nama_tabel){
    let log = nama_tabel + '_log'
    let photo = nama_tabel + '_photo'
    const getAsset =`SELECT * FROM ` + nama_tabel + ` AS assets; `
    const getLog = `SELECT * FROM ` + log + ` AS log;`
    const getPhoto = `SELECT * FROM ` + photo + ` AS photo;`
    return {asset: getAsset, log: getLog, photo: getPhoto}
}

export function getQuery(nama_tabel){
    let asset = nama_tabel
    let log = nama_tabel + '_log'
    let photo = nama_tabel + '_photo'
    let query = 
    `SELECT `+asset+`.*, `+log+`.user_edit, `+log+`.date_edit, `+photo+`.gambar
    FROM `+asset+`
    LEFT JOIN `+asset+`_log ON `+asset+`.id = `+log+`.id
    LEFT JOIN `+photo+` ON `+asset+`.id = `+photo+`.id;`
    return {query: query}
}

export function insertQuery(body, nama_tabel, dataSheet, kartuMesin){
    const insertQuery = `INSERT INTO ` + nama_tabel + ` (
    id,
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
    merk,
    tipe_mesin,
    kategori_fungsi_mesin,
    raw_material, 
    data_sheet,
    kartu_mesin,
    kartu_elektronik
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);`
    const values = [
        body.id,
        body.nama_asset,
        body.jenis_asset,
        body.kondisi,
        body.status_pemakaian,
        body.utilisasi,
        body.tahun_perolehan,
        body.umur_teknis,
        body.sumber_dana,
        body.nilai_perolehan,
        body.nilai_buku,
        body.rencana_optimisasi,
        body.lokasi,
        body.merk,
        body.tipe_mesin,
        body.kategori_fungsi_mesin,
        body.raw_material,
        body.data_sheet,
        kartuMesin,
        dataSheet
    ]

    return {query: insertQuery, value: values}
}

export function insertLog(body, nama_tabel, date_edit){
    let queryTable = nama_tabel + '_log'
    const query = `INSERT INTO `+ queryTable +`(
    id,
    user_edit,
    date_edit
    ) VALUES (?, ?, ?);`
    const values = [
        body.id,
        body.user_edit,
        date_edit
    ]
    return {query: query, value: values}
}

export function updateQuery(body, nama_tabel, dataSheet, kartuMesin){
    let query =  `UPDATE `+ nama_tabel + `    
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
    merk = ?,
    tipe_mesin = ?,
    kategori_fungsi_mesin = ?,
    raw_material = ?,
    data_sheet = ?,
    kartu_mesin = ?
    WHERE id = ?;`

    const updateValues = [
        body.nama_asset,
        body.jenis_asset,
        body.kondisi,
        body.status_pemakaian,
        body.utilisasi,
        body.tahun_perolehan,
        body.umur_teknis,
        body.sumber_dana,
        body.nilai_perolehan,
        body.nilai_buku,
        body.rencana_optimisasi,
        body.lokasi,
        body.merk,
        body.tipe_mesin,
        JSON.stringify(body.kategori_fungsi_mesin),
        JSON.stringify(body.raw_material),
        dataSheet,
        kartuMesin,
        body.id,
    ]
  
    return {query: query, value: updateValues}
}

export function updateLog(body, nama_tabel, date_edit){
    let queryTable = nama_tabel + '_log'
    const query = `UPDATE `+queryTable+` SET user_edit=?, date_edit=? WHERE id=?;`
    const values = [body.user_edit, date_edit, body.id]
    return {query: query, value: values}
}

export function insertPhoto(body, nama_tabel, filepath){
    let queryTable = nama_tabel + '_photo'
    const query =
    `INSERT INTO `+queryTable+` (id, gambar)
    VALUES (?, JSON_ARRAY(?))
    ON DUPLICATE KEY UPDATE gambar = JSON_ARRAY_APPEND(gambar, '$', ?);`
    const values = [body.id, filepath, filepath]
    return {query: query, value: values}
}
