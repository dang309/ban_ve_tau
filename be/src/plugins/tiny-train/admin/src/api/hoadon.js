// ./admin/src/api/task.js
import axiosInstance from "../utils/axiosInstance";

const HOADON = {
  themHoaDon: async (data) => {
    const res = await axiosInstance.post(`/tiny-train/hoadon/create`, data);
    return res;
  },
};
export default HOADON;
