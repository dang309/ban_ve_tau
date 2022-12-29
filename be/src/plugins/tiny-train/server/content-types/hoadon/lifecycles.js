module.exports = {
  async beforeCreate(event) {
    const { data } = event.params;
    const lastRow = await strapi.entityService.findMany(
      "plugin::tiny-train.hoadon",
      {
        sort: { MaHD: "DESC" },
        limit: 1,
      }
    );
    if (lastRow.length > 0) {
      data.MaHD = lastRow[0].MaHD + 1;
    } else if (lastRow.length === 0) {
      data.MaHD = 1;
    }

    data.id = data.MaHD;

    var dateObj = new Date();
    var month = dateObj.getMonth() + 1; //months from 1-12
    var day = dateObj.getDate();
    var year = dateObj.getFullYear();
    data.NgayThanhToan = year + "-" + month + "-" + day;
  },
};
