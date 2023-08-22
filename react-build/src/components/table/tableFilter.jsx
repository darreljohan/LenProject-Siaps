import axios from 'axios';
import '../../index.css'
import { useTable, useSortBy, useGlobalFilter, useFilters, useRowSelect, usePagination } from 'react-table'
import { COLUMNS } from './columnAsset';
import { useMemo, useState, useEffect } from 'react';
import { GlobalFilter } from './globalFilter';
import { Checkbox } from './checkBoxTable';
import { Dropdown } from 'flowbite-react';
import FooterFilter from './footerFilter';
import { Button, Label, TextInput } from 'flowbite-react';
const Spinner = () => {
    return (
      <div className="spinner">
        <div className="dot1"></div>
        <div className="dot2"></div>
      </div>
    );
  };


const TableFilter = ({tableName}) => {
    const columns = useMemo(()=>COLUMNS, [])
    const [data, setData] = useState([])
    const [loading, setLoading] = useState(true);
    const [sumRows, setSumRows] = useState(null);

    useEffect(() => {
        axios.get('http://localhost:3000/table/get?nama_tabel='+tableName).then(
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
    useFilters, useGlobalFilter, useSortBy,
    useRowSelect, (hooks)=>{
      hooks.visibleColumns.push((columns)=>{
        return[
          {
            id: 'selection',
            Header: ({getToggleAllRowsSelectedProps})=>(
              <Checkbox {...getToggleAllRowsSelectedProps()}/>
            ),
            Cell : ({row})=>(
              <Checkbox {...row.getToggleRowSelectedProps()}/>
            )
          },
          ...columns
        ]
      })
    }
    )

    const {
        getTableProps,
        getTableBodyProps,
        headerGroups,
        rows,
        prepareRow,
        state,
        setGlobalFilter,
        allColumns,
        getToggleHideAllColumnsProps,
        selectedFlatRows,
    } = tableInstance

    const { globalFilter } = state


    if (loading) {
        // Show spinner while data is being fetched
        return <Spinner />;
      }
    if (!data) return null;
    

    return (
        <>
        <div className='flex flex-row'>
          <Dropdown label="Hide Column">
            {
              allColumns.map(column=>(
                <item>
                <div key={column.id}>
                  <label>
                    <input type='checkbox' {...column.getToggleHiddenProps()}></input>
                    {column.Header}
                  </label>
                </div>
                </item>
              ))
            }
          </Dropdown>
        </div>

        <div className='flex flex-col'>
        <table {...getTableProps()} className="w-full text-sm text-left text-gray-500 dark:text-gray-400">
            <thead className="text-xs text-gray-700 uppercase bg-gray-200 dark:bg-gray-700 dark:text-gray-400">
                {headerGroups.map((headerGroup)=>(
                    <tr {...headerGroup.getHeaderGroupProps()} className='sticky '>
                        {headerGroup.headers.map((column)=>(
                            <th  className="px-6 py-3">
                              <div className='flex flex-row ' {...column.getHeaderProps(column.getSortByToggleProps())}>
                                <div className='flex w-5/6'>
                                {column.render('Header')}
                                </div>
                                <span>
                                  {column.isSorted ? (column.isSortedDesc? '^':"v"):'='}
                                </span>
                              </div>
                              <div className="border-black py-1">
                                {column.canFilter? column.render('Filter'): null}
                              </div>
                              </th>
                        ))}
                    </tr>   
                ))}
            </thead>
            <tbody {...getTableBodyProps()}>
            {rows.map((row) => {
              prepareRow(row);
              return (
                <tr {...row.getRowProps()} className="bg-white border-b dark:bg-gray-900 dark:border-gray-700">
                  {row.cells.map((cell) => {
                    return <td {...cell.getCellProps()} className="px-6 py-4">{cell.render('Cell')}</td>;
                  })}
                </tr>
              )
            })}
          </tbody>
        </table>
          <div className='flex sticky bottom-0'>
            <FooterFilter rowsLength={[rows.length, selectedFlatRows.length]}/>
          </div>
        </div>
        
        <pre>
        <code>
          {JSON.stringify(
            {
              selectedFlatRows: selectedFlatRows.map((row)=> row.original)
            },
            null,
            2
          )}
        </code>
        </pre>
    </>
        
    )
}

export default TableFilter;