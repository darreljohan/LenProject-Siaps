import {format} from 'date-fns'
import { ColumnFilter } from './columnFilter'

export const COLUMNS = [
    {
        Header : 'No',
        Footer : 'No',
        accessor: 'No',
        Filter : ColumnFilter
    },
    {
        Header : 'Nama Aset',
        Footer : 'Nama Aset',
        accessor: 'Nama_Aset',
        Filter : ColumnFilter
    },
    {
        Header : 'Jenis Aset',
        Footer : 'Jenis Aset',
        accessor: 'Jenis_Aset',
        Filter : ColumnFilter
    },
    {
        Header : 'Kondisi',
        Footer : 'Kondisi',
        accessor: 'Kondisi',
        Filter : ColumnFilter
    },
    {
        Header : 'Status Pemakaian',
        Footer : 'Status Pemakaian',
        accessor: 'Status_Pemakaian',
        Filter : ColumnFilter
    },
    {
        Header : 'Utilisasi',
        Footer : 'Utilisasi',
        accessor: 'Utilisasi',
        Filter : ColumnFilter
    },
    {
        Header : 'Tahun Perolehan',
        Footer : 'Tahun Perolehan',
        accessor: 'Tahun_Perolehan',
        //Cell: ({value})=>{return format(new Date(value), 'dd/MM/yyyy')},
        Filter : ColumnFilter
    },
    {
        Header : 'Umur Teknis',
        Footer : 'Umur Teknis',
        accessor: 'Umur_Teknis',
        Filter : ColumnFilter
    },
    {
        Header : 'Sumber Dana',
        Footer : 'Sumber Dana',
        accessor: 'Sumber_Dana',
        Filter : ColumnFilter
    },
    {
        Header : 'Nilai Perolehan',
        Footer : 'Nilai Perolehan',
        accessor: 'Nilai_Perolehan',
        Cell: ({value})=>{return new Intl.NumberFormat("id-ID", {style: "currency", currency: "idr"}).format(value)},
        Filter : ColumnFilter
    },
    {
        Header : 'Nilai Buku',
        Footer : 'Nilai Buku',
        accessor: 'Nilai_Buku',
        Cell: ({value})=>{return new Intl.NumberFormat("id-ID", {style: "currency", currency: "idr"}).format(value)},
        Filter : ColumnFilter
    },
    {
        Header : 'Rencana Optimisasi',
        Footer : 'Rencana Optimisasi',
        accessor : 'Rencana_Optimisasi',
        Filter : ColumnFilter
    },
    {
        Header : 'Lokasi',
        Footer : 'Lokasi',
        accessor: 'Lokasi',
        Filter : ColumnFilter
    },
    {
        Header : 'Gambar',
        Footer : 'Gambar',
        accessor: 'gambar',
        Filter : ColumnFilter
    },


]