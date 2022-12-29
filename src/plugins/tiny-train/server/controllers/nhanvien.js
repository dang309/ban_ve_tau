"use strict";

/**
 *  controller
 */

module.exports = {
  async find(ctx) {
    try {
      return await strapi.plugin("tiny-train").service("nhanvien").find();
    } catch (err) {
      ctx.throw(500, err);
    }
  },
};
