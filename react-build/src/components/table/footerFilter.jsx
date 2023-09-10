import { Footer } from "flowbite-react";

export default function FooterFilter({ rowsLength, selectedRowsLength }) {
  return (
    <Footer container>
      <div className="flex flex-row">
        <div className="flex pr-5 text-sm text-gray-500 dark:text-gray-400 sm:text-center">
          Rows Length : {rowsLength}
        </div>
        <div className="flex text-sm text-gray-500 dark:text-gray-400 sm:text-center">
          Selected Rows Length : {selectedRowsLength}
        </div>
      </div>
    </Footer>
  );
}
