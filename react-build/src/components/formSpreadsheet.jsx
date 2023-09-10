"use client";
import { Button, Label, TextInput } from "flowbite-react";

export default function FormSpreadsheet() {
  return (
    <form className="grow max-w flex-col gap-4 p-5 bg-green-400">
      <div>
        <div className="mb-2 block">
          <Label htmlFor="SpreadsheetLink" value="Spreadsheet Link" />
        </div>
        <TextInput
          id="SpreadsheetLink"
          placeholder="spreadsheet/"
          required
          type="SpreadsheetLink"
        />
      </div>
      <div>
        <div className="mb-2 block">
          <Label htmlFor="sheet" value="Sheet Name" />
        </div>
        <TextInput id="SheetName" required type="SheetName" />
      </div>
      <Button type="submit" className="mt-2 block">
        Submit
      </Button>
    </form>
  );
}
