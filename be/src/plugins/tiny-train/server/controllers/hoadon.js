"use strict";

/**
 *  controller
 */

module.exports = {
  async create(ctx) {
    try {
      ctx.body = await strapi
        .plugin("tiny-train")
        .service("hoadon")
        .create(ctx.request.body);
    } catch (err) {
      ctx.throw(500, err);
    }
  },
};
