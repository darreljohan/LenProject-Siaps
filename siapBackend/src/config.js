//Configure your database here
export const databaseConfig = {
    multipleStatements: true,
    host: 'localhost',
    user: 'root',
    password: 'admin',
    database: 'siap'
}

//configure your published url and server port here
export const baseUrl = "http://192.168.17.27"
export const serverPort = 5001

export function getTimeNow(){
    return Date.now()
}



