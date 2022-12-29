"use strict";

module.exports = ({ strapi }) => ({
  async create(data) {
    return await strapi.entityService.create("plugin::tiny-train.cthoadon", {
      data,
    });
  },
});
