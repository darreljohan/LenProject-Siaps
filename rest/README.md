# API Documentation
API Documentation for SIAP application to connect into SQL and Spreadsheet

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
