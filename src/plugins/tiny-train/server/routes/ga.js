"use strict";

/**
 *  router
 */

module.exports = {
  type: "admin",
  routes: [
    {
      method: "GET",
      path: "/ga",
      handler: "ga.find",
      config: {
        policies: [],
        auth: false,
      },
    },
  ],
};
