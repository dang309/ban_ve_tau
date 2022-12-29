"use strict";

module.exports = ({ strapi }) => ({
  async find() {
    return await strapi.entityService.findMany("admin::user");
  },
});
