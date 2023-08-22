'use client';
import { Button, Checkbox, Label, TextInput } from 'flowbite-react';

export default function FormAutoUpdater() {
    return (
      <form className="grow max-w flex-col gap-4 p-5 bg-green-400">
        <div className='p-3 border-solid border-red-700'>
        <div>
          <div className="mb-2 block">
            <Label
              htmlFor="Len Link"
              value="Len Link"
            />
          </div>
          <TextInput
            id="SpreadsheetLink"
            placeholder="1MIV2RB13AjCD1q5_Rr2kOtcYez1Tes8m0VjWPEcQxeE"
            required
            type="SpreadsheetLink"
          />
        </div>
        <div>
          <div className="mb-2 block">
            <Label
              htmlFor="sheet"
              value="Sheet Name"
            />
          </div>
          <TextInput
            id="SheetName"
            required
            type="SheetName"
          />
            </div>
        </div>
        
        <div className='p-3 border-solid border-gray-100'>
        <div>
          <div className="mb-2 block">
            <Label
              htmlFor="DAHANA Link"
              value="DAHANA Link"
            />
          </div>
          <TextInput
            id="SpreadsheetLink"
            placeholder="1MIV2RB13AjCD1q5_Rr2kOtcYez1Tes8m0VjWPEcQxeE"
            required
            type="SpreadsheetLink"
          />
        </div>
        <div>
          <div className="mb-2 block">
            <Label
              htmlFor="sheet"
              value="Sheet Name"
            />
          </div>
          <TextInput
            id="SheetName"
            required
            type="SheetName"
          />
            </div>
        </div>

        <div className='p-3 border-solid border-gray-100'>
        <div>
          <div className="mb-2 block">
            <Label
              htmlFor="PINDAD Link"
              value="PINDAD Link"
            />
          </div>
          <TextInput
            id="SpreadsheetLink"
            placeholder="1MIV2RB13AjCD1q5_Rr2kOtcYez1Tes8m0VjWPEcQxeE"
            required
            type="SpreadsheetLink"
          />
        </div>
        <div>
          <div className="mb-2 block">
            <Label
              htmlFor="sheet"
              value="Sheet Name"
            />
          </div>
          <TextInput
            id="SheetName"
            required
            type="SheetName"
          />
            </div>
        </div>
        
        <Button type="submit" className="mt-2 block">
          Submit
        </Button>
      </form>
    )
  }