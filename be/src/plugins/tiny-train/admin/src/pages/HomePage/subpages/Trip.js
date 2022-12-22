import React, { useState, useEffect } from "react";

import {
  Typography,
  Box,
  BaseHeaderLayout,
  RadioGroup,
  Radio,
  TwoColsLayout,
  IconButton,
} from "@strapi/design-system";

import { Trash } from "@strapi/icons";

import Slider from "react-slick";
import Seat from "./Seat";

import moment from "moment";

const settings = {
  dots: false,
  infinite: false,
  speed: 500,
  slidesToShow: 1,
  slidesToScroll: 1,
  draggable: false,
};

const Trip = (props) => {
  const { trips, fromStation, toStation, startDate } = props;

  const [selectedTrain, setSelectedTrain] = useState();
  const [selectedSeats, setSelectedSeats] = useState();
  const [coaches, setCoaches] = useState();

  const getCoachByTrain = (trainId) => {
    const coaches = trips
      .filter((trip) => {
        return trip.MaTAU.MaTAU == trainId;
      })
      .map((trip) => trip.MaTAU.toa)[0];
    setCoaches(coaches);
  };

  useEffect(() => {
    const firstTrain = trips[0].MaTAU.MaTAU;
    setSelectedTrain(firstTrain.toString());
  }, [trips]);

  useEffect(() => {
    getCoachByTrain(selectedTrain);
  }, [selectedTrain]);

  return (
    <Box>
      <BaseHeaderLayout title="Đặt vé" as="h1" />
      <TwoColsLayout
        startCol={
          <Box style={{ paddingTop: "16px", paddingBottom: "16px" }}>
            <RadioGroup
              onChange={(e) => setSelectedTrain(e.target.value)}
              value={selectedTrain}
              style={{
                display: "flex",
                justifyContent: "center",
                gap: "16px",

                position: "relative",
              }}
            >
              {trips &&
                trips.map((trip) => {
                  return (
                    <Radio
                      key={trip.id}
                      value={trip.MaTAU.MaTAU.toString()}
                      className="shit"
                    >
                      <Box
                        padding={2}
                        style={{
                          minWidth: "256px",
                          border: "1px solid #ccc",
                          borderRadius: "16px",

                          cursor: "pointer",

                          "&:hover": {
                            backgroundColor: "#ccc",
                          },
                        }}
                      >
                        <Typography
                          style={{
                            textAlign: "center",
                            display: "block",
                            fontSize: "20px",
                            fontWeight: "bold",
                          }}
                        >
                          {trip.MaTAU.TenTau}
                        </Typography>

                        <Box>
                          <Box
                            style={{
                              display: "flex",
                              alignItems: "center",
                              justifyContent: "space-between",
                            }}
                          >
                            <Typography>TG đi</Typography>
                            <Typography>{trip.NgayDi}</Typography>
                          </Box>

                          <Box
                            style={{
                              display: "flex",
                              alignItems: "center",
                              justifyContent: "space-between",
                            }}
                          >
                            <Typography>TG đến</Typography>
                            <Typography>{trip.NgayDen}</Typography>
                          </Box>
                        </Box>
                      </Box>
                    </Radio>
                  );
                })}
            </RadioGroup>

            <Box
              style={{
                marginTop: "16px",
                marginLeft: "32px",
                marginRight: "32px",
              }}
            >
              <Slider {...settings}>
                {coaches &&
                  coaches.map((coach) => (
                    <Seat
                      trips={trips}
                      coach={coach}
                      from={fromStation}
                      to={toStation}
                      startDate={startDate}
                      selectedTrain={selectedTrain}
                      selectedSeats={selectedSeats}
                      setSelectedSeats={setSelectedSeats}
                    />
                  ))}
              </Slider>
            </Box>
          </Box>
        }
        endCol={
          <Box style={{ padding: "16px" }}>
            <Box style={{ marginBottom: "16px" }}>
              <Typography
                style={{
                  fontSize: "20px",
                  fontWeight: "bold",
                }}
              >
                Giỏ vé
              </Typography>
            </Box>

            <Box
              style={{ display: "flex", flexDirection: "column", gap: "8px" }}
            >
              {selectedSeats &&
                selectedSeats.map((seat) => {
                  return (
                    <Box
                      key={seat.coachNo + seat.seatNo}
                      style={{
                        display: "flex",
                        alignItems: "center",
                        justifyContent: "space-between",
                      }}
                    >
                      <Box
                        style={{
                          display: "flex",
                          flexDirection: "column",
                          boxShadow: "none",
                        }}
                      >
                        <Typography>
                          {seat.train} {seat.from}~{seat.to}
                        </Typography>

                        <Typography>
                          {seat.startDay} {seat.startHour}
                        </Typography>

                        <Typography>
                          Toa {seat.coachNo} Chỗ {seat.seatNo}
                        </Typography>
                      </Box>
                      <IconButton
                        // onClick={() => setCurrentAction("edit")}
                        icon={<Trash />}
                      />
                    </Box>
                  );
                })}
            </Box>
          </Box>
        }
      />
    </Box>
  );
};

export default Trip;
