import React, { memo } from "react";

import { Grid, GridItem, Tooltip, Typography } from "@strapi/design-system";
import { Box } from "@strapi/design-system/Box";

const NML = (props) => {
  const { coach, handleSelectSeat } = props;

  return (
    <Grid gridCols={16} gap={2}>
      {new Array(coach.MaTOA.SoLuongGhe / 4).fill(0).map((_, row) => (
        <GridItem key={row} col={1}>
          {new Array(coach.MaTOA.SoLuongGhe / 16).fill(0).map((_, col) => {
            const seatNo = col + 1 + row * 4;
            return (
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
                onClick={() => handleSelectSeat(seatNo)}
              >
                <Typography>{seatNo}</Typography>
              </Box>
            );
          })}
        </GridItem>
      ))}
    </Grid>
  );
};

export default memo(NML);
