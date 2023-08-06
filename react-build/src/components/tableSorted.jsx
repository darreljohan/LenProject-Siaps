import '../index.css'
import axios from 'axios';
import '../index.css'
import { useTable, useSortBy } from 'react-table'
import { COLUMNS } from './columnAssets';
import { useMemo, useState, useEffect } from 'react';

const Spinner = () => {
    return (
      <div className="spinner">
        <div className="dot1"></div>
        <div className="dot2"></div>
      </div>
    );
  };


const SortedTable = () => {
    const columns = useMemo(()=>COLUMNS, [])
    const [data, setData] = useState([])
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        axios.get('https://script.google.com/macros/s/AKfycbx5WKO7HCFGeaQejujs1Vd9CHilCXCKbc7jUBVEj0GFwGJoNZwwIa-2NB1Z5x0vCI2i-Q/exec').then(
            (response) => {
                setData(response.data)
                setLoading(false);
            }
        ).catch((error) => {
            const errorCode = error.code;
            const errorMessage = error.message;
            console.log(errorCode, "ini halo", errorMessage)
            setLoading(false);
        })
    }, [])


    const tableInstance = useTable({
        columns,
        data,
    }, 
    useSortBy)

    const {
        getTableProps,
        getTableBodyProps,
        headerGroups,
        rows,
        prepareRow
    } = tableInstance

    if (loading) {
        // Show spinner while data is being fetched
        return <Spinner />;
      }
    if (!data) return null;
    

    return (
        <table{...getTableProps()} class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                {headerGroups.map((headerGroup)=>(
                    <tr {...headerGroup.getHeaderGroupProps()}>
                        {headerGroup.headers.map((column)=>(
                            <th {...column.getHeaderProps(column.getSortByToggleProps())} class="px-6 py-3">
                              {column.render('Header')}
                              <span>
                                {column.isSorted ? (column.isSortedDesc? 'v':"^"):''}
                              </span>
                              </th>
                        ))}
                    </tr>
                ))}
            </thead>
            <tbody {...getTableBodyProps()}>
            {rows.map((row) => {
              prepareRow(row);
              return (
                <tr {...row.getRowProps()} class="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                  {row.cells.map((cell) => {
                    return <td {...cell.getCellProps()} class="px-6 py-4">{cell.render('Cell')}</td>;
                  })}
                </tr>
              );
            })}
          </tbody>
        </table>
    )
}

export default SortedTable;