import { Button, Modal } from "flowbite-react";
import { useEffect } from "react";
import DefaultCarousel from "./carouselFilter";
import ModalFormForRow from "./modalFormForRow";

export default function DismissableModal({ openModal, rowData, setOpenModal }) {
  useEffect(() => {
    // You can directly set the state when openModal or rowData changes
    if (openModal === "dismissible") {
      // Add any additional logic you need here
    }
  }, [openModal, rowData]);

  if (openModal !== "dismissible") {
    // If the modal should not be displayed, return null
    return null;
  }

  return (
    <>
      {console.log(rowData)}
      <Modal
        dismissible
        show={openModal === "dismissible"}
        onClose={() => setOpenModal(undefined)}
        content=""
        size={"7xl"}
      >
        <Modal.Header>{rowData.nama_asset}</Modal.Header>
        <Modal.Body className=" bg-red-400 flex-0 overflow-auto">
          <div className=" flex flex-row space-x-6">
            <div className="basis-1/2 p-5">
              <DefaultCarousel></DefaultCarousel>
            </div>
            <div className="basis-1/2 overflow-auto">
              <ModalFormForRow rowData={rowData} />
            </div>
          </div>
        </Modal.Body>
        <Modal.Footer>
          <Button onClick={() => setOpenModal(undefined)}>I accept</Button>
          <Button color="gray" onClick={() => setOpenModal(undefined)}>
            Decline
          </Button>
        </Modal.Footer>
      </Modal>
    </>
  );
}
