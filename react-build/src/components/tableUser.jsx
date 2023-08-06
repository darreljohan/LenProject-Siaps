import axios from 'axios';
import { useState } from 'react';

export default function Table({theadData, tbodyData}) {
    const [selectedRow, setSelectedRow] = useState(null);
    const [bodyData, setTbodyData] = useState(tbodyData);

    const handleRowDelete = (index) => {
        const newData = [...bodyData];
        newData.splice(index, 1);
        setTbodyData(newData);
    };

    const acceptRegister = (rowData, index)=>{
        setSelectedRow(rowData);
        axios.post('http://localhost:3000/user/signup', selectedRow).then(
            (response)=>{
                console.log(selectedRow)
                alert(response.data)
                console.log(response.data) 
                handleRowDelete()           
            }
        ).catch((error)=>{
            const errorCode = error.code;
            const errorMessage = error.message;
            console.log(errorCode, "ini halo", errorMessage, selectedRow)
        })
    }

    const rejectRegister = (rowData, index)=>{
        setSelectedRow(rowData);
        axios.post('http://localhost:3000/user/reject', selectedRow).then(
            (response)=>{
                console.log(selectedRow)
                alert(response.data)
                console.log(response.data) 
                handleRowDelete(index)           
            }
        ).catch((error)=>{
            const errorCode = error.code;
            const errorMessage = error.message;
            console.log(errorCode, "ini halo", errorMessage, selectedRow)
        })
    }

    return (
      <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
          <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
              <tr>
                {theadData.map(heading => {
                     return <th scope="col" class="px-6 py-3" key={heading}>{heading}</th>
                })}
                <th scope="col" class="px-6 py-3">
                    Accept
                </th> 
                <th scope="col" class="px-6 py-3">
                    Reject
                </th> 
              </tr>
          </thead>
          <tbody>
                {tbodyData.map((row, index) => {
                    if(index%2===0){
                        return <tr key={index} class="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                            {theadData.map((key, index) => {
                            return <td key={row[key]} class="px-6 py-4">{row[key]}</td>
                            })}
                            <td class="px-6 py-4">
                            <button class="flex w-full text-white items-center p-2  bg-green-600 hover:bg-green-900" onClick={() => acceptRegister(row, index)}>Accept</button>
                            </td>
                            <td class="px-6 py-4">
                            <button class="flex w-full text-white items-center p-2  bg-red-700 hover:bg-red-900" onClick={() => rejectRegister(row, index)}>Reject</button>
                            </td>
                    </tr>;
                    }else{
                        return <tr key={index} class="border-b bg-gray-50 dark:bg-gray-800 dark:border-gray-700">
                            {theadData.map((key, index) => {
                            return <td key={row[key]} class="px-6 py-4">{row[key]}</td>
                            })}
                            <td class="px-6 py-4">
                            <button class="flex w-full text-white items-center p-2  bg-green-600 hover:bg-green-900"  onClick={() => acceptRegister(row, index)}>Accept</button>
                            </td>
                            <td class="px-6 py-4">
                            <button class="flex w-full text-white items-center p-2  bg-red-700 hover:bg-red-900" onClick={() => rejectRegister(row, index)}>Reject</button>
                            </td>
                    </tr>;
                    }                   
                })}  
          </tbody>
      </table>
      );
  }