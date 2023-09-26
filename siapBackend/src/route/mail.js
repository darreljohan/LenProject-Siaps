import express from "express"
import { deleteMail, getMail, insertMail, updateMail } from "../database/mail.js"
import { getTableAsset } from "../database/asset.js"

var router = express.Router()

router.get('/get', (req, res)=>{
    getMail(req.query.nama_tabel).then((value)=>{
        res.status(200).send(value)
    },
    (err)=>{
        res.status(400).send(err)
    })
})

router.post('/insert', (req, res)=>{
    insertMail(req.body).then((value)=>{
        res.status(200).send(value)
    },
    (err)=>{
        res.status(400).send(err)
    })
})

router.put('/update', (req, res)=>{
    updateMail(req.body).then((value)=>{
        res.status(200).send(value)
    },
    (err)=>{
        res.status(400).send(err)
    })
})

router.delete('/delete', (req, res)=>{
    deleteMail(req.body).then((value)=>{
        res.status(200).send(value)
    },
    (err)=>[
        res.status(400).send(err)
    ])
})

export { router }