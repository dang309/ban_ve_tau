// ./admin/src/api/task.js
import axiosInstance from "../../src/utils/axiosInstance";

const GA = {
  layDanhSachGa: async () => {
    const res = await axiosInstance.get(`/tiny-train/ga`);
    return res;
  },
};
export default GA;
