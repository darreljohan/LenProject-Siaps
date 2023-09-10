/* eslint-disable no-unused-vars */
import "../../index.css";
import axios from "axios";
import { useState, useEffect } from "react";

export default function TableAssets() {
  const [theadData, setHeadings] = useState("");
  const [tbodyData, setData] = useState("");

  useEffect(() => {
    axios
      .get(
        "https://script.google.com/macros/s/AKfycbx5WKO7HCFGeaQejujs1Vd9CHilCXCKbc7jUBVEj0GFwGJoNZwwIa-2NB1Z5x0vCI2i-Q/exec",
      )
      .then((response) => {
        setHeadings(Object.keys(response.data[0]));
        setData(response.data);
      })
      .catch((error) => {
        const errorCode = error.code;
        const errorMessage = error.message;
        console.log(errorCode, "ini halo", errorMessage);
      });
  }, []);

  if (!theadData) return null;

  return (
    <table className="w-full text-sm text-left text-gray-500 dark:text-gray-400">
      <thead className="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
        <tr>
          {theadData.map((heading) => {
            return <th scope="col" className="px-6 py-3" key={heading}></th>;
          })}
        </tr>
      </thead>
      <tbody>
        {tbodyData.map((row, index) => {
          if (index % 2 === 0) {
            return (
              <tr
                key={index}
                className="bg-white border-b dark:bg-gray-900 dark:border-gray-700"
              >
                {theadData.map((key, index) => {
                  return (
                    <td key={row[key]} className="px-6 py-4">
                      {row[key]}
                    </td>
                  );
                })}
              </tr>
            );
          } else {
            return (
              <tr
                key={index}
                className="border-b bg-gray-50 dark:bg-gray-800 dark:border-gray-700"
              >
                {theadData.map((key, index) => {
                  return (
                    <td key={row[key]} className="px-6 py-4">
                      {row[key]}
                    </td>
                  );
                })}
              </tr>
            );
          }
        })}
      </tbody>
    </table>
  );
}
