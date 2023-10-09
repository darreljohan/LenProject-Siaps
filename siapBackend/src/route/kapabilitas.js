import express from "express"
import { getKapabilitas } from "../database/kapabilitas.js"
import { tableNameHandler } from "../handler/kapabilitas.js"

var router = express.Router()

router.get("/:nama_tabel", (req, res)=>{
    getKapabilitas(tableNameHandler(req.params.nama_tabel)).then((value)=>{
        let temp = JSON.parse(JSON.stringify(value))
        res.status(200).send(temp)
    },
    (err)=>{
        res.status(400).send(err)
    })
})


export { router }