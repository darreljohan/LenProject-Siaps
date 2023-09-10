/* eslint-disable react/jsx-key */
import axios from "axios";
import "../../index.css";
import {
  useTable,
  useSortBy,
  useGlobalFilter,
  useFilters,
  useRowSelect,
} from "react-table";
import { COLUMNS } from "./columnMail";
import { useMemo, useState, useEffect, useCallback } from "react";
import { Checkbox } from "./checkBoxTable";
import { Dropdown } from "flowbite-react";
import FooterFilter from "./footerFilter";
import DismissableModal from "./modalFilter";
import { useNavigate } from "react-router-dom";

const Spinner = () => {
  return (
    <div className="spinner">
      <div className="dot1"></div>
      <div className="dot2"></div>
    </div>
  );
};

const TableFilter = ({ tableName }) => {
  const columns = useMemo(() => COLUMNS, []);
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [toggleModal, setToggleModal] = useState();
  const [rowDataForModal, setRowDataForModal] = useState();

  const handleRowClick = useCallback((row) => {
    setToggleModal("dismissible");
    setRowDataForModal(row);
  }, []);

  useEffect(() => {
    axios
      .get("http://localhost:3000/table/get?nama_tabel=" + tableName)
      .then((response) => {
        setData(response.data);
        setLoading(false);
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
    useGlobalFilter,
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
    selectedFlatRows,
  } = tableInstance;

  if (loading) {
    // Show spinner while data is being fetched
    return <Spinner />;
  }
  if (!data) return null;

  return (
    <>
      <DismissableModal
        openModal={toggleModal}
        rowData={rowDataForModal}
        setOpenModal={setToggleModal}
      ></DismissableModal>
      <div className="flex flex-row ">
        <Dropdown label="Hide Column">
          {allColumns.map((column) => (
            // eslint-disable-next-line react/jsx-key
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

      <div className="flex flex-col max-w-screen h-3/4 max-h-screen">
        <div className="container overflow-scroll rounded-lg">
          <table
            {...getTableProps()}
            className="text-sm text-left text-gray-500 dark:text-gray-400 "
          >
            <thead className="sticky top-0 text-xs text-gray-700 uppercase bg-gray-200 dark:bg-gray-700 dark:text-gray-400 ">
              {headerGroups.map((headerGroup) => (
                <tr {...headerGroup.getHeaderGroupProps()} className="sticky ">
                  {headerGroup.headers.map((column) => (
                    <th className="px-6 py-3">
                      <div
                        className="flex flex-row "
                        {...column.getHeaderProps(
                          column.getSortByToggleProps(),
                        )}
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
              {rows.map((row) => {
                prepareRow(row);
                return (
                  <tr
                    {...row.getRowProps()}
                    className="bg-white border-b dark:bg-gray-900 dark:border-gray-700 hover:bg-slate-600"
                    onClick={() => {
                      handleRowClick(data[row.index]);
                    }}
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
              })}
            </tbody>
          </table>
          <div className="flex sticky bottom-0 left-0">
            <FooterFilter
              rowsLength={rows.length}
              selectedRowsLength={selectedFlatRows.length}
            />
          </div>
        </div>
      </div>

      <pre>
        <code>
          {JSON.stringify(
            {
              selectedFlatRows: selectedFlatRows.map((row) => row.original),
            },
            null,
            2,
          )}
        </code>
      </pre>
    </>
  );
};

export default TableFilter;
