import React, { memo } from "react";

import { Grid, GridItem, Tooltip, Typography } from "@strapi/design-system";
import { Box } from "@strapi/design-system/Box";
import NML from "./NML";
import ANL from "./ANL";
import BNL from "./BNL";

const Seat = (props) => {
  const { trips, coach, selectedTrain, selectedSeats, setSelectedSeats } =
    props;

  const handleSelectSeat = (seatNo) => {
    const trainName = trips.filter(
      (train) =>
        parseInt(train.MaTAU.MaTAU) === parseInt(parseInt(selectedTrain))
    )[0].MaTAU.TenTau;

    const from = trips[0].GaDi.TenGa;
    const to = trips[0].GaDen.TenGa;
    const startDay = trips[0].NgayDi;
    const startHour = trips[0].GioDi;

    const newSeat = {
      train: trainName,
      coachNo: coach.SoThuTu,
      seatNo,
      from,
      to,
      startDay,
      startHour,
    };
    let temp = [];
    if (selectedSeats && selectedSeats.length > 0) {
      temp = [...selectedSeats];
    }
    if (
      temp.some(
        (obj) =>
          `${obj.coachNo}-${obj.seatNo}` ===
          `${newSeat.coachNo}-${newSeat.seatNo}`
      )
    )
      return;
    temp.push(newSeat);
    console.log({ newSeat });
    setSelectedSeats(temp);
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
          Toa số {coach.SoThuTu}: {coach.MaTOA.TenToa}
        </Typography>
      </Box>
      {coach.MaTOA.LoaiToa === "NML" && (
        <NML coach={coach} handleSelectSeat={handleSelectSeat} />
      )}
      {coach.MaTOA.LoaiToa === "ANL" && (
        <ANL coach={coach} handleSelectSeat={handleSelectSeat} />
      )}
      {coach.MaTOA.LoaiToa === "BNL" && (
        <BNL coach={coach} handleSelectSeat={handleSelectSeat} />
      )}
    </Box>
  );
};

export default memo(Seat);
