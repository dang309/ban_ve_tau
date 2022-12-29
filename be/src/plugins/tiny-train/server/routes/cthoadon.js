"use strict";

/**
 *  router
 */

module.exports = {
  type: "admin",
  routes: [
    {
      method: "POST",
      path: "/cthoadon/create",
      handler: "cthoadon.create",
      config: {
        policies: [],
        auth: false,
      },
    },
  ],
};
