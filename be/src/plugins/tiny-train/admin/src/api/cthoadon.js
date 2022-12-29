// ./admin/src/api/task.js
import axiosInstance from "../utils/axiosInstance";

const CTHOADON = {
  themCTHoaDon: async (data) => {
    const res = await axiosInstance.post(`/tiny-train/cthoadon/create`, data);
    return res;
  },
};
export default CTHOADON;
