import { Sidebar, Card } from "flowbite-react";
import {
  HiArrowSmRight,
  HiChartPie,
  HiInbox,
  HiShoppingBag,
  HiUser,
} from "react-icons/hi";


export default function SidebarDefault() {
  return (
    <Sidebar aria-label="Default sidebar example">
      <Sidebar.Items>
        <Sidebar.Logo href="#" img="./logo1.png  " imgAlt="Logo Siap">
          <p>SIAPS</p>
        </Sidebar.Logo>
        <Card className="max-w-sm" href="#" theme={{ children: "gap-2" }}>
          <img
            alt="name"
            src="https://flowbite.com/docs/images/carousel/carousel-2.svg"
            className="object-none w-fit rounded-full custom-position"
          />
          <p>Darrel Johan</p>
          <p>Admin </p>
        </Card>
        <Sidebar.ItemGroup>
          <Sidebar.Item href="/dashboard" icon={HiChartPie}>
            <p>Dashboard</p>
          </Sidebar.Item>
          <Sidebar.Collapse icon={HiShoppingBag} label="Tabel Aset">
            <Sidebar.Item href="/tableViewer?table=len_assets">
              Len
            </Sidebar.Item>
            <Sidebar.Item href="/tableViewer?table=dahana_assets">
              Dahana
            </Sidebar.Item>
            <Sidebar.Item href="/tableViewer?table=di_assets">
              Dirgantara Indonesia
            </Sidebar.Item>
            <Sidebar.Item href="/tableViewer?table=pindad_assets">
              Pindad
            </Sidebar.Item>
            <Sidebar.Item href="/tableViewer?table=pal_assets">
              PAL
            </Sidebar.Item>
          </Sidebar.Collapse>
          <Sidebar.Item href="/news" icon={HiInbox}>
            <p>News</p>
          </Sidebar.Item>
          <Sidebar.Collapse icon={HiShoppingBag} label="Mail">
            <Sidebar.Item href="/mailin">Mail In</Sidebar.Item>
            <Sidebar.Item href="/mailout">Mail Out</Sidebar.Item>
          </Sidebar.Collapse>
          <Sidebar.Item href="#" icon={HiShoppingBag}>
            <p>Diagram</p>
          </Sidebar.Item>
          <Sidebar.Item href="/updateSpreadsheet" icon={HiInbox}>
            <p>Import</p>
          </Sidebar.Item>
          <Sidebar.Item href="/autoUpdater" icon={HiUser}>
            <p>Settings</p>
          </Sidebar.Item>
          <Sidebar.Item href="#" icon={HiArrowSmRight}>
            <p>Sign Out</p>
          </Sidebar.Item>
        </Sidebar.ItemGroup>
      </Sidebar.Items>
    </Sidebar>
  );
}
