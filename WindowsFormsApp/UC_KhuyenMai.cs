﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BUS;
using DTO;

namespace WindowsFormsApp
{
    public partial class UC_KhuyenMai : UserControl
    {   
        
        public UC_KhuyenMai()
        { 
            InitializeComponent();
            list = GiamGiaBUS.Intance.getListGiamGia();
            list1 = MatHangBUS.Intance.getListSanPham();
            cmbTenmh.DataSource = list1;
            cmbTenmh.DisplayMember = "TenMH";
            cmbTenmh.ValueMember = "TenMH";
            cmbMamh.DataSource = list1;
            cmbMamh.DisplayMember = "MaMH";
            cmbMamh.ValueMember = "MaMH";
            cmbPhantram.DataSource = list;
            cmbPhantram.DisplayMember = "PhanTram";
            cmbPhantram.ValueMember = "PhanTram";
            cmbMaPhantram.DataSource = list;
            cmbMaPhantram.DisplayMember = "MaGG";
            cmbMaPhantram.ValueMember = "MaGG";
          
            LamMoi();
            HienThi();
        }
        List<GiamGiaDTO> list;
        List<MatHangDTO> list1;

        private void HienThi()
        {
            DataTable dt = GiamGiaBUS.Intance.Hienthi();
            dgvGiamGia.DataSource = dt;
        }

        private void LamMoi()
        {
            cmbTenmh.SelectedIndex = -1;
            cmbMamh.SelectedIndex = -1;
            cmbMaPhantram.SelectedIndex = -1;
            cmbPhantram.SelectedIndex = -1;
        }

        private void dgvGiamGia_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int indexx;
            indexx = e.RowIndex;
            cmbMamh.Text = dgvGiamGia.Rows[indexx].Cells[0].Value.ToString();
            cmbMaPhantram.Text = dgvGiamGia.Rows[indexx].Cells[1].Value.ToString();
            cmbPhantram.Text = dgvGiamGia.Rows[indexx].Cells[3].Value.ToString();
            dpkNgaybd.Value = Convert.ToDateTime(dgvGiamGia.Rows[indexx].Cells[4].Value);
            dpkNgaykt.Value = Convert.ToDateTime(dgvGiamGia.Rows[indexx].Cells[5].Value);
        }

        private bool CheckData()
        {
            if (string.IsNullOrEmpty(cmbTenmh.Text))
            {
                MessageBox.Show("Tên mặt hàng không được trống!", "Thông báo");
                return false;
            } else if (string.IsNullOrEmpty(cmbPhantram.Text))
            {
                MessageBox.Show("Phần trăm giảm giá không được trống!", "Thông báo");
                return false;
            }else if (string.IsNullOrEmpty(cmbMaPhantram.Text))
            {
                MessageBox.Show("Mã phần trăm giảm giá không được trống!", "Thông báo");
                return false;
            }

            return true;
        }

        private void btnLamMoi_Click_1(object sender, EventArgs e)
        {
            LamMoi();
        }

        private void btnThem_Click_1(object sender, EventArgs e)
        {
            if (CheckData() == true)
            {
                string tk = cmbMamh.Text;
                DataTable dt = GiamGiaBUS.Intance.TimKiemGG(tk);
                if (dt.Rows.Count > 0)
                {
                    DateTime Ngaykt = Convert.ToDateTime(dt.Rows[0]["NgayKT"].ToString());
                    if (dpkNgaybd.Value < Ngaykt)
                    {
                        MessageBox.Show("Sản phẩm đang trong thời gian khuyến mãi, Bạn không thể thêm mới!", "Thông báo");
                    }
                    else
                    if (GiamGiaBUS.Intance.themChitietGG(cmbMamh.Text, cmbMaPhantram.Text, dpkNgaybd.Value, dpkNgaykt.Value) == true)
                    {
                        MessageBox.Show("Thêm thành công!", "Thông báo");
                        LamMoi();
                        HienThi();
                    }
                    else
                        MessageBox.Show("Sản phẩm đã tồn tại!", "Thông báo");
                }
                else
                {

                    if (GiamGiaBUS.Intance.themChitietGG(cmbMamh.Text, cmbMaPhantram.Text, dpkNgaybd.Value, dpkNgaykt.Value) == true)
                    {
                        MessageBox.Show("Thêm thành công!", "Thông báo");
                        LamMoi();
                        HienThi();
                    }
                    else
                        MessageBox.Show("Sản phẩm đã tồn tại!", "Thông báo");
                }
            }
        }

        private void btnSua_Click_1(object sender, EventArgs e)
        {
            if (CheckData() == true)
            {
                if (dgvGiamGia.SelectedCells.Count > 0)
                {
                    int phantram = Convert.ToInt32(cmbPhantram.Text);

                    if (GiamGiaBUS.Intance.suaGiamGia(phantram, cmbMaPhantram.Text))
                    {
                        if (GiamGiaBUS.Intance.suaChitietGG(cmbMamh.Text, cmbMaPhantram.Text, dpkNgaybd.Value, dpkNgaykt.Value))
                        {
                            MessageBox.Show("Sửa thành công!", "Thông báo");
                            LamMoi();
                            HienThi();
                        }
                    }
                }
            }
        }

        private void btnXoa_Click_1(object sender, EventArgs e)
        {
            if (GiamGiaBUS.Intance.xoaGiamGia(cmbMamh.Text, cmbMaPhantram.Text))
            {
                MessageBox.Show("Xóa thành công!", "Thông báo");
                LamMoi();
                HienThi();
            }
            else
                MessageBox.Show("Không thể xóa", "Thông báo");
        }
    }
}

