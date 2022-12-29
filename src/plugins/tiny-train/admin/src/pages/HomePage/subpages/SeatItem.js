import React from "react";

import { Box, Tooltip, Typography } from "@strapi/design-system";

const SeatItem = (props) => {
  const { seatNo, coach, handleSelectSeat, selectedSeats, boughtTickets } =
    props;

  const isInSelectedSeats =
    selectedSeats &&
    selectedSeats.some(
      (obj) =>
        obj.train == coach.MaTAU.TenTau &&
        obj.coach.id == coach.MaTOA.MaTOA &&
        obj.seat.no == seatNo
    );

  const isReversedTickets =
    boughtTickets &&
    boughtTickets.some(
      (obj) =>
        obj.MaCHUYENDI.MaTAU.TenTau == coach.MaTAU.TenTau &&
        obj.MaTOA.MaTOA == coach.MaTOA.MaTOA &&
        obj.SoThuTuGhe == seatNo &&
        obj.TrangThai
    );

  return (
    <Tooltip
      description={new Intl.NumberFormat("vi-VN", {
        style: "currency",
        currency: "VND",
      }).format(coach.Gia)}
    >
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

          backgroundColor: isInSelectedSeats
            ? "green"
            : isReversedTickets
            ? "red"
            : "transparent",
        }}
        onClick={() => handleSelectSeat(seatNo, isReversedTickets)}
      >
        <Typography>{seatNo}</Typography>
      </Box>
    </Tooltip>
  );
};

export default SeatItem;
