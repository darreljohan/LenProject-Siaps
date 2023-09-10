/* eslint-disable react/jsx-key */
import axios from "axios";
import "../../index.css";
import { useTable, useSortBy, useFilters, useRowSelect } from "react-table";
import { COLUMNS } from "./columnMerge";
import { useMemo, useState, useEffect } from "react";
import { Checkbox } from "./checkBoxTable";
import { Dropdown } from "flowbite-react";
import { Button } from "flowbite-react";

const Spinner = () => {
  return (
    <div className="spinner">
      <div className="dot1"></div>
      <div className="dot2"></div>
    </div>
  );
};

const TableRecheck = () => {
  const columns = useMemo(() => COLUMNS, []);
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    axios
      .get(
        "http://localhost:3000/table/mergeSpreadsheetTable?action=getTable&destinationSheet=Len&tableName=len_Assets",
      )
      .then((response) => {
        setData(response.data);
        setLoading(false);
        console.log(data);
      })
      .catch((error) => {
        const errorCode = error.code;
        const errorMessage = error.message;
        console.log(errorCode, "ini halo", errorMessage);
        setLoading(false);
      });
  }, []);

  const tableInstance = useTable(
    {
      columns,
      data,
    },
    useFilters,
    useSortBy,
    useRowSelect,
    (hooks) => {
      hooks.visibleColumns.push((columns) => {
        return [
          {
            id: "selection",
            Header: ({ getToggleAllRowsSelectedProps }) => (
              <Checkbox {...getToggleAllRowsSelectedProps()} />
            ),
            Cell: ({ row }) => (
              <Checkbox {...row.getToggleRowSelectedProps()} />
            ),
          },
          ...columns,
        ];
      });
    },
  );

  const {
    getTableProps,
    getTableBodyProps,
    headerGroups,
    rows,
    prepareRow,
    allColumns,
  } = tableInstance;

  if (loading) {
    // Show spinner while data is being fetched
    return <Spinner />;
  }
  if (!data) return null;

  return (
    <>
      <div>
        <Dropdown label="Hide Column">
          {allColumns.map((column) => (
            <item>
              <div key={column.id}>
                <label>
                  <input
                    type="checkbox"
                    {...column.getToggleHiddenProps()}
                  ></input>
                  {column.Header}
                </label>
              </div>
            </item>
          ))}
        </Dropdown>
      </div>
      <div className="container h-80 overflow-scroll">
        <table
          {...getTableProps()}
          className="text-sm text-left text-gray-500 dark:text-gray-400"
        >
          <thead className=" sticky top-0 text-xs text-gray-700 uppercase bg-gray-200 dark:bg-gray-700 dark:text-gray-400">
            {headerGroups.map((headerGroup) => (
              <tr {...headerGroup.getHeaderGroupProps()}>
                {headerGroup.headers.map((column) => (
                  <th className="px-6 py-3">
                    <div
                      className="flex flex-row"
                      {...column.getHeaderProps(column.getSortByToggleProps())}
                    >
                      <div className="flex w-5/6">
                        {column.render("Header")}
                      </div>
                      <span>
                        {column.isSorted
                          ? column.isSortedDesc
                            ? "^"
                            : "v"
                          : "="}
                      </span>
                    </div>
                    <div className="border-black py-1">
                      {column.canFilter ? column.render("Filter") : null}
                    </div>
                  </th>
                ))}
              </tr>
            ))}
          </thead>
          <tbody {...getTableBodyProps()}>
            {rows.map((row, index) => {
              prepareRow(row);
              if (data[index].read) {
                return (
                  <tr
                    {...row.getRowProps()}
                    className="bg-white border-b dark:bg-gray-900 dark:border-gray-700"
                  >
                    {row.cells.map((cell) => {
                      return (
                        <td {...cell.getCellProps()} className="px-6 py-4">
                          {cell.render("Cell")}
                        </td>
                      );
                    })}
                  </tr>
                );
              } else {
                return (
                  <tr
                    {...row.getRowProps()}
                    className="bg-green-400 border-b dark:bg-gray-900 dark:border-gray-700"
                  >
                    {row.cells.map((cell) => {
                      return (
                        <td {...cell.getCellProps()} className="px-6 py-4">
                          {cell.render("Cell")}
                        </td>
                      );
                    })}
                  </tr>
                );
              }
            })}
          </tbody>
        </table>
      </div>
      <div className="flex flex-column">
        <Button className="flex">Tambahkan ke Database</Button>
        <Button className="flex" color="failure">
          Batal
        </Button>
      </div>
    </>
  );
};

export default TableRecheck;
