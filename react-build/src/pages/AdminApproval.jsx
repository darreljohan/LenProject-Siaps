import '../index.css'
import axios from 'axios';
import Table from '../components/tableUser';
import { useState, useEffect } from 'react';

const AdminApproval= ()=>{
    const [headings, setHeadings] = useState('')
    const [data, setData] = useState('')

    useEffect(()=>{
    axios.get('http://localhost:3000/user/approvalTable').then(
            (response)=>{
                setHeadings(Object.keys(response.data[0]))
                setData(response.data) 
            }
        ).catch((error)=>{
            const errorCode = error.code;
            const errorMessage = error.message;
            console.log(errorCode, "ini halo", errorMessage)
        })
    }, [])

    if(!headings) return null;

    return(
        <div className="container">
        <Table theadData={headings} tbodyData={data}/>
        </div>        
    )
}

export default AdminApproval
    