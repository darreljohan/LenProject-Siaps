import express from "express"

import { deleteAssetPhoto, getTableAsset, insertAsset, updateAsset, updateAssetPhoto, upload } from "../database/asset.js"

var router = express.Router()

router.get("/get", (req, res)=>{
    getTableAsset(req.query.nama_tabel).then((value)=>{
        res.status(200).send(JSON.parse(JSON.stringify(value)))
    },
    (err)=>{
        res.status(400).send(err)
    })
})

router.put("/update", (req, res)=>{
    updateAsset(req.body).then((value)=>{
        res.status(200).send(value)
    }, 
    (err)=>{
        res.status(400).send(err)
    })
})

router.post("/insert", (req, res)=>{
    insertAsset(req.body).then((value)=>{
        res.status(200).send(value[2][0])
    },
    (err)=>{
        res.status(400).send(err)
    })
})

router.post('/uploadPhoto', upload.single('photo'), (req, res)=>{
    const file = req.file.filename
    if (!file) {
      res.status(400).send({
        status: false,
        data: 'No File is selected.'
      })
    }
    const filepath = "localhost:5000/preview/asset/"+file
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

export { router }