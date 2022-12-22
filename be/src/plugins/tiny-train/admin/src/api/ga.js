// ./admin/src/api/task.js
import axiosInstance from "../../src/utils/axiosInstance";

const GA = {
  layDanhSachGa: async () => {
    const data = await axiosInstance.get(`/tiny-train/ga`);
    return data;
  },
};
export default GA;
