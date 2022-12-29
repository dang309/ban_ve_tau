import React, { memo } from "react";

import { Typography, Box } from "@strapi/design-system";

import NML from "./NML";
import ANL from "./ANL";
import BNL from "./BNL";

const Seat = (props) => {
  const {
    trips,
    boughtTickets,
    coach,
    selectedTrain,
    selectedSeats,
    setSelectedSeats,
  } = props;

  const handleSelectSeat = (seatNo, isReversedTickets) => {
    if (isReversedTickets) return;
    const trainName = trips.filter(
      (train) =>
        parseInt(train.MaTAU.MaTAU) === parseInt(parseInt(selectedTrain))
    )[0].MaTAU.TenTau;

    const tripId = trips[0].MACHUYENDI;
    const from = trips[0].GaDi.TenGa;
    const to = trips[0].GaDen.TenGa;
    const startDay = trips[0].NgayDi;
    const startHour = trips[0].GioDi;

    const newSeat = {
      id: `${coach.MaTOA.LoaiToa}${seatNo}`,
      train: trainName,
      coach: {
        id: coach.MaTOA.MaTOA,
        no: coach.SoThuTu,
      },
      seat: {
        id: coach.MaGHE.MaGHE,
        no: seatNo,
      },
      trip: {
        id: tripId,
        from,
        to,
      },
      startDay,
      startHour,
      price: coach.Gia,
      extraFee: 0,
      insuranceFee: 1000,
    };
    let temp = [];
    if (selectedSeats && selectedSeats.length > 0) {
      temp = [...selectedSeats];
    }
    if (temp.some((obj) => obj.id === newSeat.id)) return;
    temp.push(newSeat);
    setSelectedSeats(temp);
  };

  const getCoachName = (coachType) => {
    switch (coachType) {
      case "NML":
        return "Ngồi mềm điều hòa";
      case "ANL":
        return "Giường nằm khoang 4 điều hòa";
      case "BNL":
        return "Giường nằm khoang 6 điều hòa";
      default:
        break;
    }
  };

  return (
    <Box>
      <Box
        style={{
          display: "flex",
          justifyContent: "center",
          marginBottom: "16px",
        }}
      >
        <Typography style={{ fontSize: "24px", fontWeight: "bold" }}>
          Toa số {coach.SoThuTu}: {getCoachName(coach.MaTOA.LoaiToa)}
        </Typography>
      </Box>
      {coach.MaTOA.LoaiToa === "NML" && (
        <NML
          coach={coach}
          selectedSeats={selectedSeats}
          boughtTickets={boughtTickets}
          handleSelectSeat={handleSelectSeat}
        />
      )}
      {coach.MaTOA.LoaiToa === "ANL" && (
        <ANL coach={coach} handleSelectSeat={handleSelectSeat} />
      )}
      {coach.MaTOA.LoaiToa === "BNL" && (
        <BNL coach={coach} handleSelectSeat={handleSelectSeat} />
      )}

      <Box
        style={{
          display: "flex",
          justifyContent: "center",
          marginTop: "24px",
          gap: "16px",
        }}
      >
        <Box style={{ display: "flex", alignItems: "center", gap: "8px" }}>
          <Box
            style={{
              padding: "8px",

              border: "1px solid #c4c4c4",
              borderRadius: "16px",
              cursor: "pointer",

              width: "54px",
              height: "54px",

              display: "flex",
              alignItems: "center",
              justifyContent: "center",

              marginBottom: "8px",
            }}
          />
          <Typography>Ghế trống</Typography>
        </Box>

        <Box style={{ display: "flex", alignItems: "center", gap: "8px" }}>
          <Box
            style={{
              padding: "8px",

              border: "1px solid #c4c4c4",
              borderRadius: "16px",
              cursor: "pointer",

              width: "54px",
              height: "54px",

              display: "flex",
              alignItems: "center",
              justifyContent: "center",

              marginBottom: "8px",

              backgroundColor: "red",
            }}
          />
          <Typography>Đã đặt</Typography>
        </Box>

        <Box style={{ display: "flex", alignItems: "center", gap: "8px" }}>
          <Box
            style={{
              padding: "8px",

              border: "1px solid #c4c4c4",
              borderRadius: "16px",
              cursor: "pointer",

              width: "54px",
              height: "54px",

              display: "flex",
              alignItems: "center",
              justifyContent: "center",

              marginBottom: "8px",

              backgroundColor: "green",
            }}
          />
          <Typography>Đang chọn</Typography>
        </Box>
      </Box>
    </Box>
  );
};

export default memo(Seat);
