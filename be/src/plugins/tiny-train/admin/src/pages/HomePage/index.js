/*
 *
 * HomePage
 *
 */

import React, { useState, useEffect } from "react";
// import PropTypes from 'prop-types';
import pluginId from "../../pluginId";
import KHACHHANG from "../../api/khachhang";

import { Box } from "@strapi/design-system";
import GA from "../../api/ga";

import SearchTrip from "./subpages/SearchTrip";
import Trip from "./subpages/Trip";
import CHUYENDI from "../../api/chuyendi";
import TOATAU from "../../api/toatau";

const HomePage = () => {
  const [stations, setStations] = useState([]);
  const [trips, setTrips] = useState([]);
  const [fromStation, setFromStation] = useState("");
  const [toStation, setToStation] = useState("");
  const [startDate, setStartDate] = useState();
  const [pageIndex, setPageIndex] = useState(["search"]);

  useEffect(() => {
    GA.layDanhSachGa().then((res) => {
      if (res.status === 200) {
        const stations = res.data;
        setStations(stations);
      }
    });
  }, []);

  const getTrips = () => {
    var month = startDate.getMonth(); //months from 1-12
    var day = startDate.getDate();
    var year = startDate.getFullYear();

    CHUYENDI.layDanhSachChuyenDi(
      fromStation,
      toStation,
      new Date(Date.UTC(year, month, day))
    ).then((res) => {
      if (res.status === 200) {
        let trips = res.data;
        if (trips && trips.length > 0) {
          TOATAU.layDanhSachToaTau().then((_res) => {
            if (_res.status === 200) {
              let allCoaches = _res.data;
              if (allCoaches && allCoaches.length > 0) {
                trips = trips.map((trip) => {
                  let coaches = allCoaches.filter(
                    (coach) => coach.MaTAU.MaTAU === trip.MaTAU.MaTAU
                  );

                  return {
                    ...trip,
                    MaTAU: {
                      ...trip.MaTAU,
                      toa: coaches,
                    },
                  };
                });
                setTrips(trips);
                setPageIndex((prev) => [...prev, "trip"]);
              }
            }
          });
        }
      }
    });
  };

  const handleSearchTrips = () => {
    if (!fromStation.length || !toStation.length || !startDate) return;
    getTrips();
  };

  const currentPage = pageIndex[pageIndex.length - 1];

  return (
    <Box padding={4} style={{ width: "100%" }} class="homepage">
      {currentPage === "search" && (
        <SearchTrip
          stations={stations}
          fromStation={fromStation}
          setFromStation={setFromStation}
          toStation={toStation}
          setToStation={setToStation}
          startDate={startDate}
          setStartDate={setStartDate}
          handleSearchTrips={handleSearchTrips}
        />
      )}

      {currentPage === "trip" && (
        <Trip
          trips={trips}
          fromStation={fromStation}
          toStation={toStation}
          startDate={startDate}
        />
      )}
    </Box>
  );
};

export default HomePage;
