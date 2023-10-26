import multer from "multer";
import path from 'path';
import { baseUrl, serverPort } from "../config.js"

const __dirname = process.cwd()+"/src"

const storagePhoto = multer.diskStorage({
  destination: (req, file, cb) => {
    cb(null, path.join(__dirname, '/fileStorage/photo/')) // Specify the directory where you want to store uploaded images
  },
  filename: (req, file, cb) => {
    cb(null, Date.now() + '-' + file.originalname)
  }
})

const storageDocument = multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, path.join(__dirname, "/fileStorage/document/")) // Specify the directory where you want to store uploaded images
    },
    filename: (req, file, cb) => {
      cb(null, Date.now() + '-' + file.originalname)
    }
  })

const dataSheetDocument = multer.diskStorage({
    destination: (req, file, cb) => {
      cb(null, path.join(__dirname, `/fileStorage/data_sheet&kartu_mesin/`)) // Specify the directory where you want to store uploaded images
    },
    filename: (req, file, cb) => {
      cb(null, Date.now() + '-' + file.originalname)
    }
})



export const uploadAssetPhoto = multer({ storage: storagePhoto })
export const uploadDocument = multer({ storage: storageDocument })
export const uploadDataSheetKartuMesin = multer({ storage: dataSheetDocument})

export function tableNameHandler(params){
    switch(params){
        case "len":
            return "len_assets"
        case "dahana":
            return "dahana_assets"
        case "di":
            return "di_assets"
        case "pal":
            return "pal_assets"
        case "pindad":
            return "pindad_assets"
        default:
            return "notfound"
    }
}

export function uploadKartuMesinDataSheetHandler(req, res, next){
  uploadDataSheetKartuMesin.fields([
      { name: 'kartu_mesin', maxCount: 1 }, // 'kartu_mesin' field
      { name: 'data_sheet', maxCount: 1 },  // 'data_sheet' field
  ])(req, res, next)
}

export function KartuMesinDataSheetValueHandler(req){
  let kartu_mesin_value = null
  let data_sheet_value = null
    
  if(!req.files['kartu_mesin']){
      kartu_mesin_value = req.body.kartu_mesin
  }else{
      const kartuMesinFile = req.files['kartu_mesin'][0];
      kartu_mesin_value = baseUrl +":"+ serverPort +"/preview/fileStorage/data_sheet&kartu_mesin/"+kartuMesinFile.filename
  }

  if(!req.files['data_sheet']){
      data_sheet_value = req.body.data_sheet
  }else{
      const dataSheetFile = req.files['data_sheet'][0];
      data_sheet_value = baseUrl +":"+ serverPort +"/preview/fileStorage/data_sheet&kartu_mesin/"+dataSheetFile.filename
  }

  return {valueKartu: kartu_mesin_value, valueData: data_sheet_value}
}



export function mobileAssetHandler(){

}