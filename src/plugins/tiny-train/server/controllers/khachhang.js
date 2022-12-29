"use strict";

/**
 *  controller
 */

module.exports = {
  async find(ctx) {
    try {
      return await strapi
        .plugin("tiny-train")
        .service("khachhang")
        .find(ctx.query);
    } catch (err) {
      ctx.throw(500, err);
    }
  },

  async create(ctx) {
    try {
      ctx.body = await strapi
        .plugin("tiny-train")
        .service("khachhang")
        .create(ctx.request.body);
    } catch (err) {
      ctx.throw(500, err);
    }
  },
};
