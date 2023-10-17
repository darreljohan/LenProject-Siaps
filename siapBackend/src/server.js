import { app } from "./app.js";
import { serverPort as PORT } from "./config.js";

app.listen(PORT,() => {
    console.log(`Running on PORT ${PORT}`);
    const currentTimestamp = new Date().toISOString().slice(0, 19).replace('T', ' ');
    console.log(currentTimestamp);
})