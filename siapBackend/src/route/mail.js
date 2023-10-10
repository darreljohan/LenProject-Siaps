import express from "express"
import { deleteMail, getMail, insertMail, updateMail } from "../database/mail.js"
import { getTableAsset } from "../database/asset.js"
import { tableNameHandler } from "../handler/mail.js"

var router = express.Router()

router.get("/:nama_table", (req, res)=>{
    getMail(tableNameHandler(req.params.nama_table)).then((value)=>{
        res.status(200).send(value)
    },
    (err)=>{
        res.status(400).send({message: err})
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