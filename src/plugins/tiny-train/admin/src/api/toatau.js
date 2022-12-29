// ./admin/src/api/task.js
import axiosInstance from "../utils/axiosInstance";

const TOATAU = {
  layDanhSachToaTau: async () => {
    const res = await axiosInstance.get(`/tiny-train/toatau`);
    return res;
  },
};
export default TOATAU;
