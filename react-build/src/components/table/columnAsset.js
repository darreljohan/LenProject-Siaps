// eslint-disable-next-line no-unused-vars
import { format } from "date-fns";
import { ColumnFilter } from "./columnFilter";

export const COLUMNS = [
  {
    Header: "id",
    Footer: "id",
    accessor: "id",
    Filter: ColumnFilter,
  },
  {
    Header: "Nama Aset",
    Footer: "Nama Aset",
    accessor: "nama_asset",
    Filter: ColumnFilter,
  },
  {
    Header: "Jenis Aset",
    Footer: "Jenis Aset",
    accessor: "jenis_asset",
    Filter: ColumnFilter,
  },
  {
    Header: "Kondisi",
    Footer: "Kondisi",
    accessor: "kondisi",
    Filter: ColumnFilter,
  },
  {
    Header: "Status Pemakaian",
    Footer: "Status Pemakaian",
    accessor: "status_pemakaian",
    Filter: ColumnFilter,
  },
  {
    Header: "Utilisasi",
    Footer: "Utilisasi",
    accessor: "utilisasi",
    Filter: ColumnFilter,
  },
  {
    Header: "Tahun Perolehan",
    Footer: "Tahun Perolehan",
    accessor: "tahun_perolehan",
    //Cell: ({value})=>{return format(new Date(value), 'dd/MM/yyyy')},
    Filter: ColumnFilter,
  },
  {
    Header: "Umur Teknis",
    Footer: "Umur Teknis",
    accessor: "umur_teknis",
    Filter: ColumnFilter,
  },
  {
    Header: "Sumber Dana",
    Footer: "Sumber Dana",
    accessor: "sumber_dana",
    Filter: ColumnFilter,
  },
  {
    Header: "Nilai Perolehan",
    Footer: "Nilai Perolehan",
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
    Header: "Nilai Buku",
    Footer: "Nilai Buku",
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
    Header: "Rencana Optimisasi",
    Footer: "Rencana Optimisasi",
    accessor: "rencana_optimisasi",
    Filter: ColumnFilter,
  },
  {
    Header: "Lokasi",
    Footer: "Lokasi",
    accessor: "lokasi",
    Filter: ColumnFilter,
  },
  {
    Header: "merk",
    Footer: "merk",
    accessor: "merk",
    Filter: ColumnFilter,
  },
  {
    Header: "tipe_mesin",
    Footer: "tipe_mesin",
    accessor: "tipe_mesin",
    Filter: ColumnFilter,
  },
  {
    Header: "kategori_fungsi_mesin",
    Footer: "kategori_fungsi_mesin",
    accessor: "kategori_fungsi_mesin",
    Filter: ColumnFilter,
  },
  {
    Header: "raw_material",
    Footer: "raw_material",
    accessor: "raw_material",
    Filter: ColumnFilter,
  },
  {
    Header: "User Edit",
    Footer: "Gambar",
    accessor: "user_edit",
    Filter: ColumnFilter,
  },
  {
    Header: "Date Edit",
    Footer: "Gambar",
    accessor: "date_edit",
    Filter: ColumnFilter,
  },
];
