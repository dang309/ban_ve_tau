import React, { useState } from "react";

import {
  ModalLayout,
  ModalBody,
  ModalHeader,
  ModalFooter,
  Typography,
  Button,
  Table,
  Thead,
  Tbody,
  Tr,
  Td,
  Th,
  Radio,
} from "@strapi/design-system";
import CustomerAdding from "./CustomerAdding";

const CustomerPicking = (props) => {
  const { customers, setCustomers, seatId, selectedSeats, setSelectedSeats } =
    props;
  const [isVisible, setIsVisible] = useState(false);
  const [selectedCus, setSelectedCus] = useState();

  const handleSelectCus = () => {
    if (!selectedCus) return;
    let idx = selectedSeats.findIndex((obj) => obj.id === seatId);
    if (idx > -1) {
      let temp = [...selectedSeats];
      temp[idx].cusId = parseInt(selectedCus);
      console.log({ temp });
      setSelectedSeats(temp);
    }
    setIsVisible(false);
  };

  return (
    <>
      <Button variant="secondary" onClick={() => setIsVisible((prev) => !prev)}>
        Chọn khách hàng
      </Button>

      {isVisible && (
        <ModalLayout
          onClose={() => {
            setIsVisible(false);
          }}
          labelledBy="title"
        >
          <ModalHeader>
            <Typography
              fontWeight="bold"
              textColor="neutral800"
              as="h2"
              id="title"
            >
              Chọn khách hàng
            </Typography>
          </ModalHeader>
          <ModalBody>
            <Table colCount={8} rowCount={customers.length}>
              <Thead>
                <Tr>
                  <Th />
                  <Th>
                    <Typography variant="sigma">CCCD</Typography>
                  </Th>
                  <Th>
                    <Typography variant="sigma">Họ đệm</Typography>
                  </Th>
                  <Th>
                    <Typography variant="sigma">Tên</Typography>
                  </Th>
                  <Th>
                    <Typography variant="sigma">Đối tượng</Typography>
                  </Th>

                  <Th />
                </Tr>
              </Thead>
              <Tbody>
                {customers &&
                  customers.map((cus) => {
                    return (
                      <Tr
                        key={cus.MaKH}
                        onClick={() => setSelectedCus(cus.MaKH)}
                      >
                        <Td>
                          <Radio checked={selectedCus === cus.MaKH} />
                        </Td>
                        <Td>
                          <Typography>{cus.CCCD}</Typography>
                        </Td>
                        <Td>
                          <Typography>{cus.HoDem}</Typography>
                        </Td>

                        <Td>
                          <Typography>{cus.Ten}</Typography>
                        </Td>

                        <Td>
                          <Typography>
                            {cus.DoiTuong === "A"
                              ? "Người lớn"
                              : cus.DoiTuong === "C"
                              ? "Trẻ em"
                              : "Người cao tuổi"}
                          </Typography>
                        </Td>
                      </Tr>
                    );
                  })}
              </Tbody>
            </Table>
          </ModalBody>
          <ModalFooter
            endActions={
              <>
                <CustomerAdding setCustomers={setCustomers} />
                <Button onClick={handleSelectCus}>Chọn</Button>
              </>
            }
          />
        </ModalLayout>
      )}
    </>
  );
};

export default CustomerPicking;
