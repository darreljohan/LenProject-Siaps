import multer from "multer";
import path from 'path';

const __dirname = process.cwd()+'/src'

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


export const uploadAssetPhoto = multer({ storage: storagePhoto })
export const uploadDocument = multer({ storage: storageDocument })

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

export function mobileAssetHandler(obj){
  


}