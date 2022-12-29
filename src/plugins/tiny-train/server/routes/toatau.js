"use strict";

/**
 *  router
 */

module.exports = {
  type: "admin",
  routes: [
    {
      method: "GET",
      path: "/toatau",
      handler: "toatau.find",
      config: {
        policies: [],
        auth: false,
      },
    },
  ],
};
