
import { rejects } from "assert"
import { cert, initializeApp } from "firebase-admin/app"
import { getAuth } from "firebase-admin/auth"
import { createRequire } from 'module'
const require = createRequire(import.meta.url)
const credentials = require("./credentials.json")

const app = initializeApp({
    credential : cert(credentials)
})

export async function signup(body){
    return new Promise((resolve, reject)=>{
        const userResponse = getAuth().createUser({
            email: body.email,
            password: body.password,
            emailVerified: false,
            disabled: false
          }).catch((error)=>{
            reject(error)
          }).then((record)=>{
            resolve(record)
          })  
    })
}
