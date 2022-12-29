"use strict";

/**
 *  controller
 */

module.exports = {
  async find(ctx) {
    try {
      return await strapi
        .plugin("tiny-train")
        .service("phieudatve")
        .find(ctx.query);
    } catch (err) {
      ctx.throw(500, err);
    }
  },

  async create(ctx) {
    try {
      ctx.body = await strapi
        .plugin("tiny-train")
        .service("phieudatve")
        .create(ctx.request.body);
    } catch (err) {
      ctx.throw(500, err);
    }
  },

  async findOne(ctx) {
    try {
      return await strapi
        .plugin("tiny-train")
        .service("phieudatve")
        .findOne(ctx.params.id, ctx.query);
    } catch (err) {
      ctx.throw(500, err);
    }
  },
};
