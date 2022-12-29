"use strict";

/**
 *  router
 */

module.exports = {
  type: "admin",
  routes: [
    {
      method: "GET",
      path: "/nhanvien",
      handler: "nhanvien.find",
      config: {
        policies: [],
        auth: false,
      },
    },
  ],
};
