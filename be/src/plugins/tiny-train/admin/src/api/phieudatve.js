// ./admin/src/api/task.js
import axiosInstance from "../utils/axiosInstance";

const PHIEUDATVE = {
  themPhieuDatVe: async (data) => {
    const res = await axiosInstance.post(`/tiny-train/phieudatve/create`, data);
    return res;
  },

  layDanhSachPDV: async (tripId) => {
    const res = await axiosInstance.get(
      `/tiny-train/phieudatve?filters[MaCHUYENDI][MaCHUYENDI]=${tripId}`
    );
    return res;
  },

  timVe: async (id) => {
    const res = await axiosInstance.get(`/tiny-train/phieudatve/${id}`);
    return res;
  },
};
export default PHIEUDATVE;
