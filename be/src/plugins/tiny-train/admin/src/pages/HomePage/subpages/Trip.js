import React, { useState, useEffect } from "react";

import {
  Typography,
  Box,
  BaseHeaderLayout,
  RadioGroup,
  Radio,
  TwoColsLayout,
  IconButton,
  Button,
  Link,
} from "@strapi/design-system";

import { Trash, ArrowLeft } from "@strapi/icons";

import Slider from "react-slick";
import Seat from "./Seat";

import SimpleBar from "simplebar-react";
import Checkout from "./Checkout";
import PHIEUDATVE from "../../../api/phieudatve";

const settings = {
  dots: false,
  infinite: false,
  speed: 500,
  slidesToShow: 1,
  slidesToScroll: 1,
  draggable: false,
};

const Trip = (props) => {
  const { trips, fromStation, toStation, startDate, pageIndex, setPageIndex } =
    props;

  const [selectedTrain, setSelectedTrain] = useState();
  const [selectedSeats, setSelectedSeats] = useState();
  const [coaches, setCoaches] = useState();
  const [boughtTickets, setBoughtTickets] = useState();
  const [showCheckoutDialog, setShowCheckoutDialog] = useState(false);

  const getCoachByTrain = (trainId) => {
    const coaches = trips
      .filter((trip) => {
        return trip.MaTAU.MaTAU == trainId;
      })
      .map((trip) => trip.MaTAU.toa)[0];
    setCoaches(coaches);
  };

  const handleRemoveSeat = (seat) => {
    let idx = selectedSeats.findIndex((obj) => obj.id === seat.id);
    if (idx > -1) {
      let temp = [...selectedSeats];
      temp.splice(idx, 1);
      setSelectedSeats(temp);
    }
  };

  useEffect(() => {
    const firstTrain = trips[0].MaTAU.MaTAU;
    setSelectedTrain(firstTrain.toString());
  }, [trips]);

  useEffect(() => {
    getCoachByTrain(selectedTrain);
  }, [selectedTrain]);

  useEffect(() => {
    PHIEUDATVE.layDanhSachPDV(trips[0].MACHUYENDI).then((res) => {
      if (res.status === 200) {
        setBoughtTickets(res.data);
      }
    });
  }, []);

  return (
    <Box>
      <BaseHeaderLayout
        title="Đặt vé"
        as="h1"
        navigationAction={
          <Link
            startIcon={<ArrowLeft />}
            to="#"
            onClick={() => {
              let temp = [...pageIndex];
              temp.pop();
              setPageIndex(temp);
            }}
          >
            Quay lại
          </Link>
        }
      />
      <TwoColsLayout
        startCol={
          <Box style={{ paddingTop: "16px", paddingBottom: "16px" }}>
            {trips && trips.length > 0 && (
              <Box
                style={{
                  display: "flex",
                  justifyContent: "center",
                  alignItems: "center",

                  marginBottom: "8px",
                }}
              >
                <Typography style={{ fontSize: "24px", fontWeight: "bold" }}>
                  {trips[0].GaDi.TenGa} ~ {trips[0].GaDen.TenGa}
                </Typography>
              </Box>
            )}

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
                            <Typography>
                              {trip.NgayDi}{" "}
                              {trip.GioDi.split(":")[0] +
                                ":" +
                                trip.GioDi.split(":")[1]}
                            </Typography>
                          </Box>

                          <Box
                            style={{
                              display: "flex",
                              alignItems: "center",
                              justifyContent: "space-between",
                            }}
                          >
                            <Typography>TG đến</Typography>
                            <Typography>
                              {trip.NgayDen}{" "}
                              {trip.GioDen.split(":")[0] +
                                ":" +
                                trip.GioDen.split(":")[1]}
                            </Typography>
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
                      boughtTickets={boughtTickets}
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

            <SimpleBar style={{ maxHeight: 512 }}>
              <Box
                style={{
                  display: "flex",
                  flexDirection: "column",
                  gap: "8px",
                }}
              >
                {selectedSeats &&
                  selectedSeats.map((seat) => {
                    return (
                      <Box
                        key={seat.id}
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
                            {seat.train} {seat.trip.from}~{seat.trip.to}
                          </Typography>

                          <Typography>
                            {seat.startDay} {seat.startHour}
                          </Typography>

                          <Typography>
                            Toa {seat.coach.no} Chỗ {seat.seat.no}
                          </Typography>
                        </Box>
                        <IconButton
                          onClick={() => handleRemoveSeat(seat)}
                          icon={<Trash />}
                        />
                      </Box>
                    );
                  })}
              </Box>
            </SimpleBar>

            <Box
              style={{
                marginTop: "16px",
                display: "flex",
                justifyContent: "center",
              }}
            >
              <Button
                onClick={() => setShowCheckoutDialog(true)}
                disabled={
                  !selectedSeats ||
                  (selectedSeats && selectedSeats.length === 0)
                }
              >
                Thanh toán
              </Button>
            </Box>

            <Checkout
              isVisible={showCheckoutDialog}
              setIsVisible={setShowCheckoutDialog}
              selectedSeats={selectedSeats}
              setSelectedSeats={setSelectedSeats}
              setBoughtTickets={setBoughtTickets}
              trips={trips}
            />
          </Box>
        }
      />
    </Box>
  );
};

export default Trip;
