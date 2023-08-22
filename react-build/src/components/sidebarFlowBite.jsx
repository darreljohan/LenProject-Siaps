import { Sidebar, Card } from 'flowbite-react';
import { HiArrowSmRight, HiChartPie, HiInbox, HiShoppingBag, HiTable, HiUser, HiViewBoards } from 'react-icons/hi';

export default function SidebarDefault(){
    return(
        <Sidebar aria-label="Default sidebar example">
        <Sidebar.Items>
        <Sidebar.Logo
        href="#"
        img="./logo1.png  "
        imgAlt="Logo Siap"
      >
        <p>
          SIAPS
        </p>
      </Sidebar.Logo>
      <Card className="max-w-sm"href="#">
        <img alt="name" src="https://flowbite.com/docs/images/carousel/carousel-2.svg" className="object-none w-36 h-25 rounded-full custom-position" />
        <h5 className="text-2xl font-bold tracking-tight text-gray-900 dark:text-white">
          <p>
            Darrel Johan
          </p>
        </h5>
        <p>Admin </p>

      </Card>
          <Sidebar.ItemGroup>
            <Sidebar.Item
              href="/dashboard"
              icon={HiChartPie}
            >
              <p>
                Dashboard
              </p>
            </Sidebar.Item>
                      <Sidebar.Collapse
            icon={HiShoppingBag}
            label="Tabel Aset"
          >
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
            <Sidebar.Item
              href="/updateSpreadsheet"
              icon={HiInbox}
            >
              <p>
                Update via Spreadsheet
              </p>
            </Sidebar.Item>
            <Sidebar.Item
              href="/autoUpdater"
              icon={HiUser}
            >
              <p>
                Auto Updater
              </p>
            </Sidebar.Item>
            <Sidebar.Item
              href="#"
              icon={HiShoppingBag}
            >
              <p>
                Diagram
              </p>
            </Sidebar.Item>
            <Sidebar.Item
              href="#"
              icon={HiInbox}
            >
              <p>
                Mailbox
              </p>
            </Sidebar.Item>
            <Sidebar.Item
              href="#"
              icon={HiArrowSmRight}
            >
              <p>
                Sign Out
              </p>
            </Sidebar.Item>
          </Sidebar.ItemGroup>
        </Sidebar.Items>
      </Sidebar>
    )
}