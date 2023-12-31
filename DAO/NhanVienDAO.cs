﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DTO;
using WindowsFormsApp;

namespace DAO
{
    public class NhanVienDAO
    {
        private static NhanVienDAO instance;

        public NhanVienDAO()
        {
        }

        public static NhanVienDAO Intance
        {
            get { if (instance == null) instance = new NhanVienDAO(); return instance; }
            set => instance = value;
        }

        public bool Login(string userName, string passWord)
        {
            string query = "SELECT * FROM NhanVien WHERE TenDangNhap = N'" + userName + "' AND MatKhau = N'" + passWord + "'";

            DataTable result = DataProvider.Instance.ExecuteQuery(query);

            return result.Rows.Count > 0;
        }

        public NhanVienDTO getNVByID(string id)
        {
            string query = "SELECT * FROM NhanVien WHERE TenDangNhap = N'" + id + "'";
            DataRow a = DataProvider.Instance.ExecuteQuery(query).Rows[0];
            return new NhanVienDTO(a);
        }

        public DataTable getListNV()
        {
            string query = "select MaNV,TenHienThi,GioiTinh,DiaChi,SDT,Quyen from NhanVien";
            return DataProvider.Instance.ExecuteQuery(query);
        }



        public bool suaNV(string maNV, string tenNV, string DiaChi, string SDT)
        {
            string query = String.Format("update NhanVien set TenHienThi = N'{0}', DiaChi = N'{1}', SDT = {2} where MaNV = '{3}'", tenNV, DiaChi, SDT, maNV);
            int result = DataProvider.Instance.ExecuteNonQuery(query);
            return result > 0;
        }

        public bool xoaNV(string maNV)
        {
            string query = String.Format("delete from NhanVien where MaNV = '{0}'", maNV);
            int result = DataProvider.Instance.ExecuteNonQuery(query);
            return result > 0;
        }

        public DataTable TimKiemNV(string name)
        {
            string query = string.Format("SELECT MaNV,TenHienThi, DiaChi, SDT FROM NhanVien WHERE dbo.GetUnsignString(NhanVien.TenHienThi) LIKE N'%' + dbo.GetUnsignString(N'{0}') + '%'", name);
            DataTable data = DataProvider.Instance.ExecuteQuery(query);
            return data;
        }

        public string loadMaNV()
        {
            string maNVnext = "";
            string query = "select top 1 MaNV from NhanVien order by MaNV desc";
            DataRow data = DataProvider.Instance.ExecuteQuery(query).Rows[0];
            maNVnext = data["MaNV"].ToString();
            return maNVnext;
        }


        public bool themNV(string maNV, string tenNV, string Gioitinh, string DiaChi, string SDT, string Tendangnhap, string Matkhau)
        {

            string query = String.Format("insert into NhanVien(MaNV,TenHienThi,GioiTinh,DiaChi,SDT,TenDangNhap,MatKhau) values  ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')", maNV, tenNV, Gioitinh, DiaChi, SDT, Tendangnhap, Matkhau);
            int result = DataProvider.Instance.ExecuteNonQuery(query);
            return result > 0;
        }


        public bool capnhatmk(string mk, string sdt)
        {
            string query = String.Format("update NhanVien set MatKhau = '{0}' where SDT = '{1}'", mk, sdt);
            int result = DataProvider.Instance.ExecuteNonQuery(query);
            return result > 0;
        }


        public bool capnhatmk1(string mk, string tk)
        {
            string query = String.Format("update NhanVien set MatKhau = '{0}' where TenDangNhap = '{1}'", mk, tk);
            int result = DataProvider.Instance.ExecuteNonQuery(query);
            return result > 0;
        }


        public List<NhanVienDTO> getListNhanVien()
        {
            List<NhanVienDTO> list = new List<NhanVienDTO>();
            DataTable data = DataProvider.Instance.ExecuteQuery("select * from NhanVien");
            foreach (DataRow item in data.Rows)
            {
                NhanVienDTO Nhanvien = new NhanVienDTO(item);
                list.Add(Nhanvien);
            }
            return list;
        }




    }
}
