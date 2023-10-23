//Configure your database here
export const databaseConfig = {
    multipleStatements: true,
    host: 'localhost',
    user: 'root',
    // password: 'your_password',
    database: 'siap'
}

//configure your published url and server port here
export const baseUrl = "http://localhost"
export const serverPort = 5001

export function getTimeNow(){
    return Date.now()
}



