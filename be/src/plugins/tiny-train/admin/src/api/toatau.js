// ./admin/src/api/task.js
import axiosInstance from "../utils/axiosInstance";

const TOATAU = {
  layDanhSachToaTau: async () => {
    const data = await axiosInstance.get(`/tiny-train/toatau`);
    return data;
  },
};
export default TOATAU;
