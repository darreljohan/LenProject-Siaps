import { app } from "./app.js";
import { serverPort as PORT } from "./config.js";
import { getTimeNow } from "./config.js";


app.listen(PORT,() => {
    console.log(`Running on PORT ${PORT}`);
    console.log(getTimeNow())
})