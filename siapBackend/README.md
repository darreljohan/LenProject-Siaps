# Android API Documentation ( Bahasa )
Dokumentasi API untuk Aplikasi M-Siap

Cara menginstall
1. Pindah ke direktori "/siapBackend"
2. Jalankan "npm install"
3. Import Database di "/siapBackend/siap.sql"
4. Konfigurasi server di "/siapBackend/config.js"
5. Jalankan "npm run api-service"

## User
---
## POST /user/requestAccount
Menambahkan pengguna kedalam pendaftaran  
Contoh Request Body:  
```json
{
    "user": "pengguna3",
    "mail": "pengguna6", //Primary key
    "jabatan": "pengguna",
    "pass": "pengguna"
}
```
Contoh Response Body - STATUS 200:
```json
{
    "message": {
        "fieldCount": 0,
        "affectedRows": 1,
        "insertId": 0,
        "serverStatus": 2,
        "warningCount": 0,
        "message": "",
        "protocol41": true,
        "changedRows": 0
    }
}
```
Contoh Response Body - Status 400:  
```json
{
    "message": {
        "code": "ER_DUP_ENTRY",
        "errno": 1062,
        "sqlMessage": "Duplicate entry 'pengguna6' for key 'PRIMARY'",
        "sqlState": "23000",
        "index": 0,
        "sql": "INSERT INTO `global_user-request` (username, email, jabatan, password ) VALUES ('pengguna3', 'pengguna6', 'pengguna', 'pengguna')"
    }
}
```

## Assets
---
### GET /assets/*
Mengembalikan daftar aset berdasarkan parameter  
Params : [ len, dahana, di, pal, pindad ]  
Contoh Route : GET /assets/len  
Contoh Response :
```json
[
    {
        "id": "43",
        "nama_asset": "ada yang baru nih",
        "merk": null,
        "tipe_mesin": null,
        "kategori_fungsi_mesin": "[\"bubut\",\"cutting\"]",
        "raw_material": "[\"bubut\",\"cutting\"]",
        "jenis_asset": null,
        "kondisi": null,
        "status_pemakaian": null,
        "utilisasi": null,
        "tahun_perolehan": null,
        "umur_teknis": null,
        "sumber_dana": null,
        "nilai_perolehan": null,
        "nilai_perolehan_dollar": null,
        "nilai_buku": null,
        "rencana_optimisasi": null,
        "lokasi": null,
        "data_sheet": null,
        "kartu_mesin": null,
        "kartu_elektronik": null,
        "user_edit": null,
        "date_edit": null,
        "gambar": "[\"http://localhost:3000/preview/fileStorage/photo/1696845961059-KTM Digital.jpg\"]" //Mobile pakai gambar[0] aja
    },
    {
        "id": "id_45",
        "nama_asset": "kalii ketiga ",
        "merk": null,
        "tipe_mesin": null,
        "kategori_fungsi_mesin": "[\"bubut\",\"cutting\",\"Tester\"]",
        "raw_material": "[\"bubut\",\"cutting\"]",
        "jenis_asset": null,
        "kondisi": null,
        "status_pemakaian": null,
        "utilisasi": null,
        "tahun_perolehan": null,
        "umur_teknis": null,
        "sumber_dana": null,
        "nilai_perolehan": null,
        "nilai_perolehan_dollar": null,
        "nilai_buku": null,
        "rencana_optimisasi": null,
        "lokasi": null,
        "data_sheet": "https://google.com",
        "kartu_mesin": null,
        "kartu_elektronik": null,
        "user_edit": "saya",
        "date_edit": "2023-10-05T13:38:48.000Z",
        "gambar": null
    }
]
```

### POST /assets/*
Menambahkan aset kedalam database  
Params: [len, dahana, di, pal, pindad ]  
Contoh Route : POST /assets/len  
Contoh Request Form Data :  
```json
{
    "id":"id_30uddsdssdsdsdu", //Mandatory
    "nama_asset":"ada yang baru nih",
    "user_edit":"admin", //Mandatory
    "kategori_fungsi_mesin":["bubut","cutting"],
    "raw_material":["bubut","cutting"],
    "data_sheet": "https://google.com" //Bisa juga dalam bentuk file
}
```
Contoh Response Body - STATUS 200
```json
{
    "message": [
        {
            "fieldCount": 0,
            "affectedRows": 1,
            "insertId": 0,
            "serverStatus": 10,
            "warningCount": 0,
            "message": "",
            "protocol41": true,
            "changedRows": 0
        },
        {
            "fieldCount": 0,
            "affectedRows": 1,
            "insertId": 0,
            "serverStatus": 10,
            "warningCount": 1,
            "message": "",
            "protocol41": true,
            "changedRows": 0
        },
        {
            "fieldCount": 0,
            "affectedRows": 1,
            "insertId": 0,
            "serverStatus": 2,
            "warningCount": 1,
            "message": "",
            "protocol41": true,
            "changedRows": 0
        }
    ]
}
```
Contoh Response Body - STATUS 400  
```JSON
{
    "message": {
        "code": "ER_DUP_ENTRY",
        "errno": 1062,
        "sqlMessage": "Duplicate entry 'id45' for key 'PRIMARY'",
        "sqlState": "23000",
        "index": 0,
        "sql": "INSERT INTO len_assets (\n    id,\n    nama_asset, \n    jenis_asset, \n    kondisi, \n    status_pemakaian, \n    utilisasi, \n    tahun_perolehan, \n    umur_teknis, \n    sumber_dana, \n    nilai_perolehan, \n    nilai_buku, \n    rencana_optimisasi, \n    lokasi,\n    merk,\n    tipe_mesin,\n    kategori_fungsi_mesin,\n    raw_material, \n    data_sheet,\n    kartu_mesin,\n    kartu_elektronik\n    ) VALUES ('id45', 'ada yang baru nih', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '[\\\"bubut\\\",\\\"cutting\\\"]', '[\\\"bubut\\\",\\\"cutting\\\"]', 'https://google.com', NULL, NULL);INSERT INTO global_log (user_edit, keterangan, date_edit) VALUES ('admin', 'admin menambahkan data ada yang baru nih pada tabel len_assets', '2023-10-06T08:44:31.029Z');INSERT INTO len_assets_log(\n    id,\n    user_edit,\n    date_edit\n    ) VALUES ('id45', 'admin', '2023-10-06T08:44:31.029Z');"
    }
}
```

### PUT /assets/*
Mengubah informasi aset yang telah ada
Params: [len, dahana, di, pal, pindad ]
Contoh Route : PUT /assets/len
Contoh Request Form Data :
```json
{
    "nama_asset":"kalii ketiga ",
    "id":"id_45", //Mandatory
    "user_edit":"userinamee", //Mandatory
    "kategori_fungsi_mesin":["bubut","cutting","Tester"], //Harus Array
    "raw_material":["bubut","cutting"] //Harus Array
    "data_sheet": "URL Picture" //Bisa dalam bentuk file
}
```
Contoh Response Body - STATUS 200  
```json
{
    "message": [
        {
            "fieldCount": 0,
            "affectedRows": 1,
            "insertId": 0,
            "serverStatus": 10,
            "warningCount": 0,
            "message": "(Rows matched: 1  Changed: 0  Warnings: 0",
            "protocol41": true,
            "changedRows": 0
        },
        {
            "fieldCount": 0,
            "affectedRows": 1,
            "insertId": 0,
            "serverStatus": 10,
            "warningCount": 1,
            "message": "",
            "protocol41": true,
            "changedRows": 0
        },
        {
            "fieldCount": 0,
            "affectedRows": 1,
            "insertId": 0,
            "serverStatus": 2,
            "warningCount": 1,
            "message": "(Rows matched: 1  Changed: 1  Warnings: 1",
            "protocol41": true,
            "changedRows": 1
        }
    ]
}
```
Contoh Response Body - STATUS 400  
```JSON
{
    "message" ; "pesan error"
}
```

### POST /assets/photo/*
Menambahkan foto pada aset berdasarkan ID  
Params: [len, dahana, di, pal, pindad]  
Contoh Route: POST /assets/photo/len  
Contoh Request Form Data :  
```JSON
{
    "photo": "picture upload"
    "id": "41", //Mandatory
    "user_edit": 'username01', //Mandatory
}
```
Contoh Response Body - STATUS 200  
```JSON
{
    "message": [
        {
            "fieldCount": 0,
            "affectedRows": 1,
            "insertId": 0,
            "serverStatus": 10,
            "warningCount": 0,
            "message": "",
            "protocol41": true,
            "changedRows": 0
        },
        {
            "fieldCount": 0,
            "affectedRows": 1,
            "insertId": 0,
            "serverStatus": 2,
            "warningCount": 1,
            "message": "",
            "protocol41": true,
            "changedRows": 0
        }
    ]
}
```
Contoh Response Body - STATUS 400  
```JSON
{
    "message" ; "pesan error"
}
```

## Mail
---
### GET /mail/*
Mengembalikan data mail in  
Params: [in, out]  
Contoh Route: GET /mail/in  
ContoH Response Body - STATUS 200  
```JSON
[
    {
        "id_surat": 1,
        "nomor_surat": "100",
        "link_file": "Darrel Johan_1303200056_Tether_Tugas1.pdf",
        "nama_file": "Darrel Johan_1303200056_Tether_Tugas1.pdf",
        "mime_type": "application/pdf",
        "url": "https://drive.google.com/file/d/11gMw4T5hGwFH1g9Tm",
        "date_edit": null
    },
    {
        "id_surat": 2,
        "nomor_surat": "200",
        "link_file": "Dokumen tanpa judul",
        "nama_file": "Dokumen tanpa judul",
        "mime_type": "application/vnd.google-apps.document",
        "url": "https://docs.google.com/document/d/19NfR58VM_FuY5G",
        "date_edit": null
    },
    {
        "id_surat": 3,
        "nomor_surat": "300",
        "link_file": "flow FL.xlsx",
        "nama_file": "flow FL.xlsx",
        "mime_type": "application/vnd.ms-excel",
        "url": "https://docs.google.com/spreadsheets/d/1I_xbLkuMGi",
        "date_edit": null
    }
]
```
Contoh Response Body - STATUS 400  
```JSON
{
    "message" ; "pesan error"
}
```

## Kapabilitas
---
### GET /kapabilitas/*
Mengembalikan daftar aset berdasarkan parameter  
Params : [ len, dahana, di, pal, pindad ]  
Contoh Route : GET /kapabilitas/len  
Contoh Response :  
```json
[
    {
        "fungsi": "Cutting",
        "jenis_material": "Steel",
        "metode": null,
        "dimensi-kecil-panjang": 150,
        "dimensi-kecil-lebar": 5,
        "dimensi-kecil-tebal": 5,
        "dimensi-kecil-diameter": 10,
        "dimensi-besar-panjang": 3000,
        "dimensi-besar-lebar": 400,
        "dimensi-besar-tebal": 310,
        "dimensi-besar-diameter": 400,
        "berat-kecil": null,
        "berat-besar": null,
        "panjang_kabel-pendek": null,
        "panjang_kabel-panjang": null,
        "kapasitas_daya-kecil": null,
        "kapasitas_daya-besar": null,
        "ketinggian_jatuh-kecil": null,
        "ketinggian_jatuh-besar": null,
        "frekuensi-kecil": null,
        "frekuensi-besar": null,
        "acceleration-kecil": null,
        "acceleration-besar": null,
        "load-5g-kecil": null,
        "load-5g-besar": null,
        "load-10g-kecil": null,
        "load-10g-besar": null,
        "load-20g-kecil": null,
        "load-20g-besar": null,
        "load-30g-kecil": null,
        "load-30-besar": null,
        "temperature-kecil": null,
        "temperature-besar": null,
        "humidity-kecil": null,
        "humidity-besar": null,
        "pulsa-kecil": null,
        "pulsa-besar": null
    }
]
```
Contoh Response Body - STATUS 400  
```JSON
{
    "message" ; "pesan error"
}
```
## News
---
GET /news  
mengembalikan daftar news  
Contoh Response :  
```json
[
    {
        "id_surat": 1,
        "nomor_surat": "100",
        "link_file": "Darrel Johan_1303200056_Tether_Tugas1.pdf",
        "nama_file": "Darrel Johan_1303200056_Tether_Tugas1.pdf",
        "mime_type": "application/pdf",
        "url": "https://drive.google.com/file/d/11gMw4T5hGwFH1g9Tm6FwyqM4fby4ztOR/view?usp=sharing",
        "date_edit": null
    },
    {
        "id_surat": 2,
        "nomor_surat": "200",
        "link_file": "Dokumen tanpa judul",
        "nama_file": "Dokumen tanpa judul",
        "mime_type": "application/vnd.google-apps.document",
        "url": "https://docs.google.com/document/d/19NfR58VM_FuY5G1_2pXkUHPy58Ec4hK-7gSOLfLbkD4/edit?usp=sharing",
        "date_edit": null
    },
    {
        "id_surat": 3,
        "nomor_surat": "300",
        "link_file": "flow FL.xlsx",
        "nama_file": "flow FL.xlsx",
        "mime_type": "application/vnd.ms-excel",
        "url": "https://docs.google.com/spreadsheets/d/1I_xbLkuMGiwMDPugQJFZ9LU6RIkf40Y1/edit?usp=sharing&ouid=10265",
        "date_edit": null
    }
]
```
Contoh Response Body - STATUS 400  
```JSON
{
    "message" ; "pesan error"
}
```
## Log
---
GET /log
mengembalikan log
Contoh Respopnse :
```json
[
    {
        "id_surat": 1,
        "nomor_surat": "100",
        "link_file": "Darrel Johan_1303200056_Tether_Tugas1.pdf",
        "nama_file": "Darrel Johan_1303200056_Tether_Tugas1.pdf",
        "mime_type": "application/pdf",
        "url": "https://drive.google.com/file/d/11gMw4T5hGwFH1g9Tm6FwyqM4fby4ztOR/view?usp=sharing",
        "date_edit": null
    },
    {
        "id_surat": 2,
        "nomor_surat": "200",
        "link_file": "Dokumen tanpa judul",
        "nama_file": "Dokumen tanpa judul",
        "mime_type": "application/vnd.google-apps.document",
        "url": "https://docs.google.com/document/d/19NfR58VM_FuY5G1_2pXkUHPy58Ec4hK-7gSOLfLbkD4/edit?usp=sharing",
        "date_edit": null
    },
    {
        "id_surat": 3,
        "nomor_surat": "300",
        "link_file": "flow FL.xlsx",
        "nama_file": "flow FL.xlsx",
        "mime_type": "application/vnd.ms-excel",
        "url": "https://docs.google.com/spreadsheets/d/1I_xbLkuMGiwMDPugQJFZ9LU6RIkf40Y1/edit?usp=sharing&ouid=10265",
        "date_edit": null
    }
]
```
Contoh Response Body - STATUS 400  
```JSON
{
    "message" ; "pesan error"
}
```