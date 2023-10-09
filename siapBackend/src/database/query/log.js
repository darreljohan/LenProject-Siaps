
export function updateAssetLogQuery(body, currentTimestamp){
    let query = 'INSERT INTO global_log (user_edit, keterangan, date_edit) VALUES (?, ?, ?);'
    let log = body.user_edit +' mengupdate data '+ body.nama_asset +' pada tabel ' + body.nama_tabel
    let value = [body.id, log, currentTimestamp]
    return {query: query, value: value}
}

export function insertAssetLogQuery(body, currentTimestamp){
    let query = 'INSERT INTO global_log (user_edit, keterangan, date_edit) VALUES (?, ?, ?);'
    let log = body.user_edit +' menambahkan data '+ body.nama_asset +' pada tabel ' + body.nama_tabel
    let value = [body.user_edit, log, currentTimestamp]
    return {query: query, value: value}
}

export function insertPhotoLogQuery(body, currentTimestamp){
    let query = 'INSERT INTO global_log (user_edit, keterangan, date_edit) VALUES (?, ?, ?);'
    let log = body.user_edit +' menambahkan foto pada '+ body.nama_asset +' pada tabel ' + body.nama_tabel
    let value = [body.user_edit, log, currentTimestamp]
    return {query: query, value: value}
}

