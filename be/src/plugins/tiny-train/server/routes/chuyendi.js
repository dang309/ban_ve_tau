"use strict";

/**
 *  router
 */

module.exports = {
  type: "admin",
  routes: [
    {
      method: "GET",
      path: "/chuyendi",
      handler: "chuyendi.find",
      config: {
        policies: [],
        auth: false,
      },
    },
  ],
};
