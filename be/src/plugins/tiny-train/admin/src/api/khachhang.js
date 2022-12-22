// ./admin/src/api/task.js
import axiosInstance from "../../src/utils/axiosInstance";

const KHACHHANG = {
  layDanhSachKhachHang: async () => {
    const data = await axiosInstance.get(`/tiny-train/khachhang`);
    return data;
  },
};
export default KHACHHANG;
