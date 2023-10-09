import express from 'express'
import cors from 'cors'
import { router as userRouter } from './route/user.js'
import { router as assetRouter } from './route/asset.js'
import { router as mailRouter } from './route/mail.js'
import { router as logRouter } from './route/log.js'
import { router as previewRouter } from './route/preview.js'
import { router as kapabilitasRouter } from './route/kapabilitas.js'
 

const app = express()
app.use(express.json())
app.use(cors())

app.use('/user', userRouter)
app.use('/assets', assetRouter)
app.use('/mail', mailRouter)
app.use('/kapabilitas', kapabilitasRouter)
app.use('/log', logRouter)
app.use('/preview', previewRouter)


export {app};