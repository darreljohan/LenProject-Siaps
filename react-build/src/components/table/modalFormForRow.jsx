import { Label, TextInput, Select, RangeSlider, Button } from "flowbite-react";
import { useState } from "react";

export default function ModalFormForRow({ rowData }) {
  const [kategori, setKategori] = useState();

  function kategoriGenerateField() {
    if (kategori === "Lainnya") {
      return (
        <TextInput
          disabled
          className="flex grow pr-2"
          id="disabledInput1"
          placeholder={rowData.jenis_asset}
          type="text"
        />
      );
    } else {
      return <></>;
    }
  }

  return (
    <>
      <div className="flex max-w-md flex-col gap-4 py-2">
        <Label htmlFor="disabledInput1">nama asset</Label>
        <div className="flex flex-row">
          <TextInput
            disabled
            className="flex grow pr-2"
            id="disabledInput1"
            placeholder={rowData.nama_asset}
            type="text"
          />
          <Button></Button>
        </div>
      </div>
      <div className="flex max-w-md flex-col gap-4  py-2">
        <Label htmlFor="disabledInput1">jenis asset</Label>
        <TextInput
          disabled
          className="flex grow pr-2"
          id="disabledInput1"
          placeholder={rowData.jenis_asset}
          type="text"
        />
      </div>
      <div className="flex max-w-md flex-col gap-4  py-2">
        <Label htmlFor="disabledInput1">kondisi</Label>
        <TextInput
          disabled
          className="flex grow pr-2"
          id="disabledInput1"
          placeholder={rowData.kondisi}
          type="text"
        />
      </div>
      <div className="flex max-w-md flex-col gap-4  py-2">
        <Label htmlFor="disabledInput1">status pemakaian</Label>
        <TextInput
          disabled
          className="flex grow pr-2"
          id="disabledInput1"
          placeholder={rowData.status_pemakaian}
          type="text"
        />
      </div>
      <div className="flex max-w-md flex-col gap-4  py-2">
        <div className="mb-1 block">
          <Label htmlFor="disbaled-range" value="Utilisasi" />
        </div>
        <RangeSlider
          disabled
          className="flex grow pr-2"
          id="disabled-range"
          min={0}
          max={100}
          placeholder={rowData.utilisasi}
        />
      </div>
      <div className="flex max-w-md flex-col gap-4  py-2">
        <Label htmlFor="disabledInput1">tahun perolehan</Label>
        <TextInput
          disabled
          className="flex grow pr-2"
          id="disabledInput1"
          placeholder={rowData.tahun_perolehan}
          type="text"
        />
      </div>
      <div className="flex max-w-md flex-col gap-4  py-2">
        <Label htmlFor="disabledInput1">sumber dana</Label>
        <TextInput
          disabled
          className="flex grow pr-2"
          id="disabledInput1"
          placeholder={rowData.sumber_dana}
          type="text"
        />
      </div>
      <div className="flex max-w-md flex-col gap-4  py-2">
        <Label htmlFor="disabledInput1">nilai perolehan</Label>
        <TextInput
          disabled
          className="flex grow pr-2"
          id="disabledInput1"
          placeholder={rowData.nilai_perolehan}
          type="text"
        />
      </div>
      <div className="flex max-w-md flex-col gap-4  py-2">
        <Label htmlFor="disabledInput1">rencana optimisasi</Label>
        <TextInput
          disabled
          className="flex grow pr-2"
          id="disabledInput1"
          placeholder={rowData.rencana_optimisasi}
          type="text"
        />
      </div>
      <div className="flex max-w-md flex-col gap-4  py-2">
        <Label htmlFor="disabledInput1">lokasi</Label>
        <TextInput
          disabled
          className="flex grow pr-2"
          id="disabledInput1"
          placeholder={rowData.lokasi}
          type="text"
        />
      </div>
      <div className="flex max-w-md flex-col gap-4 py-2">
        <Label htmlFor="disabledInput1">kategori fungsi mesin</Label>
        <Select id="countries" required>
          <option
            onClick={() => {
              setKategori("Bubut");
            }}
          >
            Bubut
          </option>
          <option
            onClick={() => {
              setKategori("Cutting");
            }}
          >
            Cutting
          </option>
          <option
            onClick={() => {
              setKategori("Gerinda");
            }}
          >
            Gerinda
          </option>
          <option
            onClick={() => {
              setKategori("Milling");
            }}
          >
            Milling
          </option>
          <option
            onClick={() => {
              setKategori("Lainnya");
            }}
          >
            Lainnya
          </option>
        </Select>
        {kategoriGenerateField()}
      </div>
    </>
  );
}
