module.exports = {
  async beforeCreate(event) {
    const { data } = event.params;

    const lastRow = await strapi.entityService.findMany(
      "plugin::tiny-train.phieudatve",
      {
        sort: { MaPDV: "DESC" },
        limit: 1,
      }
    );

    console.log({ lastRow });

    if (lastRow.length > 0) {
      data.MaPDV = lastRow[0].MaPDV + 1;
    } else if (lastRow.length === 0) {
      data.MaPDV = 1;
    }

    data.id = data.MaPDV;

    data.TienPhaiTra = data.DonGia + data.PhuPhi + data.BaoHiem;
  },
};
