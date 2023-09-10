# Android API Documentation
API Documentation for SIAP application to connect into SQL and Spreadsheet

How to install API
1. open terminal change directory to /rest/  
2. type in terminal "npm install"
3. configure database in index.js
4. type in terminal "npm run api-service" to run the api server with npm

## User
### /user/requestAccount
Add account to be accepted by admin
POST
Body:
```json
{
  user = ?, //username
  mail = ?, //email
  jabatan = ?,
  pass = ? //password
}
```

## Table

### /table/get
load all row from table name. 
List of Table Name : Cek di database
GET
params : nama_tabel

### /table/insert 
Insert one row of asset to the destination table. ID will be generated automatically  
POST  :
Body :  
```json
{
  nama_tabel = ?,
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
  user_edit = ?,
  merk = ?,
  tipe_mesin = ?,
  kategori_fungsi_mesin = ["bubut","cutting"],
  raw_material = ["bubut","cutting"]
}
```
Response
return id of inserted asset
```
{
    inserted_id : ?,
}
```

### /table/update
update one row of asset according to the ID as primary key  
PUT  
body :  
```json
{
  nama_tabel = ?,
  id = ?,
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
  user_edit = ?,
  merk = ?,
  tipe_mesin = ?,
  kategori_fungsi_mesin = ["bubut","cutting"],
  raw_material = ["bubut","cutting"]
}
```

### /table/uploadPhoto - Using Form Data
upload Photo to the targeted asset id (Single Photo)
POST
body:
```
{
    "photo": ?,
    "nama_tabel": ?,
    "id": ?,
    "user_edit": ?,
}
```

### /table/deletePhoto
Delete Photo to the targeted asset id (Single Photo)
Delete
body:
```
{
    "nama_tabel": ?,
    "id": ?,
    "user_edit": ?,
}
```
