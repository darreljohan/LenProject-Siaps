import express from "express"
import { getNews } from "../database/news.js"

var router = express.Router()

router.get("", (req, res)=>{
    getNews().then((value)=>{
        res.status(200).send(value.reverse())
    },
    (err)=>{
        res.status(400).send({message: err})
    })
})

export {router}
