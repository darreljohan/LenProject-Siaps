import "../index.css";
import { useState } from "react";

import SidebarDefault from "../components/sidebarFlowBite";
import FormAutoUpdater from "../components/formAutoUpdater";

const AutoUpdater = () => {
  const [sidebarOpen, setSidebarOpen] = useState(false);

  const toggleSidebar = () => {
    setSidebarOpen(!sidebarOpen);
  };

  return (
    <>
      <div className="flex flex-row">
        <div className="sticky top-0  h-screen">
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
        <div className="grow flex-col">
          <div className="flex flex-row w-1/2 bg bg-slate-600">
            <FormAutoUpdater />
          </div>
        </div>
      </div>
    </>
  );
};

export default AutoUpdater;
