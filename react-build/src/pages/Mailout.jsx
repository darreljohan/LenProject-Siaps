import "../index.css";
import SidebarDefault from "../components/sidebarFlowBite";
import { useState } from "react";
import TableMail from "../components/table/tableMail";

const Mailout = () => {
  const [sidebarOpen, setSidebarOpen] = useState(false);

  const toggleSidebar = () => {
    setSidebarOpen(!sidebarOpen);
  };

  return (
    <div className="flex flex-row w-screen">
      <div className="flex sticky top-0 h-screen">
        {sidebarOpen && <SidebarDefault />}
      </div>
      <div
        className="flex flex-col h-screen w-10 sticky top-0 left-0 place-content-center bg-slate-400 "
        onClick={toggleSidebar}
      >
        <svg
          className="w-6 h-6  text-gray-800 dark:text-white"
          aria-hidden="true"
          xmlns="http://www.w3.org/2000/svg"
          fill="currentColor"
          viewBox="0 0 10 16"
        >
          <path d="M3.414 1A2 2 0 0 0 0 2.414v11.172A2 2 0 0 0 3.414 15L9 9.414a2 2 0 0 0 0-2.828L3.414 1Z" />
        </svg>
      </div>
      <div className="flex flex-col w-screen h-screen">
        <div className="p-5 w-screen ">
          <h3 className="text-5xl">Mail Out</h3>
        </div>
        <div className="shadow-md sm:rounded-lg">
          <TableMail tableName={"mail_in"} />
        </div>
      </div>
    </div>
  );
};

export default Mailout;
