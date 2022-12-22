"use strict";

/**
 *  router
 */

module.exports = {
  type: "admin",
  routes: [
    {
      method: "GET",
      path: "/khachhang",
      handler: "khachhang.find",
      config: {
        policies: [],
        auth: false,
      },
    },
  ],
};
