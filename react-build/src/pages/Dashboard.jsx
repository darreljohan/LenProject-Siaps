import '../index.css'
import axios from 'axios';
import TableAssets from '../components/table/tableAsset';
import { useState, useEffect } from 'react';
import SidebarDefault from '../components/sidebarFlowBite';
import { Button, Sidebar } from 'flowbite-react';
import { HiOutlineArrowRight } from 'react-icons/hi';
import TableFilter from '../components/table/tableFilter';

const Dashboard = () => {
    const [sidebarOpen, setSidebarOpen] = useState(false)
    
    const toggleSidebar = () => {
        setSidebarOpen(!sidebarOpen);
      };

    return (
        <div class='flex flex-row'>
            <div class='sticky top-0  h-screen'>
                {sidebarOpen && <SidebarDefault />}
            </div>
            <div class='flex flex-col'>
                <div class='flex flex-row py-5 pl-2'>
                    <Button onClick={toggleSidebar}>
                        <HiOutlineArrowRight className="h-5 w-5" />
                    </Button>
                </div>
                <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
                    <TableFilter />
                </div>
            </div>
        </div>
    )
}

export default Dashboard