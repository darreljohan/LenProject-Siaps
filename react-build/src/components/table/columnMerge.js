// eslint-disable-next-line no-unused-vars
import { format } from "date-fns";
import { ColumnFilter } from "./columnFilter";

export const COLUMNS = [
  {
    Header: "Id",
    Footer: "Id",
    accessor: "id",
    Filter: ColumnFilter,
  },
  {
    Header: "nama_asset",
    Footer: "nama_asset",
    accessor: "nama_asset",
    Filter: ColumnFilter,
  },
  {
    Header: "jenis_asset",
    Footer: "jenis_asset",
    accessor: "jenis_asset",
    Filter: ColumnFilter,
  },
  {
    Header: "kondisi",
    Footer: "kondisi",
    accessor: "kondisi",
    Filter: ColumnFilter,
  },
  {
    Header: "status_pemakaian",
    Footer: "status_Pemakaian",
    accessor: "status_pemakaian",
    Filter: ColumnFilter,
  },
  {
    Header: "utilisasi",
    Footer: "utilisasi",
    accessor: "utilisasi",
    Filter: ColumnFilter,
  },
  {
    Header: "tahun_perolehan",
    Footer: "tahun_perolehan",
    accessor: "tahun_perolehan",
    //Cell: ({value})=>{return format(new Date(value), 'dd/MM/yyyy')},
    Filter: ColumnFilter,
  },
  {
    Header: "umur_teknis",
    Footer: "umur_teknis",
    accessor: "umur_teknis",
    Filter: ColumnFilter,
  },
  {
    Header: "sumber_dana",
    Footer: "sumber_dana",
    accessor: "sumber_dana",
    Filter: ColumnFilter,
  },
  {
    Header: "nilai_perolehan",
    Footer: "nilai_perolehan",
    accessor: "nilai_perolehan",
    Cell: ({ value }) => {
      return new Intl.NumberFormat("id-ID", {
        style: "currency",
        currency: "idr",
      }).format(value);
    },
    Filter: ColumnFilter,
  },
  {
    Header: "nilai_buku",
    Footer: "nilai_buku",
    accessor: "nilai_buku",
    Cell: ({ value }) => {
      return new Intl.NumberFormat("id-ID", {
        style: "currency",
        currency: "idr",
      }).format(value);
    },
    Filter: ColumnFilter,
  },
  {
    Header: "rencana_optimisasi",
    Footer: "rencana_optimisasi",
    accessor: "rencana_optimisasi",
    Filter: ColumnFilter,
  },
  {
    Header: "lokasi",
    Footer: "lokasi",
    accessor: "lokasi",
    Filter: ColumnFilter,
  },
  {
    Header: "gambar",
    Footer: "gambar",
    accessor: "gambar",
    Filter: ColumnFilter,
  },
];
