import express from "express"
import { getMail } from "../database/mail.js"
var router = express.Router()

router.get('/get', (req,res)=>{
    getMail(req.query.nama_tabel).then((value)=>{
        res.status(200).send(value)
    },
    (err)=>{
        res.status(400).send(err)
    })
})

export {router}