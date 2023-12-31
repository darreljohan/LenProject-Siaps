import mysql from 'mysql';
import { databaseConfig } from '../config.js';

export function createConnection(db){
    return new Promise((resolve, reject)=>{
        const database = mysql.createConnection(databaseConfig)
        database.connect((error) => {
            if (error) {
                reject(error)
            } else {
                resolve(database)
            }
        });
    })
}



/*
db.connect((error) => {
    if (error) {
        if (error.code === 'PROTOCOL_CONNECTION_LOST') {
            console.error('Database connection was closed.');
        }
        if (error.code === 'ER_CON_COUNT_ERROR') {
            console.error('Database has too many connections.');
        }
        if (error.code === 'ECONNREFUSED') {
            console.error('Database connection was refused.');
        }
    } else {
        console.log('Database connected');
    }
});
*/

export default createConnection;