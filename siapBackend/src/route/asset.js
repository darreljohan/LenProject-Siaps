import express from "express"

import { deleteAssetPhoto, getTableAsset, insertAsset, updateAsset, insertAssetPhoto, getTableAssetMobile } from "../database/asset.js"
import { mobileAssetHandler, tableNameHandler, uploadAssetPhoto, uploadDocument, uploadKartuMesinDataSheetHandler, KartuMesinDataSheetValueHandler} from "../handler/asset.js"
import { baseUrl, serverPort } from "../config.js"

var router = express.Router()

router.get("/:nama_tabel", (req, res)=>{
    getTableAsset(tableNameHandler(req.params.nama_tabel)).then((value)=>{
        let temp = JSON.parse(JSON.stringify(value))
        res.status(200).send(temp)
    },
    (err)=>{
        res.status(400).send({message: err})
    })
})

router.get("/:nama_tabel/m", (req, res)=>{
    getTableAssetMobile(tableNameHandler(req.params.nama_tabel)).then((value)=>{
        let temp = JSON.parse(JSON.stringify(value))
        mobileAssetHandler(temp);
        res.status(200).send(temp)
    },
    (err)=>{
        res.status(400).send(err)
    })
})

router.put("/:nama_tabel", uploadKartuMesinDataSheetHandler, (req, res)=>{
    let valueKartuData = KartuMesinDataSheetValueHandler(req)
    updateAsset(req.body, tableNameHandler(req.params.nama_tabel), valueKartuData.valueData, valueKartuData.valueKartu).then((value)=>{
        res.status(200).send({message: value})
    }, 
    (err)=>{
        res.status(400).send(err)
    })
})

router.post("/:nama_tabel", uploadKartuMesinDataSheetHandler, (req, res)=>{
   let valueKartuData = KartuMesinDataSheetValueHandler(req)

    insertAsset(req.body, tableNameHandler(req.params.nama_tabel), valueKartuData.valueData, valueKartuData.valueKartu).then((value)=>{
        res.status(200).send({message: value})
    },
    (err)=>{
        res.status(400).send({message: err})
    })
})


router.post("/photo/:nama_tabel", uploadAssetPhoto.single('photo'), (req, res)=>{
    if (!req.file.filename) {
      res.status(400).send({message: {
        status: false,
        data: 'No File is selected.'
      }})
    } 
    const filepath = baseUrl +":"+ serverPort +"/preview/fileStorage/photo/"+req.file.filename

    insertAssetPhoto(req.body, tableNameHandler(req.params.nama_tabel), filepath).then((value)=>{
        res.status(200).send({message: value})
    }, (err)=>{
        res.status(400).send({message: err})
    })
})


/*
router.post('/uploadPhoto', upload.single('photo'), (req, res)=>{
    const file = req.file.filename
    if (!file) {
      res.status(400).send({message: {
        status: false,
        data: 'No File is selected.'
      }})
    }
    const filepath = "http://localhost:5000/preview/asset/"+file
    updateAssetPhoto(req.body, filepath).then((value)=>{
        res.status(200).send('success')
    }, (err)=>{
        res.status(400).send('failed')
    })
})

router.delete('/deletePhoto', (req, res)=>{
    deleteAssetPhoto(req.body).then((value)=>{
        res.status(200).send(value)
    },
    (err)=>[
        res.status(400).send(err)
    ])
})
*/

export { router }