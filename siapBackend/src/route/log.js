import express from "express"
import { getLog } from "../database/log.js"
var router = express.Router()

router.get('', (req,res)=>{
    getLog().then((value)=>{
        res.status(200).send(value.reverse())
    },
    (err)=>{
        res.status(400).send({message: err})
    })
})

export {router}