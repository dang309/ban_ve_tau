import React, { useState, useEffect } from "react";

import {
  Box,
  Button,
  SearchForm,
  Searchbar,
  Typography,
  Table,
  Thead,
  Tbody,
  Tr,
  Td,
  Th,
} from "@strapi/design-system";

import PHIEUDATVE from "../../../api/phieudatve";

const TicketTrading = (props) => {
  const [ticketId, setTicketId] = useState("");
  const [selectedTicket, setSelectedTicket] = useState();
  const handleSearchTicket = (e) => {
    if (e.keyCode === 13) {
      e.preventDefault();
      PHIEUDATVE.timVe(ticketId).then((res) => {
        if (res.status === 200) {
          console.log({ res });
          setSelectedTicket(res.data);
        }
      });
    }
  };

  return (
    <Box
      style={{
        display: "flex",
        flexDirection: "column",
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      <SearchForm style={{ maxWidth: "512px", marginBottom: "16px" }}>
        <Searchbar
          name="searchbar"
          onClear={() => setTicketId("")}
          value={ticketId}
          onChange={(e) => setTicketId(e.target.value)}
          placeholder="Nhập mã vé"
          autoComplete="off"
          onKeyDown={handleSearchTicket}
        >
          Tìm vé
        </Searchbar>
      </SearchForm>

      {selectedTicket && (
        <Table colCount={5} rowCount={1}>
          <Thead>
            <Tr>
              <Th>
                <Typography variant="sigma">Mã vé</Typography>
              </Th>
              <Th>
                <Typography variant="sigma">Ga đi</Typography>
              </Th>
              <Th>
                <Typography variant="sigma">Ga đến</Typography>
              </Th>
              <Th>
                <Typography variant="sigma">Thời gian đi</Typography>
              </Th>

              <Th>
                <Typography variant="sigma">Thời gian đến</Typography>
              </Th>
              <Th />
              <Th />
            </Tr>
          </Thead>
          <Tbody>
            <Tr>
              <Td>
                <Typography>{selectedTicket.MaPDV}</Typography>
              </Td>
              <Td>
                <Typography>{selectedTicket.MaCHUYENDI.GaDi.TenGa}</Typography>
              </Td>
              <Td>
                <Typography>{selectedTicket.MaCHUYENDI.GaDen.TenGa}</Typography>
              </Td>

              <Td>
                <Typography>
                  {selectedTicket.MaCHUYENDI.NgayDi}{" "}
                  {selectedTicket.MaCHUYENDI.GioDi}
                </Typography>
              </Td>

              <Td>
                <Typography>
                  {selectedTicket.MaCHUYENDI.NgayDen}{" "}
                  {selectedTicket.MaCHUYENDI.GioDen}
                </Typography>
              </Td>

              <Td>
                <Box
                  style={{ display: "flex", alignItems: "center", gap: "8px" }}
                >
                  <Button>Đổi vé</Button>
                  <Button>Trả vé</Button>
                </Box>
              </Td>
            </Tr>
          </Tbody>
        </Table>
      )}
    </Box>
  );
};

export default TicketTrading;
