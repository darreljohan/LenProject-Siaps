import axios from 'axios';
import '../index.css'
import { useTable, useSortBy, useGlobalFilter, useFilters, useRowSelect } from 'react-table'
import { COLUMNS } from './columnAssets';
import { useMemo, useState, useEffect } from 'react';
import { GlobalFilter } from './globalFilter';
import { Checkbox } from './checkBoxTable';

const Spinner = () => {
    return (
      <div className="spinner">
        <div className="dot1"></div>
        <div className="dot2"></div>
      </div>
    );
  };


const TableFilter = () => {
    const columns = useMemo(()=>COLUMNS, [])
    const [data, setData] = useState([])
    const [loading, setLoading] = useState(true);
    const [sumRows, setSumRows] = useState('');

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
        selectedFlatRows
    } = tableInstance

    const { globalFilter } = state


    if (loading) {
        // Show spinner while data is being fetched
        return <Spinner />;
      }
    if (!data) return null;
    

    return (
        <>
        <div>
          <div>
            <Checkbox {...getToggleHideAllColumnsProps()} />Hide Column
          </div>
          {
            allColumns.map(column=>(
              <div key={column.id}>
                <label>
                  <input type='checkbox' {...column.getToggleHiddenProps()}></input>
                  {column.Header}
                </label>
              </div>
            ))
          }
        </div>
        <GlobalFilter filter={globalFilter} setFilter={setGlobalFilter}></GlobalFilter>
        <table {...getTableProps()} className="w-full text-sm text-left text-gray-500 dark:text-gray-400">
            <thead className="text-xs text-gray-700 uppercase bg-gray-200 dark:bg-gray-700 dark:text-gray-400">
                {headerGroups.map((headerGroup)=>(
                    <tr {...headerGroup.getHeaderGroupProps()}>
                        {headerGroup.headers.map((column)=>(
                            <th {...column.getHeaderProps(column.getSortByToggleProps())} className="px-6 py-3">
                              {column.render('Header')}
                              <span>
                                {column.isSorted ? (column.isSortedDesc? 'v':"^"):''}
                              </span>
                              <div className="border-black">
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
              );
            })}
          </tbody>
        </table>
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
        <div id="pivot">
            <h1>Total Rows :{rows.length}</h1>
        </div>
        
        </>
    )
}

export default TableFilter;