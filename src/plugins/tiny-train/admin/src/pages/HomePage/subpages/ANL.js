import React, { memo } from "react";

import { Box, Grid, GridItem, Typography } from "@strapi/design-system";

const ANL = (props) => {
  const { coach, handleSelectSeat } = props;
  return (
    <Grid gridCols={7} gap={1}>
      {new Array(coach.MaTOA.SoLuongGhe / 4).fill(0).map((_, row) => (
        <GridItem key={row} col={1}>
          <Box
            style={{
              display: "flex",
              flexDirection: "column",
              justifyContent: "center",
              alignItems: "center",

              gap: "8px",
            }}
          >
            <Typography>Khoang {row + 1}</Typography>
            <Grid gridCols={2} gap={2} style={{ flexDirection: "row-reverse" }}>
              {new Array(coach.MaTOA.SoLuongGhe / 7).fill(0).map((_, col) => (
                <GridItem key={row + col} col={1}>
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
                    }}
                    onClick={() => handleSelectSeat((row + 1) * 4 - col)}
                  >
                    <Typography>{(row + 1) * 4 - col}</Typography>
                  </Box>
                </GridItem>
              ))}
            </Grid>
          </Box>
        </GridItem>
      ))}
    </Grid>
  );
};

export default memo(ANL);
