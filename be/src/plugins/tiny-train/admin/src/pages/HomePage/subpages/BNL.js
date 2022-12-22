import React, { memo } from "react";

import { Grid, GridItem, Box, Typography } from "@strapi/design-system";

const BNL = (props) => {
  const { coach, handleSelectSeat } = props;
  return (
    <Grid gridCols={7}>
      {new Array(coach.MaTOA.SoLuongGhe / 6).fill(0).map((_, row) => (
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
            <Grid gap={4} gridCols={2}>
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
                    }}
                    onClick={() => handleSelectSeat((row + 1) * 6 - col)}
                  >
                    <Typography>{(row + 1) * 6 - col}</Typography>
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

export default memo(BNL);
