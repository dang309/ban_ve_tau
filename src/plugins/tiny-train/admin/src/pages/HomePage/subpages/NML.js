import React, { memo } from "react";

import { Grid, GridItem, Tooltip, Typography } from "@strapi/design-system";
import { Box } from "@strapi/design-system/Box";
import SeatItem from "./SeatItem";

const NML = (props) => {
  const { coach, selectedSeats, boughtTickets, handleSelectSeat } = props;

  return (
    <Grid gridCols={16} gap={2}>
      {new Array(coach.MaTOA.SoLuongGhe / 4).fill(0).map((_, row) => (
        <GridItem key={row} col={1}>
          {new Array(coach.MaTOA.SoLuongGhe / 16).fill(0).map((_, col) => {
            const seatNo = col + 1 + row * 4;

            return (
              <SeatItem
                seatNo={seatNo}
                coach={coach}
                handleSelectSeat={handleSelectSeat}
                selectedSeats={selectedSeats}
                boughtTickets={boughtTickets}
              />
            );
          })}
        </GridItem>
      ))}
    </Grid>
  );
};

export default memo(NML);
