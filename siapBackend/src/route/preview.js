import express from "express"
import path from 'path';
import { fileURLToPath } from 'url';
var router = express.Router()

const __dirname = process.cwd()
router.get('/*', async(req, res)=>{
    try {
        const userPath = req.params[0];
        const imagePath = path.join(__dirname, userPath); // Assuming the image is in your project directory
        // Check if the file exists
        // await fs.access(imagePath);
    
        // Send the image as a response
        res.sendFile(imagePath);
      } catch (error) {
        if (error.code === 'ENOENT') {
          // Handle "File Not Found" error
          res.status(404).send('File not found');
        } else {
          // Handle other errors
          res.status(500).send("Internal server error");
        }
      }
})


export {router}