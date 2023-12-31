CREATE DATABASE QLCuaHangThoiTrang
GO
USE [QLCuaHangThoiTrang]
GO
/****** Object:  Table [dbo].[CaLamViec]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CaLamViec](
	[MaCLV] [varchar](10) NOT NULL,
	[Ca] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCLV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietCLV]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietCLV](
	[MaCLV] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[NgayLam] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietGiamGia]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietGiamGia](
	[MaMH] [varchar](10) NOT NULL,
	[MaGG] [varchar](10) NOT NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHD]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHD](
	[MaHD] [varchar](10) NOT NULL,
	[MaMH] [varchar](10) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietPN]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietPN](
	[MaPN] [varchar](10) NULL,
	[MaMH] [varchar](10) NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiamGia]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiamGia](
	[MaGG] [varchar](10) NOT NULL,
	[PhanTram] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [varchar](10) NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[NgayTao] [date] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[TongTien] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NOT NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [varchar](10) NOT NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiHang]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiHang](
	[MaLH] [varchar](10) NOT NULL,
	[TenLH] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatHang]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatHang](
	[MaMH] [varchar](10) NOT NULL,
	[TenMH] [nvarchar](50) NOT NULL,
	[DonVi] [nvarchar](10) NULL,
	[GiaBan] [int] NULL,
	[SoLuong] [int] NULL,
	[MaLH] [varchar](10) NULL,
	[Anh] [image] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [varchar](10) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[SDT] [varchar](10) NOT NULL,
	[Email] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[TenHienThi] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](20) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [nvarchar](10) NOT NULL,
	[Quyen] [nvarchar](20) NULL,
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPN] [varchar](10) NOT NULL,
	[MaNCC] [varchar](10) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CaLamViec] ([MaCLV], [Ca]) VALUES (N'CLV01', N'Sáng (7h00 - 11h00)')
INSERT [dbo].[CaLamViec] ([MaCLV], [Ca]) VALUES (N'CLV02', N'Chiều (11h00 - 17h00)')
INSERT [dbo].[CaLamViec] ([MaCLV], [Ca]) VALUES (N'CLV03', N'Tối (17h00 - 23h00)')
GO
INSERT [dbo].[ChiTietCLV] ([MaCLV], [MaNV], [NgayLam]) VALUES (N'CLV01', N'NV003', CAST(N'2021-12-08' AS Date))
INSERT [dbo].[ChiTietCLV] ([MaCLV], [MaNV], [NgayLam]) VALUES (N'CLV03', N'NV004', CAST(N'2021-12-11' AS Date))
GO
INSERT [dbo].[ChiTietGiamGia] ([MaMH], [MaGG], [NgayBD], [NgayKT]) VALUES (N'SP004', N'GG002', CAST(N'2021-12-01' AS Date), CAST(N'2021-12-15' AS Date))
GO
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD001', N'SP001', 5, 399000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD002', N'SP001', 3, 399000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD003', N'SP001', 7, 399000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD004', N'SP002', 8, 399000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD005', N'SP002', 2, 399000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD006', N'SP003', 2, 150000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD007', N'SP003', 2, 150000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD008', N'SP004', 1, 400000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP003', 1, 200000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD009', N'SP005', 1, 340000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD010', N'SP003', 2, 200000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD010', N'SP005', 2, 340000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD011', N'SP005', 2, 340000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD011', N'SP003', 1, 200000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD012', N'SP005', 2, 340000)
INSERT [dbo].[ChiTietHD] ([MaHD], [MaMH], [SoLuong], [DonGia]) VALUES (N'HD013', N'SP007', 10, 340000)
GO
INSERT [dbo].[ChiTietPN] ([MaPN], [MaMH], [SoLuong], [DonGia]) VALUES (N'PN001     ', N'SP001', 200, 350000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaMH], [SoLuong], [DonGia]) VALUES (N'PN001     ', N'SP002', 200, 360000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaMH], [SoLuong], [DonGia]) VALUES (N'PN001     ', N'SP003', 200, 110000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaMH], [SoLuong], [DonGia]) VALUES (N'PN002     ', N'SP004', 200, 170000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaMH], [SoLuong], [DonGia]) VALUES (N'PN003     ', N'SP005', 200, 160000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaMH], [SoLuong], [DonGia]) VALUES (N'PN004     ', N'SP006', 200, 150000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaMH], [SoLuong], [DonGia]) VALUES (N'PN005', N'SP006', 10, 180000)
INSERT [dbo].[ChiTietPN] ([MaPN], [MaMH], [SoLuong], [DonGia]) VALUES (N'PN006', N'SP007', 100, 130000)
GO
INSERT [dbo].[GiamGia] ([MaGG], [PhanTram]) VALUES (N'GG001', 30)
INSERT [dbo].[GiamGia] ([MaGG], [PhanTram]) VALUES (N'GG002', 15)
INSERT [dbo].[GiamGia] ([MaGG], [PhanTram]) VALUES (N'GG003', 50)
INSERT [dbo].[GiamGia] ([MaGG], [PhanTram]) VALUES (N'GG004', 25)
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD001', N'KH001     ', CAST(N'2021-11-20' AS Date), N'NV001', 2000000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD002', N'KH002     ', CAST(N'2021-11-21' AS Date), N'NV003', 1200000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD003', N'KH003     ', CAST(N'2021-11-21' AS Date), N'NV003', 2800000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD004', N'KH004     ', CAST(N'2021-11-22' AS Date), N'NV003', 3200000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD005', N'KH004     ', CAST(N'2021-11-23' AS Date), N'NV004', 800000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD006', N'KH001', CAST(N'2021-12-04' AS Date), N'NV003', 300000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD007', N'KH001', CAST(N'2021-12-04' AS Date), N'NV003', 300000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD008', N'KH001', CAST(N'2021-12-06' AS Date), N'NV001', 400000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD009', N'KH001', CAST(N'2021-12-06' AS Date), N'NV001', 540000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD010', N'KH001', CAST(N'2021-12-06' AS Date), N'NV001', 1080000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD011', N'KH004', CAST(N'2021-12-06' AS Date), N'NV001', 880000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD012', N'KH004', CAST(N'2021-12-06' AS Date), N'NV001', 680000)
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [NgayTao], [MaNV], [TongTien]) VALUES (N'HD013', N'KH004', CAST(N'2021-12-06' AS Date), N'NV001', 3400000)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (N'KH001', N'Phan Thị Cẩm', N'Nữ', N'Quận 9 , TP.Hồ Chí Minh', N'0235958952', N'phamthicam@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (N'KH002', N'Nguyễn Thị Hồng', N'Nữ', N'Quận 8, TP.Hồ Chí Minh', N'0365895744', N'nguyenthihong@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (N'KH003', N'Nguyễn Thị Quỳnh Như', N'Nữ', N'Quận 4, Hồ Chí Minh', N'0325895852', N'nguyenthiquynhu@gmail.com')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [GioiTinh], [DiaChi], [SDT], [Email]) VALUES (N'KH004', N'Trần Thị Hà Trinh', N'Nữ', N'Quận 8, Hồ Chí Minh', N'0365895532', N'tranthihatrinh@gmail.com')
GO
INSERT [dbo].[LoaiHang] ([MaLH], [TenLH]) VALUES (N'LH001', N'Đầm')
INSERT [dbo].[LoaiHang] ([MaLH], [TenLH]) VALUES (N'LH002', N'Áo')
INSERT [dbo].[LoaiHang] ([MaLH], [TenLH]) VALUES (N'LH003', N'Quần')
INSERT [dbo].[LoaiHang] ([MaLH], [TenLH]) VALUES (N'LH004', N'Váy')
INSERT [dbo].[LoaiHang] ([MaLH], [TenLH]) VALUES (N'LH005', N'Dép ')
GO
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonVi], [GiaBan], [SoLuong], [MaLH], [Anh]) VALUES (N'SP001', N'Đầm tím tay lửng', N'Chiếc', 400000, 185, N'LH001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonVi], [GiaBan], [SoLuong], [MaLH], [Anh]) VALUES (N'SP002', N'Đầm kẻ cổ trắng', N'Chiếc', 400000, 190, N'LH001', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonVi], [GiaBan], [SoLuong], [MaLH], [Anh]) VALUES (N'SP003', N'Áo thum đỏ tay', N'Chiếc', 150000, 192, N'LH002', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonVi], [GiaBan], [SoLuong], [MaLH], [Anh]) VALUES (N'SP004', N'Áo thum tay trắng', N'Chiếc', 200000, 199, N'LH002', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonVi], [GiaBan], [SoLuong], [MaLH], [Anh]) VALUES (N'SP005', N'Quần dài nâu đậm', N'Chiếc', 200000, 193, N'LH003', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonVi], [GiaBan], [SoLuong], [MaLH], [Anh]) VALUES (N'SP006', N'Quần sooc xanh ly', N'Chiếc', 200000, 210, N'LH003', NULL)
INSERT [dbo].[MatHang] ([MaMH], [TenMH], [DonVi], [GiaBan], [SoLuong], [MaLH], [Anh]) VALUES (N'SP007', N'Áo cánh cổ hồng ', N'Chiếc ', 150000, 90, N'LH002', NULL)
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC001  ', N'Công ty thời trang Elise', N'Quận 1, Hồ Chí Minh', N'0123456789', N'ctyelise@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC002  ', N'Công ty thời trang H&A', N'Quận 3, Hồ Chí Minh', N'0123456789', N'h&a@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC003  ', N'Công ty thời trang Hạnh', N'Quận 8, Hồ Chí Minh', N'0123456789', N'hanh@gmail.com')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChi], [SDT], [Email]) VALUES (N'NCC004  ', N'Công ty may thời trang An Phước.', N'Quận 9, Hồ Chí Minh', N'0123456789', N'anphuoc@gmail.com')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenHienThi], [GioiTinh], [DiaChi], [SDT], [Quyen], [TenDangNhap], [MatKhau]) VALUES (N'NV001', N'Bùi Văn Tân', N'Nam', N'Quận 9, TP.Hồ Chí Minh', N'0963528491', N'Quản lý', N'tan', N'123')
INSERT [dbo].[NhanVien] ([MaNV], [TenHienThi], [GioiTinh], [DiaChi], [SDT], [Quyen], [TenDangNhap], [MatKhau]) VALUES (N'NV002', N'Võ Văn Trí', N'Nam', N'Quận 8, TP.Hồ Chí Minh', N'0328644278', N'Nhân viên', N'tri', N'1234')
INSERT [dbo].[NhanVien] ([MaNV], [TenHienThi], [GioiTinh], [DiaChi], [SDT], [Quyen], [TenDangNhap], [MatKhau]) VALUES (N'NV003', N'Nguyễn Công Chí', N'Nam', N'Quận 9, TP.Hồ Chí Minh', N'0328644258', N'Nhân viên', N'chi', N'123')
INSERT [dbo].[NhanVien] ([MaNV], [TenHienThi], [GioiTinh], [DiaChi], [SDT], [Quyen], [TenDangNhap], [MatKhau]) VALUES (N'NV004', N'Huỳnh Xuân Lãm', N'Nam', N'Quận 9, TP.Hồ Chí Minh', N'0987528554', N'Nhân viên', N'lam', N'123')
INSERT [dbo].[NhanVien] ([MaNV], [TenHienThi], [GioiTinh], [DiaChi], [SDT], [Quyen], [TenDangNhap], [MatKhau]) VALUES (N'NV005', N'Hồ Ngọc Thống', N'Nam', N'Quận 9, TP.Hồ Chí Minh', N'966522011', N'Nhân viên', N'thong', N'123')
GO
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN001     ', N'NCC001    ', CAST(N'2021-11-19' AS Date), N'NV001')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN002     ', N'NCC002    ', CAST(N'2021-11-19' AS Date), N'NV001')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN003     ', N'NCC003    ', CAST(N'2021-11-19' AS Date), N'NV001')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN004     ', N'NCC004    ', CAST(N'2021-11-19' AS Date), N'NV001')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN005', N'NCC002  ', CAST(N'2021-12-05' AS Date), N'NV001')
INSERT [dbo].[PhieuNhap] ([MaPN], [MaNCC], [NgayNhap], [MaNV]) VALUES (N'PN006', N'NCC002  ', CAST(N'2021-12-06' AS Date), N'NV001')
GO
ALTER TABLE [dbo].[ChiTietCLV]  WITH CHECK ADD FOREIGN KEY([MaCLV])
REFERENCES [dbo].[CaLamViec] ([MaCLV])
GO
ALTER TABLE [dbo].[ChiTietCLV]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ChiTietGiamGia]  WITH CHECK ADD FOREIGN KEY([MaGG])
REFERENCES [dbo].[GiamGia] ([MaGG])
GO
ALTER TABLE [dbo].[ChiTietGiamGia]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MatHang] ([MaMH])
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ChiTietHD]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MatHang] ([MaMH])
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD FOREIGN KEY([MaMH])
REFERENCES [dbo].[MatHang] ([MaMH])
GO
ALTER TABLE [dbo].[ChiTietPN]  WITH CHECK ADD FOREIGN KEY([MaPN])
REFERENCES [dbo].[PhieuNhap] ([MaPN])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[MatHang]  WITH CHECK ADD FOREIGN KEY([MaLH])
REFERENCES [dbo].[LoaiHang] ([MaLH])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
/****** Object:  StoredProcedure [dbo].[KiemTraGiamGia]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KiemTraGiamGia](
    @mamh varchar (10)
)
as
select NgayBD,NgayKT
from ChiTietGiamGia
where MaMH = @mamh
GO
/****** Object:  StoredProcedure [dbo].[USP_getGiamgia]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[USP_getGiamgia]
as
select ChiTietGiamGia.MaMH,ChiTietGiamGia.MaGG,TenMH,GiamGia.PhanTram,NgayBD,NgayKT
from ChiTietGiamGia inner join GiamGia on ChiTietGiamGia.MaGG = GiamGia.MaGG inner join MatHang on MatHang.MaMH = ChiTietGiamGia.MaMH
GO
/****** Object:  StoredProcedure [dbo].[USP_Inhoadonn]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_Inhoadonn](
  @mahd nvarchar (50)
)
as
select HoaDon.MaHD,TenKH,KhachHang.SDT,KhachHang.DiaChi,Email,HoaDon.NgayTao,NhanVien.MaNV,NhanVien.TenHienThi,MatHang.TenMH,ChiTietHD.SoLuong,ChiTietHD.DonGia
from HoaDon inner join KhachHang on HoaDon.MaKH = KhachHang.MaKH inner join NhanVien on NhanVien.MaNV = HoaDon.MaNV inner join ChiTietHD on ChiTietHD.MaHD = HoaDon.MaHD inner join MatHang on MatHang.MaMH = ChiTietHD.MaMH
where HoaDon.MaHD = @mahd
GO
/****** Object:  StoredProcedure [dbo].[USP_TimkiemGiamGia]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[USP_TimkiemGiamGia](
    @mamh varchar(10)
)
as
select MaMH,PhanTram,NgayBD,NgayKT
from  ChiTietGiamGia inner join GiamGia on ChiTietGiamGia.MaGG = GiamGia.MaGG
where ChiTietGiamGia.MaMH = @mamh
GO
/****** Object:  StoredProcedure [dbo].[USP_TimKiemPhanTram]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_TimKiemPhanTram](
    @mamh varchar (10)
)
as
select PhanTram
from GiamGia inner join ChiTietGiamGia on GiamGia.MaGG = ChiTietGiamGia.MaGG
where MaMH = @mamh
GO
/****** Object:  StoredProcedure [dbo].[USP_TKKhachHang]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USP_TKKhachHang]
AS
BEGIN
select KhachHang.MaKH as [Mã khách hàng], KhachHang.TenKH as [Tên khách hàng], KhachHang.SDT as [Số điện thoại],SUM(HoaDon.TongTien) AS [Tổng Tiền], COUNT(HoaDon.MaHD) AS [Số lần mua hàng]
from HoaDon, KhachHang
where KhachHang.MaKH = HoaDon.MaKH
group by KhachHang.TenKH, KhachHang.MaKH, KhachHang.SDT, KhachHang.DiaChi, KhachHang.Email
END
GO
/****** Object:  StoredProcedure [dbo].[USP_TKMatHang]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_TKMatHang]
as
select MatHang.MaMH as [Mã hàng hóa],MatHang.TenMH as [Tên hàng hóa],DonVi as [Đơn vị],sum(ChitietPN.Soluong) as [Số lượng nhập],MatHang.SoLuong as [Số lượng tồn], (sum(ChitietPN.Soluong) - MatHang.SoLuong) as [Số lượng bán],MatHang.GiaBan as [Giá bán]
from MatHang inner join ChiTietPN on MatHang.MaMH = ChiTietPN.MaMH 
group by MatHang.MaMH,MatHang.SoLuong,MatHang.TenMH,MatHang.DonVi,DonVi,MatHang.GiaBan
GO
/****** Object:  StoredProcedure [dbo].[USP_TKPhieuNhap]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[USP_TKPhieuNhap]
as 
select MaPN as [Mã phiểu nhập], NgayNhap as[ Ngày nhập hàng],TenNCC as [Nhà cung cấp],TenHienThi as [Nhân viên nhập] 
from PhieuNhap inner join NhaCungCap on PhieuNhap.MaNCC = NhaCungCap.MaNCC inner join NhanVien on PhieuNhap.MaNV = NhanVien.MaNV
GO
/****** Object:  StoredProcedure [dbo].[USP_XemChiTietPN]    Script Date: 12/8/2021 10:05:53 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[USP_XemChiTietPN](
   @mapn nchar (10)
)
as
select ChiTietPN.MaPN,ChiTietPN.MaMH,MatHang.TenMH,ChiTietPN.SoLuong,ChiTietPN.DonGia,PhieuNhap.MaNV,NhanVien.TenHienThi,NhanVien.Quyen,PhieuNhap.MaNCC,NhaCungCap.TenNCC,PhieuNhap.NgayNhap
from  ChiTietPN inner join MatHang on ChiTietPN.MaMH = MatHang.MaMH inner join PhieuNhap on ChiTietPN.MaPN = PhieuNhap.MaPN inner join NhanVien on NhanVien.MaNV = PhieuNhap.MaNV inner join NhaCungCap on PhieuNhap.MaNCC = NhaCungCap.MaNCC
where ChiTietPN.MaPN = @mapn
GO
