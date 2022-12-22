module.exports = {
  async beforeCreate(event) {
    const { data } = event.params;

    const lastRow = await strapi.entityService.findMany(
      "plugin::tiny-train.khachhang",
      {
        sort: { MaKH: "DESC" },
        limit: 1,
      }
    );

    data.MaKH = lastRow[0].MaKH + 1;
  },
};
