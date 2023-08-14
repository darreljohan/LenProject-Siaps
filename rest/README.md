# API Documentation
API Documentation for SIAP application to connect into SQL and Spreadsheet

How to install API
1. open terminal change directory to /rest/  
2. type in terminal "npm install"
3. configure database in index.js
4. type in terminal "npm run api-service" to run the api server with npm

## User

## Table

### /table/mergeSpreadsheetTable
Load array of json for merge preview  
GET   
params : action& destinationSheet& tableName  

### /table/get
load all row of table
GET
params : nama_tabel

### /table/insert 
Insert one row of asset to the destination table. ID will be generated automatically  
POST  :
body :  
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
}
```
