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

    if (lastRow.length > 0) {
      data.MaKH = lastRow[0].MaKH + 1;
    } else if (lastRow.length === 0) {
      data.MaKH = 1;
    }

    data.id = data.MaKH;

    const currentYear = new Date().getFullYear();
    const cusYear = new Date(data.NgaySinh).getFullYear();

    if (currentYear - cusYear < 16) {
      data.DoiTuong = "C";
    } else if (currentYear - cusYear >= 60) {
      data.DoiTuong = "E";
    } else {
      data.DoiTuong = "A";
    }
  },
};
