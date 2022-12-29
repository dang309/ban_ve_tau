"use strict";

/**
 *  router
 */

module.exports = {
  type: "admin",
  routes: [
    {
      method: "POST",
      path: "/hoadon/create",
      handler: "hoadon.create",
      config: {
        policies: [],
        auth: false,
      },
    },
  ],
};
