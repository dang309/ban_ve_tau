"use strict";

/**
 *  router
 */

module.exports = {
  type: "admin",
  routes: [
    {
      method: "GET",
      path: "/phieudatve",
      handler: "phieudatve.find",
      config: {
        policies: [],
        auth: false,
      },
    },
    {
      method: "POST",
      path: "/phieudatve/create",
      handler: "phieudatve.create",
      config: {
        policies: [],
        auth: false,
      },
    },
    {
      method: "GET",
      path: "/phieudatve/:id",
      handler: "phieudatve.findOne",
      config: {
        policies: [],
        auth: false,
      },
    },
  ],
};
