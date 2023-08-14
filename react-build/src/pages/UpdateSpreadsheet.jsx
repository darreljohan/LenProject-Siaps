import '../index.css'
import axios from 'axios';
import { useState, useEffect } from 'react';
import SidebarDefault from '../components/sidebarFlowBite';
import { Button, Sidebar } from 'flowbite-react';
import { HiOutlineArrowRight } from 'react-icons/hi';
import TableFilter from '../components/table/tableFilter';
import FormSpreadsheet from '../components/formSpreadsheet';
import TableRecheck from '../components/table/tableRecheck';

const UpdateSpreadsheet = () => {
    const [sidebarOpen, setSidebarOpen] = useState(false)
    
    const toggleSidebar = () => {
        setSidebarOpen(!sidebarOpen);
      };

    return (
        <div class='flex flex-row'>
            <div class='flex sticky top-0  h-screen'>
                {sidebarOpen && <SidebarDefault />}
            </div>
            <div class='flex flex-col place-content-center bg-slate-400 '>
                <Button onClick={toggleSidebar}>
                    <HiOutlineArrowRight className="" />
                </Button>
            </div>
            <div class='grow flex-col'>
                <div class='flex flex-row w-1/2 bg bg-slate-600'>
                    <FormSpreadsheet/>
                </div>
                <div >
                    <TableRecheck/>
                </div>
            </div>
            <div> 

            </div>
        </div>
    )
}

export default UpdateSpreadsheet