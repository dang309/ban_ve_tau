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
};
