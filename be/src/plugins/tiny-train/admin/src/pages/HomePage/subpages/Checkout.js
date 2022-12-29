import React, { useState, useEffect } from "react";

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
  Box,
  Combobox,
  ComboboxOption,
} from "@strapi/design-system";
import KHACHHANG from "../../../api/khachhang";
import CustomerPicking from "./CustomerPicking";
import PHIEUDATVE from "../../../api/phieudatve";
import CustomLoader from "../../../components/Loader";

import { ReactNoti, notify, POSITION } from "react-noti";
import HOADON from "../../../api/hoadon";
import CTHOADON from "../../../api/cthoadon";

const Checkout = (props) => {
  const {
    isVisible,
    setIsVisible,
    selectedSeats,
    setSelectedSeats,
    setBoughtTickets,
    trips,
  } = props;
  const [customers, setCustomers] = useState();
  const [isLoading, setIsLoading] = useState(false);

  const handleChangeCustomer = (seatId, cus) => {
    let idx = selectedSeats.findIndex((obj) => obj.id === seatId);
    if (idx > -1) {
      let temp = [...selectedSeats];
      temp[idx].nationalityId = cus.CCCD;
      setSelectedSeats(temp);
    }
  };

  const getCurrentCus = (cusId) => {
    if (!customers) return;
    return customers.filter((c) => c.MaKH === cusId)[0];
  };

  const handleCheckout = async () => {
    let tickets = selectedSeats.map((seat) => ({
      MaCHUYENDI: seat.trip.id,
      MaTOA: seat.coach.id,
      MaKH: seat.cusId,
      PhuPhi: seat.extraFee,
      BaoHiem: seat.insuranceFee,
      DonGia: seat.price,
      SoThuTuGhe: seat.seat.no,
    }));
    let temp = [];
    setIsLoading(true);
    for (let i = 0; i < tickets.length; i++) {
      const res = await PHIEUDATVE.themPhieuDatVe(tickets[i]);
      if (res.status === 200) {
        temp.push(res.data.MaPDV);
      }
    }

    let sum = tickets.reduce(
      (acc, item) => acc + item.DonGia + item.BaoHiem + item.PhuPhi,
      0
    );

    const bill = {
      MaNV: JSON.parse(localStorage.getItem("userInfo")).id,
      TongTien: sum,
    };

    const res2 = await HOADON.themHoaDon(bill);

    if (res2.status === 200) {
      const billDetail = temp.map((obj) => ({
        MaHD: parseInt(res2.data.MaHD),
        MaPDV: parseInt(obj),
      }));

      for (let i = 0; i < billDetail.length; i++) {
        await CTHOADON.themCTHoaDon(billDetail[i]);
      }
    }

    setIsLoading(false);
    setIsVisible(false);
    setSelectedSeats([]);
    PHIEUDATVE.layDanhSachPDV(trips[0].MACHUYENDI).then((res) => {
      if (res.status === 200) {
        setBoughtTickets(res.data);
      }
    });
    notify.success("Thành công!");
  };

  useEffect(() => {
    KHACHHANG.layDanhSachKhachHang().then((res) => {
      if (res.status === 200) {
        console.log(res.data);
        setCustomers(res.data);
      }
    });
  }, []);

  return (
    <>
      {isVisible && (
        <ModalLayout
          onClose={() => setIsVisible(false)}
          labelledBy="title"
          style={{ width: "88vw" }}
        >
          <ModalHeader>
            <Typography
              fontWeight="bold"
              textColor="neutral800"
              as="h2"
              id="title"
            >
              Thanh toán
            </Typography>
          </ModalHeader>
          <ModalBody>
            <Table colCount={8} rowCount={selectedSeats.length}>
              <Thead>
                <Tr>
                  <Th>
                    <Typography variant="sigma">CCCD/Họ và tên</Typography>
                  </Th>
                  <Th>
                    <Typography variant="sigma">Thông tin chỗ</Typography>
                  </Th>
                  <Th>
                    <Typography variant="sigma">Giá vé</Typography>
                  </Th>
                  <Th>
                    <Typography variant="sigma">Giảm đối tượng</Typography>
                  </Th>
                  <Th>
                    <Typography variant="sigma">Khuyến mãi</Typography>
                  </Th>
                  <Th>
                    <Typography variant="sigma">Phụ phí</Typography>
                  </Th>
                  <Th>
                    <Typography variant="sigma">Bảo hiểm</Typography>
                  </Th>
                  <Th>
                    <Typography variant="sigma">Thành tiền (VNĐ)</Typography>
                  </Th>

                  <Th />
                </Tr>
              </Thead>
              <Tbody>
                {selectedSeats &&
                  selectedSeats.map((seat) => {
                    return (
                      <Tr key={seat.id}>
                        <Td>
                          {seat?.cusId ? (
                            <Typography>
                              {getCurrentCus(seat?.cusId).CCCD +
                                "/" +
                                getCurrentCus(seat?.cusId).HoDem +
                                " " +
                                getCurrentCus(seat?.cusId).Ten}
                            </Typography>
                          ) : (
                            <CustomerPicking
                              customers={customers}
                              setCustomers={setCustomers}
                              seatId={seat.id}
                              selectedSeats={selectedSeats}
                              setSelectedSeats={setSelectedSeats}
                            />
                          )}
                        </Td>
                        <Td>
                          <Box
                            style={{
                              display: "flex",
                              flexDirection: "column",
                              boxShadow: "none",
                            }}
                          >
                            <Typography>
                              {seat.train} {seat.trip.from}~{seat.trip.to}
                            </Typography>

                            <Typography>
                              {seat.startDay} {seat.startHour}
                            </Typography>

                            <Typography>
                              Toa {seat.coach.no} Chỗ {seat.seat.no}
                            </Typography>
                          </Box>
                        </Td>
                        <Td>
                          <Typography textColor="neutral800">
                            {new Intl.NumberFormat("vi-VN", {
                              style: "currency",
                              currency: "VND",
                            }).format(seat.price)}
                          </Typography>
                        </Td>
                        <Td>
                          <Typography textColor="neutral800">
                            {new Intl.NumberFormat("vi-VN", {
                              style: "currency",
                              currency: "VND",
                            }).format(0)}
                          </Typography>
                        </Td>
                        <Td>
                          <Typography textColor="neutral800">
                            Không có khuyến mại cho vé này
                          </Typography>
                        </Td>
                        <Td>
                          <Typography textColor="neutral800">
                            {new Intl.NumberFormat("vi-VN", {
                              style: "currency",
                              currency: "VND",
                            }).format(seat.extraFee)}
                          </Typography>
                        </Td>
                        <Td>
                          <Typography textColor="neutral800">
                            {new Intl.NumberFormat("vi-VN", {
                              style: "currency",
                              currency: "VND",
                            }).format(seat.insuranceFee)}
                          </Typography>
                        </Td>

                        <Td>
                          <Typography textColor="neutral800">
                            {new Intl.NumberFormat("vi-VN", {
                              style: "currency",
                              currency: "VND",
                            }).format(
                              seat.price + seat.insuranceFee + seat.extraFee
                            )}
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
                <Button onClick={handleCheckout}>In vé</Button>
                <Button onClick={handleCheckout}>Xuất hóa đơn</Button>
              </>
            }
          />
        </ModalLayout>
      )}

      <CustomLoader isLoading={isLoading} />

      <ReactNoti position={POSITION.TOP_CENTER} timeOut={1000} />
    </>
  );
};

export default Checkout;
