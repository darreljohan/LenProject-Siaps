import { initializeApp } from 'firebase/app';
import { getAuth } from 'firebase/auth'

const firebaseConfig = {
    apiKey: "AIzaSyCVgENejChA6HBBLxErWR1EuMa4abFRPUY",
    authDomain: "msiap-f7ad9.firebaseapp.com",
    projectId: "msiap-f7ad9",
    storageBucket: "msiap-f7ad9.appspot.com",
    messagingSenderId: "643752504065",
    appId: "1:643752504065:web:5d58f5e46b1b9977500900",
    measurementId: "G-K599C757CD"
  };
  
const app = initializeApp(firebaseConfig);
export const auth = getAuth(app)
export default app;
 
