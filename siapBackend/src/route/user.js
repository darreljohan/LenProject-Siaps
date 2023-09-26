import express from "express"
import { signup } from '../firebase/userMethod.js'
import { addUserRequest, addUsertoDatabase, deleteUserRequest, getUserApprovalTable } from "../database/user.js"
var router = express.Router()

router.post('/signup', (req, res)=>{
  signup(req.body).then((value) => {
    addUsertoDatabase(req.body).then((value)=>{
      res.status(200).send(value)
    },(err)=>{
      res.status(400).send(err)
    })
  },
  (err) => {
    res.status(400).send(err)
  })
})

router.delete('/reject', (req, res)=>{
  deleteUserRequest(req.body).then((value)=>{
    res.status(200).send(value)
  },(err)=>{
    res.status(400).send(err)
  })
})

router.get('/approvalTable', async (req, res)=>{
  getUserApprovalTable().then((value) => {
    res.status(200).send(JSON.parse(JSON.stringify(value)))
  },
  (err) => {
    res.status(200).send(err)
  })
})

router.post('/requestAccount', (req, res)=>{
  const userList = addUserRequest(req.body).then((value) => {
    res.status(200).send(value)
  },
  (err) => {
    res.status(400).send(err)
    console.log(err)
  })
})


export {router}