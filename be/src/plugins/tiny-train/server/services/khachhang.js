"use strict";

module.exports = ({ strapi }) => ({
  async find(query) {
    return await strapi.entityService.findMany(
      "plugin::tiny-train.khachhang",
      query
    );
  },

  async create(data) {
    return await strapi.entityService.create("plugin::tiny-train.khachhang", {
      data,
    });
  },
});
