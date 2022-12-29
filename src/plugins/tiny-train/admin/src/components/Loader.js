import React from "react";

import { Box, Loader } from "@strapi/design-system";

const CustomLoader = (props) => {
  const { isLoading } = props;
  return (
    <>
      {isLoading && (
        <Box
          style={{
            position: "fixed",
            top: 0,
            left: 0,

            zIndex: 99999,

            display: "flex",
            alignItems: "center",
            justifyContent: "center",

            height: "100%",
            width: "100%",

            background: "rgba(0,0,0,0.4)",
          }}
        >
          <Loader />
        </Box>
      )}
    </>
  );
};

export default CustomLoader;
