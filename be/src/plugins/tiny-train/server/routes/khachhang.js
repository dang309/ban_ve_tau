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

    {
      method: "POST",
      path: "/khachhang/create",
      handler: "khachhang.create",
      config: {
        policies: [],
        auth: false,
      },
    },
  ],
};
