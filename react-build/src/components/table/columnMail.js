// eslint-disable-next-line no-unused-vars
import { format } from "date-fns";
import { ColumnFilter } from "./columnFilter";

export const COLUMNS = [
  {
    Header: "id",
    Footer: "id",
    accessor: "id_surat",
    Filter: ColumnFilter,
  },
  {
    Header: "nomor_surat",
    Footer: "Nama Aset",
    accessor: "nomor_surat",
    Filter: ColumnFilter,
  },
  {
    Header: "link_file",
    Footer: "Jenis Aset",
    accessor: "link_file",
    Filter: ColumnFilter,
  },
  {
    Header: "nama_file",
    Footer: "Kondisi",
    accessor: "nama_file",
    Filter: ColumnFilter,
  },
  {
    Header: "url",
    Footer: "Status Pemakaian",
    accessor: "url",
    Filter: ColumnFilter,
  },
];
