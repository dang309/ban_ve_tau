import React, { useState } from "react";

import {
  Box,
  Grid,
  GridItem,
  TextInput,
  Button,
  ModalLayout,
  ModalHeader,
  ModalBody,
  ModalFooter,
  Typography,
  DatePicker,
} from "@strapi/design-system";
import KHACHHANG from "../../../api/khachhang";

const CustomerAdding = (props) => {
  const { setCustomers } = props;
  const [isVisible, setIsVisible] = useState(false);
  const [customerInfo, setCustomerInfo] = useState({
    id: "",
    firstName: "",
    lastName: "",
    birthday: undefined,
  });

  const handleAddNewCustomer = () => {
    if (
      !customerInfo.firstName ||
      !customerInfo.lastName ||
      !customerInfo.id ||
      !customerInfo.birthday
    )
      return;

    const dataToSend = {
      HoDem: customerInfo.firstName,
      Ten: customerInfo.lastName,
      CCCD: customerInfo.id,
      NgaySinh: customerInfo.birthday,
    };

    KHACHHANG.themKhachHang(dataToSend).then((res) => {
      if (res.status === 200) {
        KHACHHANG.layDanhSachKhachHang().then((_res) => {
          if (_res.status === 200) {
            setCustomers(_res.data);
            setIsVisible(false);
          }
        });
      }
    });
  };

  return (
    <>
      <Button onClick={() => setIsVisible((prev) => !prev)}>
        Thêm khách hàng
      </Button>
      {isVisible && (
        <ModalLayout
          onClose={() => setIsVisible((prev) => !prev)}
          labelledBy="title"
        >
          <ModalHeader>
            <Typography
              fontWeight="bold"
              textColor="neutral800"
              as="h2"
              id="title"
            >
              Thêm khách hàng
            </Typography>
          </ModalHeader>
          <ModalBody>
            <Grid gridCols={2} gap={2}>
              <GridItem col={1}>
                <Box>
                  <TextInput
                    label="Họ đệm"
                    placeholder="Họ đệm"
                    value={customerInfo.firstName}
                    onChange={(e) =>
                      setCustomerInfo((prev) => ({
                        ...prev,
                        firstName: e.target.value,
                      }))
                    }
                  />
                </Box>
              </GridItem>

              <GridItem col={1}>
                <Box>
                  <TextInput
                    label="Tên"
                    placeholder="Tên"
                    value={customerInfo.lastName}
                    onChange={(e) =>
                      setCustomerInfo((prev) => ({
                        ...prev,
                        lastName: e.target.value,
                      }))
                    }
                  />
                </Box>
              </GridItem>

              <GridItem col={1}>
                <Box>
                  <TextInput
                    label="Căn cước công dân"
                    placeholder="Căn cước công dân"
                    value={customerInfo.id}
                    onChange={(e) =>
                      setCustomerInfo((prev) => ({
                        ...prev,
                        id: e.target.value,
                      }))
                    }
                  />
                </Box>
              </GridItem>

              <GridItem col={1}>
                <Box>
                  <DatePicker
                    onChange={(newDate) =>
                      setCustomerInfo((prev) => ({
                        ...prev,
                        birthday: newDate,
                      }))
                    }
                    selectedDate={customerInfo.birthday}
                    label="Ngày sinh"
                    name="datepicker"
                    clearLabel="Clear the datepicker"
                    onClear={() =>
                      setCustomerInfo((prev) => ({
                        ...prev,
                        birthday: undefined,
                      }))
                    }
                    selectedDateLabel={(formattedDate) =>
                      `Date picker, current is ${formattedDate}`
                    }
                  />
                </Box>
              </GridItem>
            </Grid>
          </ModalBody>
          <ModalFooter
            startActions={
              <Button
                onClick={() => setIsVisible((prev) => !prev)}
                variant="tertiary"
              >
                Hủy
              </Button>
            }
            endActions={
              <>
                <Button onClick={handleAddNewCustomer}>Thêm</Button>
              </>
            }
          />
        </ModalLayout>
      )}
    </>
  );
};

export default CustomerAdding;
