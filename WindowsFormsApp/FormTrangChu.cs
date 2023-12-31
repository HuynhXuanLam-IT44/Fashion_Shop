﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace WindowsFormsApp
{
    public partial class FormTrangChu : Form
    {
        private string tk;
        private string luumanv, luutennv;
        public FormTrangChu(string tk)  // string tk
        {
            InitializeComponent();
            /*hiển thị trang chủ*/
            //UC_TrangChu tc = new UC_TrangChu();
            //themUC(tc);
            this.tk = tk;
            lblNguoidung.Text = tk;
           Phanquyen();

            TTnguoiban();
        }

        private void TTnguoiban()
        {
            string name = lblNguoidung.Text;
            string query = "select MaNV,TenHienThi from Nhanvien where TenDangNhap = '" + tk + "'";
            
            if (!string.IsNullOrEmpty(lblNguoidung.Text))
            {
                DataTable dt = DataProvider.Instance.ExecuteQuery(query);
                lblManv.Text = dt.Rows[0]["MaNV"].ToString();
                lblTennv.Text = dt.Rows[0]["TenHienThi"].ToString();
                
            }
        }


        private void Phanquyen()
        {
            string Name = lblNguoidung.Text;
            string query = "select Quyen as [Quyen] from NhanVien where TenDangNhap = N'" + Name + "'";
            DataTable dt = DataProvider.Instance.ExecuteQuery(query);
            lblQuyen.Text = dt.Rows[0]["Quyen"].ToString();

            if (lblQuyen.Text == "Quản lý")
            {

            }
            else if (lblQuyen.Text == "Nhân viên")
            {

                btnKhuyenMai.Enabled = false;
                btnNhanVien.Enabled = false;
                btnThongKe.Enabled = false;
                btnNhanVien.Enabled = false;
                btnThongKe.Enabled = false;
                btnKhoHang.Enabled = false;
                btnNCC.Enabled = false;
                btnNhapHang.Enabled = false;

            }
           
        }

        private void themUC(Control uc)
        {
            uc.Dock = DockStyle.Fill;
            panelControl.Controls.Clear();
            panelControl.Controls.Add(uc);
            uc.BringToFront();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            timer1.Start();
        }

        private void addControlsToPanel(Control c)
        {
            c.Dock = DockStyle.Fill;
            panelControl.Controls.Clear();
            panelControl.Controls.Add(c);
        }



        private void lblNguoidung_Click(object sender, EventArgs e)
        {
            FormThongTinNhanVien formThongTinNhanVien = new FormThongTinNhanVien(lblNguoidung.Text);
            formThongTinNhanVien.Show();
        }

        private void btnTrangChu_Click_1(object sender, EventArgs e)
        {
            UC_TrangChu tc = new UC_TrangChu();
            addControlsToPanel(tc);
        }

        private void btnKhachHang_Click_1(object sender, EventArgs e)
        {
            UC_KhachHang kh = new UC_KhachHang();
            addControlsToPanel(kh);
        }

        private void btnNhanVien_Click_1(object sender, EventArgs e)
        {
            UC_NhanVien nv = new UC_NhanVien();
            addControlsToPanel(nv);
        }

        private void btnNCC_Click_1(object sender, EventArgs e)
        {
            UC_NhaCungCap ncc = new UC_NhaCungCap();
            addControlsToPanel(ncc);
        }

        private void btnKhoHang_Click_1(object sender, EventArgs e)
        {
            UC_KhoHang kh = new UC_KhoHang(lblManv.Text, lblTennv.Text);
            addControlsToPanel(kh);
        }

        private void btnBanHang_Click_1(object sender, EventArgs e)
        {
            UC_BanHang bh = new UC_BanHang(lblManv.Text,lblTennv.Text);  //lblManv.Text, lblTennv.Text
            addControlsToPanel(bh);
        }

        private void btnThongKe_Click_1(object sender, EventArgs e)
        {
            UC_ThongKe tk = new UC_ThongKe();
            addControlsToPanel(tk);
        }


        private void btnDangXuat_Click_1(object sender, EventArgs e)
        {
            FormDangNhap dn = new FormDangNhap();
            dn.Show();
            this.Hide();
        }

        private void btnX_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnKhuyenMai_Click(object sender, EventArgs e)
        {
            UC_KhuyenMai uC_KhuyenMai = new UC_KhuyenMai();
            themUC(uC_KhuyenMai);
        }

        private void pannelLeft1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnNhapHang_Click(object sender, EventArgs e)
        {
            //FormNhapHang formNhaphang = new FormNhapHang(luumanv, luutennv);
            //formNhaphang.Show();
            UC_NhapHang f = new UC_NhapHang(lblManv.Text,lblTennv.Text);
            addControlsToPanel(f);
        }
    }
}
