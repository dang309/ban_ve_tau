// ./admin/src/api/task.js
import axiosInstance from "../../src/utils/axiosInstance";

import qs from "qs";

const CHUYENDI = {
  layDanhSachChuyenDi: async (from, to, startDate) => {
    const queries = {
      filters: {
        GaDi: {
          MaGA: parseInt(from),
        },
        GaDen: {
          MaGA: parseInt(to),
        },
        NgayDi: {
          $eq: startDate,
        },
      },
    };
    const data = await axiosInstance.get(
      `/tiny-train/chuyendi?${qs.stringify(queries)}`
    );
    return data;
  },
};
export default CHUYENDI;
