import React from "react";

import {
  Box,
  Grid,
  GridItem,
  DatePicker,
  Button,
  Combobox,
  ComboboxOption,
  BaseHeaderLayout,
} from "@strapi/design-system";

const SearchTrip = (props) => {
  const {
    stations,
    fromStation,
    setFromStation,
    toStation,
    setToStation,
    startDate,
    setStartDate,
    handleSearchTrips,
  } = props;
  return (
    <Box>
      <Box
        style={{
          height: "512px",
          width: "100%",

          display: "flex",
          alignItems: "center",
          justifyContent: "center",

          position: "relative",
        }}
      >
        <img
          src="https://storage.googleapis.com/uit-k14/001.jpg"
          alt=""
          style={{
            width: "100%",
            height: "100%",
            position: "absolute",
            top: 0,
            left: 0,
          }}
        />
        <Grid
          gap={2}
          style={{ backgroundColor: "#5454548f", borderRadius: "16px" }}
        >
          <GridItem col={6} s={12} style={{ backgroundColor: "transparent" }}>
            <Box padding={4}>
              <Combobox
                label="Ga đi"
                placeholder="Ga đi"
                value={fromStation}
                onChange={setFromStation}
              >
                {stations
                  .filter((station) => station.MaGA != toStation)
                  .map((station) => {
                    return (
                      <ComboboxOption
                        key={station.id}
                        value={station.MaGA.toString()}
                      >
                        {station.TenGa}
                      </ComboboxOption>
                    );
                  })}
              </Combobox>
            </Box>
          </GridItem>
          <GridItem col={6} s={12} style={{ backgroundColor: "transparent" }}>
            <Box padding={4}>
              <Combobox
                label="Ga đến"
                placeholder="Ga đến"
                value={toStation}
                onChange={setToStation}
              >
                {stations
                  .filter((station) => station.MaGA != fromStation)
                  .map((station) => {
                    return (
                      <ComboboxOption
                        key={station.id}
                        value={station.MaGA.toString()}
                      >
                        {station.TenGa}
                      </ComboboxOption>
                    );
                  })}
              </Combobox>
            </Box>
          </GridItem>
          <GridItem col={6} s={12}>
            <Box padding={4}>
              <DatePicker
                onChange={setStartDate}
                selectedDate={startDate}
                label="Ngày đi"
                name="startDate"
                selectedDateLabel={(formattedDate) =>
                  `Date picker, current is ${formattedDate}`
                }
              />
            </Box>
          </GridItem>
          <GridItem col={6} s={12} style={{ height: "100%" }}>
            <Box
              padding={4}
              style={{
                display: "flex",
                alignItems: "flex-end",
                justifyContent: "flex-start",
                height: "100%",
              }}
            >
              <Button onClick={handleSearchTrips}>Tìm kiếm</Button>
            </Box>
          </GridItem>
        </Grid>
      </Box>
    </Box>
  );
};

export default SearchTrip;
