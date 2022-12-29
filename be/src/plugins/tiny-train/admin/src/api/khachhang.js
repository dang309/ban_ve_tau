// ./admin/src/api/task.js
import axiosInstance from "../../src/utils/axiosInstance";

const KHACHHANG = {
  layDanhSachKhachHang: async () => {
    const res = await axiosInstance.get(`/tiny-train/khachhang`);
    return res;
  },

  themKhachHang: async (data) => {
    const res = await axiosInstance.post(`/tiny-train/khachhang/create`, data);
    return res;
  },
};
export default KHACHHANG;
