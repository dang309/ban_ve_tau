"use strict";

module.exports = ({ strapi }) => ({
  async find(query) {
    return await strapi.entityService.findMany(
      "plugin::tiny-train.phieudatve",
      {
        ...query,
        populate: {
          MaCHUYENDI: {
            populate: ["GaDi", "GaDen", "MaTAU"],
          },
          MaKH: true,
          MaKM: true,
          MaTOA: true,
        },
      }
    );
  },

  async create(data) {
    return await strapi.entityService.create("plugin::tiny-train.phieudatve", {
      data,
    });
  },

  async findOne(id, query) {
    return await strapi.entityService.findOne(
      "plugin::tiny-train.phieudatve",
      id,
      {
        ...query,
        populate: {
          MaCHUYENDI: {
            populate: ["GaDi", "GaDen"],
          },
          MaKH: true,
          MaKM: true,
          MaTOA: true,
        },
      }
    );
  },
});
