USE [DOAN3]
GO
/****** Object:  Table [dbo].[Dathang]    Script Date: 5/13/2022 6:04:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dathang](
	[Hoadon_id] [varchar](200) NOT NULL,
	[sanpham_id] [varchar](50) NULL,
	[Khachhang_name] [nvarchar](200) NOT NULL,
	[Diachi] [nvarchar](200) NOT NULL,
	[NV_id] [varchar](200) NULL,
	[ngaydathang] [date] NULL,
 CONSTRAINT [PK__Dathang__D385C07FDC540C76] PRIMARY KEY CLUSTERED 
(
	[Hoadon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 5/13/2022 6:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Hoadon_id] [varchar](200) NOT NULL,
	[sanpham_id] [varchar](50) NULL,
	[Khachhang_id] [varchar](200) NULL,
	[Khachhang_name] [nvarchar](200) NOT NULL,
	[sanpham_name] [nvarchar](300) NOT NULL,
	[soluong] [int] NOT NULL,
	[giaban] [int] NULL,
	[tongtien] [int] NULL,
 CONSTRAINT [PK__Donhang__D385C07FBF2D513F] PRIMARY KEY CLUSTERED 
(
	[Hoadon_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 5/13/2022 6:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[Mahoadon] [char](20) NOT NULL,
	[Khachhang_name] [nvarchar](40) NULL,
	[diachi] [nvarchar](50) NULL,
	[email] [char](10) NULL,
	[phone] [char](10) NULL,
	[listsanpham] [nvarchar](400) NULL,
	[tongtien] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Mahoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 5/13/2022 6:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[Khachhang_id] [varchar](200) NOT NULL,
	[Khachhang_name] [nvarchar](200) NOT NULL,
	[Gioitinh] [nvarchar](30) NOT NULL,
	[Ngaysinh] [date] NOT NULL,
	[Diachi] [nvarchar](200) NOT NULL,
	[Sodt] [varchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Khachhang_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSp]    Script Date: 5/13/2022 6:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSp](
	[Loaisp_id] [varchar](50) NOT NULL,
	[Loaisp_name] [nvarchar](200) NOT NULL,
	[mota] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Loaisp_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 5/13/2022 6:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Mabaiviet] [varchar](20) NOT NULL,
	[Tieude] [nvarchar](100) NULL,
	[Noidung] [nvarchar](1000) NULL,
	[Anh] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Mabaiviet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhacungcap]    Script Date: 5/13/2022 6:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhacungcap](
	[Nhacungcap_id] [varchar](200) NOT NULL,
	[Nhacungcap_name] [nvarchar](200) NOT NULL,
	[Diachi] [nvarchar](200) NOT NULL,
	[Sodt] [varchar](30) NOT NULL,
 CONSTRAINT [PK__Nhacungc__F27DBFA7C174CF72] PRIMARY KEY CLUSTERED 
(
	[Nhacungcap_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 5/13/2022 6:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[NV_id] [varchar](200) NOT NULL,
	[NV_name] [nvarchar](200) NOT NULL,
	[gioitinh] [nvarchar](300) NOT NULL,
	[diachi] [nvarchar](300) NOT NULL,
	[sdt] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[NV_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams]    Script Date: 5/13/2022 6:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams](
	[sanpham_id] [varchar](50) NOT NULL,
	[Loaisp_id] [varchar](50) NULL,
	[sanpham_name] [nvarchar](300) NOT NULL,
	[gia] [int] NULL,
	[Nhacungcap_id] [varchar](200) NULL,
	[Soluong] [int] NULL,
	[picture] [varchar](250) NULL,
 CONSTRAINT [PK__SanPhams__17B017B375A3F7A0] PRIMARY KEY CLUSTERED 
(
	[sanpham_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TEST]    Script Date: 5/13/2022 6:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TEST](
	[id] [varchar](30) NOT NULL,
	[anh] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Userss]    Script Date: 5/13/2022 6:04:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Userss](
	[Users_id] [varchar](20) NOT NULL,
	[Passwords] [varchar](20) NULL,
	[email] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Users_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Dathang] ([Hoadon_id], [sanpham_id], [Khachhang_name], [Diachi], [NV_id], [ngaydathang]) VALUES (N'Dh101001', N'product01', N'Nguyễn Chí Mạnh', N'KIM ĐỘNG-HƯNG YÊN', N'Nhanvien01', CAST(N'2021-10-19' AS Date))
INSERT [dbo].[Dathang] ([Hoadon_id], [sanpham_id], [Khachhang_name], [Diachi], [NV_id], [ngaydathang]) VALUES (N'Dh1010010', N'product10', N'Đào Phương Thảo', N'KIM ĐỘNG-HƯNG YÊN', N'Nhanvien010', CAST(N'2021-10-19' AS Date))
INSERT [dbo].[Dathang] ([Hoadon_id], [sanpham_id], [Khachhang_name], [Diachi], [NV_id], [ngaydathang]) VALUES (N'Dh101002', N'product02', N'Đoàn Trung Hiếu', N'KIM ĐỘNG-HƯNG YÊN', N'Nhanvien02', CAST(N'2021-10-19' AS Date))
INSERT [dbo].[Dathang] ([Hoadon_id], [sanpham_id], [Khachhang_name], [Diachi], [NV_id], [ngaydathang]) VALUES (N'Dh101003', N'product03', N'Nê Thanh Toàn', N'KIM ĐỘNG-HƯNG YÊN', N'Nhanvien03', CAST(N'2021-10-19' AS Date))
INSERT [dbo].[Dathang] ([Hoadon_id], [sanpham_id], [Khachhang_name], [Diachi], [NV_id], [ngaydathang]) VALUES (N'Dh101004', N'product04', N'Nguyễn Trần Anh Thăng', N'KIM ĐỘNG-HƯNG YÊN', N'Nhanvien04', CAST(N'2021-10-19' AS Date))
INSERT [dbo].[Dathang] ([Hoadon_id], [sanpham_id], [Khachhang_name], [Diachi], [NV_id], [ngaydathang]) VALUES (N'Dh101005', N'product05', N'Dương Vũ Hoàng Việt', N'KIM ĐỘNG-HƯNG YÊN', N'Nhanvien05', CAST(N'2021-10-19' AS Date))
INSERT [dbo].[Dathang] ([Hoadon_id], [sanpham_id], [Khachhang_name], [Diachi], [NV_id], [ngaydathang]) VALUES (N'Dh101006', N'product06', N'Đặng Tuấn Đạt', N'KIM ĐỘNG-HƯNG YÊN', N'Nhanvien06', CAST(N'2021-10-19' AS Date))
INSERT [dbo].[Dathang] ([Hoadon_id], [sanpham_id], [Khachhang_name], [Diachi], [NV_id], [ngaydathang]) VALUES (N'Dh101008', N'product08', N'Nguyễn Đặng Ngọc Thành', N'KIM ĐỘNG-HƯNG YÊN', N'Nhanvien08', CAST(N'2021-10-19' AS Date))
INSERT [dbo].[Dathang] ([Hoadon_id], [sanpham_id], [Khachhang_name], [Diachi], [NV_id], [ngaydathang]) VALUES (N'Dh101009', N'product09', N'Nguyễn Thu Hồng', N'KIM ĐỘNG-HƯNG YÊN', N'Nhanvien09', CAST(N'2021-10-19' AS Date))
GO
INSERT [dbo].[Donhang] ([Hoadon_id], [sanpham_id], [Khachhang_id], [Khachhang_name], [sanpham_name], [soluong], [giaban], [tongtien]) VALUES (N'Dh101001', N'product01', N'Khachhang1', N'Nguyễn Chí Mạnh', N'Bắp cải', 3, 100000, NULL)
INSERT [dbo].[Donhang] ([Hoadon_id], [sanpham_id], [Khachhang_id], [Khachhang_name], [sanpham_name], [soluong], [giaban], [tongtien]) VALUES (N'Dh1010010', N'product10', N'Khachhang10', N'Đào Phương Thảo', N'Nước cam', 3, 100000, NULL)
INSERT [dbo].[Donhang] ([Hoadon_id], [sanpham_id], [Khachhang_id], [Khachhang_name], [sanpham_name], [soluong], [giaban], [tongtien]) VALUES (N'Dh101002', N'product02', N'Khachhang2', N'Đoàn Trung Hiếu', N'humberger', 3, 220000, NULL)
INSERT [dbo].[Donhang] ([Hoadon_id], [sanpham_id], [Khachhang_id], [Khachhang_name], [sanpham_name], [soluong], [giaban], [tongtien]) VALUES (N'Dh101003', N'product03', N'Khachhang3', N'Nê Thanh Toàn', N'Sườn sào chua ngọt', 3, 100000, NULL)
INSERT [dbo].[Donhang] ([Hoadon_id], [sanpham_id], [Khachhang_id], [Khachhang_name], [sanpham_name], [soluong], [giaban], [tongtien]) VALUES (N'Dh101004', N'product04', N'Khachhang4', N'Nguyễn Trần Anh Thăng', N'Bánh kem', 3, 100000, NULL)
INSERT [dbo].[Donhang] ([Hoadon_id], [sanpham_id], [Khachhang_id], [Khachhang_name], [sanpham_name], [soluong], [giaban], [tongtien]) VALUES (N'Dh101005', N'product05', N'Khachhang5', N'Dương Vũ Hoàng Việt', N'coca', 3, 15000, NULL)
INSERT [dbo].[Donhang] ([Hoadon_id], [sanpham_id], [Khachhang_id], [Khachhang_name], [sanpham_name], [soluong], [giaban], [tongtien]) VALUES (N'Dh101006', N'product06', N'Khachhang6', N'Đặng Tuấn Đạt', N'Cà rốt', 3, 100000, NULL)
INSERT [dbo].[Donhang] ([Hoadon_id], [sanpham_id], [Khachhang_id], [Khachhang_name], [sanpham_name], [soluong], [giaban], [tongtien]) VALUES (N'Dh101008', N'product08', N'Khachhang8', N'Nguyễn Đặng Ngọc Thành', N'Gà xào xả ớt', 3, 100000, NULL)
INSERT [dbo].[Donhang] ([Hoadon_id], [sanpham_id], [Khachhang_id], [Khachhang_name], [sanpham_name], [soluong], [giaban], [tongtien]) VALUES (N'Dh101009', N'product09', N'Khachhang9', N'Nguyễn Thu Hồng', N'Bánh plan Pháp', 3, 100000, NULL)
GO
INSERT [dbo].[Hoadon] ([Mahoadon], [Khachhang_name], [diachi], [email], [phone], [listsanpham], [tongtien]) VALUES (N'HD5cvjxdzggww       ', NULL, NULL, NULL, NULL, N'Nho/Cá viên chiên/', 95000)
INSERT [dbo].[Hoadon] ([Mahoadon], [Khachhang_name], [diachi], [email], [phone], [listsanpham], [tongtien]) VALUES (N'HDqqlbn1oeruf       ', N'a', N'b', N'cgmail.com', N'1371471741', N'Humberger/Cá viên chiên/Dưa Gang/', 405000)
GO
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang1', N'Nguyễn Chí Mạnh', N'Nam', CAST(N'2001-01-01' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang10', N'Đào Phương Thảo', N'Nữ', CAST(N'2001-01-01' AS Date), N'NHÂN HÒA -MI HÀO', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang100', N'Phan Phương Thảo', N'Nữ', CAST(N'3003-03-03' AS Date), N'NHÂN HÒA -MI HÀO', N'0303556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang11', N'Đào Chí Mạnh', N'Nam', CAST(N'2001-01-01' AS Date), N'THANH XUÂN-HÀ NỘI', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang12', N'Đoàn Trung Hiếu', N'Nam', CAST(N'2001-01-01' AS Date), N'THANH XUÂN-HÀ NỘI', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang13', N'Nê Thanh Toàn', N'Nam', CAST(N'2001-01-01' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang14', N'Đào Trần Anh Thăng', N'Nam', CAST(N'2001-01-01' AS Date), N'TRAI TRANG-YÊN MĨ', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang15', N'Dương Vũ Hoàng Việt', N'Nam', CAST(N'2001-01-01' AS Date), N'NHÂN HÒA -MI HÀO', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang16', N'Đặng Tuấn Đạt', N'Nam', CAST(N'2001-01-01' AS Date), N'THANH XUÂN-HÀ NỘI', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang17', N'Đào Đức Cườngu', N'Nam', CAST(N'2001-01-01' AS Date), N'THANH XUÂN-HÀ NỘI', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang18', N'Đào Đặng Ngọc Thành', N'Nam', CAST(N'2001-01-01' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang19', N'Đào Thu Hồng', N'Nữ', CAST(N'2001-01-01' AS Date), N'TRAI TRANG-YÊN MĨ', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang2', N'Đoàn Trung Hiếu', N'Nam', CAST(N'2001-01-01' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang20', N'Đào Phương Thảo', N'Nữ', CAST(N'2001-01-01' AS Date), N'NHÂN HÒA -MI HÀO', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang21', N'Trần Chí Mạnh', N'Nam', CAST(N'2002-02-02' AS Date), N'THANH XUÂN-HÀ NỘI', N'0202456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang22', N'Đoàn Trung Hiếu', N'Nam', CAST(N'2002-02-02' AS Date), N'THANH XUÂN-HÀ NỘI', N'0202456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang23', N'Nê Thanh Toàn', N'Nam', CAST(N'2002-02-02' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0202456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang24', N'Trần Trần Anh Thăng', N'Nam', CAST(N'2002-02-02' AS Date), N'TRAI TRANG-YÊN MĨ', N'0202456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang25', N'Dương Vũ Hoàng Việt', N'Nam', CAST(N'2002-02-02' AS Date), N'NHÂN HÒA -MI HÀO', N'0202456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang26', N'Đặng Tuấn Đạt', N'Nam', CAST(N'2002-02-02' AS Date), N'THANH XUÂN-HÀ NỘI', N'0202456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang27', N'Trần Đức Cườngu', N'Nam', CAST(N'2002-02-02' AS Date), N'THANH XUÂN-HÀ NỘI', N'0202456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang28', N'Trần Đặng Ngọc Thành', N'Nam', CAST(N'2002-02-02' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0202456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang29', N'Trần Thu Hồng', N'Nữ', CAST(N'2002-02-02' AS Date), N'TRAI TRANG-YÊN MĨ', N'0202456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang3', N'Nê Thanh Toàn', N'Nam', CAST(N'2001-01-01' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang30', N'Trần Phương Thảo', N'Nữ', CAST(N'2002-02-02' AS Date), N'NHÂN HÒA -MI HÀO', N'0202456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang31', N'Đặng Chí Mạnh', N'Nam', CAST(N'3003-03-03' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0303456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang32', N'Đoàn Trung Hiếu', N'Nam', CAST(N'3003-03-03' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0303456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang33', N'Nê Thanh Toàn', N'Nam', CAST(N'3003-03-03' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0303456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang34', N'Đặng Trần Anh Thăng', N'Nam', CAST(N'3003-03-03' AS Date), N'TRAI TRANG-YÊN MĨ', N'0303456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang35', N'Dương Vũ Hoàng Việt', N'Nam', CAST(N'3003-03-03' AS Date), N'NHÂN HÒA -MI HÀO', N'0303456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang36', N'Đặng Tuấn Đạt', N'Nam', CAST(N'3003-03-03' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0303456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang37', N'Đặng Đức Cườngu', N'Nam', CAST(N'3003-03-03' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0303456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang38', N'Đặng Đặng Ngọc Thành', N'Nam', CAST(N'3003-03-03' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0303456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang39', N'Đặng Thu Hồng', N'Nữ', CAST(N'3003-03-03' AS Date), N'TRAI TRANG-YÊN MĨ', N'0303456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang4', N'Nguyễn Trần Anh Thăng', N'Nam', CAST(N'2001-01-01' AS Date), N'TRAI TRANG-YÊN MĨ', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang40', N'Đặng Phương Thảo', N'Nữ', CAST(N'3003-03-03' AS Date), N'NHÂN HÒA -MI HÀO', N'0303456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang41', N'Phan Chí Mạnh', N'Nam', CAST(N'4004-04-04' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0404456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang42', N'Đoàn Trung Hiếu', N'Nam', CAST(N'4004-04-04' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0404456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang43', N'Nê Thanh Toàn', N'Nam', CAST(N'4004-04-04' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0404456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang44', N'Phan Trần Anh Thăng', N'Nam', CAST(N'4004-04-04' AS Date), N'TRAI TRANG-YÊN MĨ', N'0404456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang45', N'Dương Vũ Hoàng Việt', N'Nam', CAST(N'4004-04-04' AS Date), N'NHÂN HÒA -MI HÀO', N'0404456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang46', N'Đặng Tuấn Đạt', N'Nam', CAST(N'4004-04-04' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0404456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang47', N'Phan Đức Cườngu', N'Nam', CAST(N'4004-04-04' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0404456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang48', N'Phan Đặng Ngọc Thành', N'Nam', CAST(N'4004-04-04' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0404456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang49', N'Phan Thu Hồng', N'Nữ', CAST(N'4004-04-04' AS Date), N'TRAI TRANG-YÊN MĨ', N'0404456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang5', N'Dương Vũ Hoàng Việt', N'Nam', CAST(N'2001-01-01' AS Date), N'NHÂN HÒA -MI HÀO', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang50', N'Phan Phương Thảo', N'Nữ', CAST(N'3003-03-03' AS Date), N'NHÂN HÒA -MI HÀO', N'0303456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang51', N'Vũ Chí Mạnh', N'Nam', CAST(N'5005-05-05' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0505556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang52', N'Đoàn Trung Hiếu', N'Nam', CAST(N'5005-05-05' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0505556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang53', N'Nê Thanh Toàn', N'Nam', CAST(N'5005-05-05' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0505556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang54', N'Vũ Trần Anh Thăng', N'Nam', CAST(N'5005-05-05' AS Date), N'TRAI TRANG-YÊN MĨ', N'0505556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang55', N'Dương Vũ Hoàng Việt', N'Nam', CAST(N'5005-05-05' AS Date), N'NHÂN HÒA -MI HÀO', N'0505556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang56', N'Đặng Tuấn Đạt', N'Nam', CAST(N'5005-05-05' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0505556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang57', N'Vũ Đức Cườngu', N'Nam', CAST(N'5005-05-05' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0505556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang58', N'Vũ Đặng Ngọc Thành', N'Nam', CAST(N'5005-05-05' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0505556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang59', N'Vũ Thu Hồng', N'Nữ', CAST(N'5005-05-05' AS Date), N'TRAI TRANG-YÊN MĨ', N'0505556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang6', N'Đặng Tuấn Đạt', N'Nam', CAST(N'2001-01-01' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang60', N'Vũ Phương Thảo', N'Nữ', CAST(N'3003-03-03' AS Date), N'NHÂN HÒA -MI HÀO', N'0303556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang61', N'Hồ Chí Mạnh', N'Nam', CAST(N'6006-06-06' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0606666789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang62', N'Đoàn Trung Hiếu', N'Nam', CAST(N'6006-06-06' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0606666789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang63', N'Nê Thanh Toàn', N'Nam', CAST(N'6006-06-06' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0606666789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang64', N'Hồ Trần Anh Thăng', N'Nam', CAST(N'6006-06-06' AS Date), N'TRAI TRANG-YÊN MĨ', N'0606666789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang65', N'Dương Vũ Hoàng Việt', N'Nam', CAST(N'6006-06-06' AS Date), N'NHÂN HÒA -MI HÀO', N'0606666789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang66', N'Đặng Tuấn Đạt', N'Nam', CAST(N'6006-06-06' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0606666789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang67', N'Hồ Đức Cườngu', N'Nam', CAST(N'6006-06-06' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0606666789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang68', N'Hồ Đặng Ngọc Thành', N'Nam', CAST(N'6006-06-06' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0606666789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang69', N'Hồ Thu Hồng', N'Nữ', CAST(N'6006-06-06' AS Date), N'TRAI TRANG-YÊN MĨ', N'0606666789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang7', N'Nguyễn Đức Cườngu', N'Nam', CAST(N'2001-01-01' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang70', N'Hồ Phương Thảo', N'Nữ', CAST(N'3003-03-03' AS Date), N'NHÂN HÒA -MI HÀO', N'0303556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang71', N'Đỗ Chí Mạnh', N'Nam', CAST(N'7007-07-07' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0707777789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang72', N'Đoàn Trung Hiếu', N'Nam', CAST(N'7007-07-07' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0707777789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang73', N'Nê Thanh Toàn', N'Nam', CAST(N'7007-07-07' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0707777789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang74', N'Đỗ Trần Anh Thăng', N'Nam', CAST(N'7007-07-07' AS Date), N'TRAI TRANG-YÊN MĨ', N'0707777789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang75', N'Dương Vũ Hoàng Việt', N'Nam', CAST(N'7007-07-07' AS Date), N'NHÂN HÒA -MI HÀO', N'0707777789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang76', N'Đặng Tuấn Đạt', N'Nam', CAST(N'7007-07-07' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0707777789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang77', N'Đỗ Đức Cườngu', N'Nam', CAST(N'7007-07-07' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0707777789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang78', N'Đỗ Đặng Ngọc Thành', N'Nam', CAST(N'7007-07-07' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0707777789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang79', N'Đỗ Thu Hồng', N'Nữ', CAST(N'7007-07-07' AS Date), N'TRAI TRANG-YÊN MĨ', N'0707777789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang8', N'Nguyễn Đặng Ngọc Thành', N'Nam', CAST(N'2001-01-01' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang80', N'Đỗ Phương Thảo', N'Nữ', CAST(N'3003-03-03' AS Date), N'NHÂN HÒA -MI HÀO', N'0303556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang81', N'Dương Chí Mạnh', N'Nam', CAST(N'8008-08-08' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0808888889')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang82', N'Đoàn Trung Hiếu', N'Nam', CAST(N'8008-08-08' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0808888889')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang83', N'Nê Thanh Toàn', N'Nam', CAST(N'8008-08-08' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0808888889')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang84', N'Dương Trần Anh Thăng', N'Nam', CAST(N'8008-08-08' AS Date), N'TRAI TRANG-YÊN MĨ', N'0808888889')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang85', N'Dương Vũ Hoàng Việt', N'Nam', CAST(N'8008-08-08' AS Date), N'NHÂN HÒA -MI HÀO', N'0808888889')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang86', N'Đặng Tuấn Đạt', N'Nam', CAST(N'8008-08-08' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0808888889')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang87', N'Dương Đức Cườngu', N'Nam', CAST(N'8008-08-08' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0808888889')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang88', N'Dương Đặng Ngọc Thành', N'Nam', CAST(N'8008-08-08' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0808888889')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang89', N'Dương Thu Hồng', N'Nữ', CAST(N'8008-08-08' AS Date), N'TRAI TRANG-YÊN MĨ', N'0808888889')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang9', N'Nguyễn Thu Hồng', N'Nữ', CAST(N'2001-01-01' AS Date), N'TRAI TRANG-YÊN MĨ', N'0101456789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang90', N'Dương Phương Thảo', N'Nữ', CAST(N'3003-03-03' AS Date), N'NHÂN HÒA -MI HÀO', N'0303556789')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang91', N'Phan Chí Mạnh', N'Nam', CAST(N'9009-09-09' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0909999999')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang92', N'Đoàn Trung Hiếu', N'Nam', CAST(N'9009-09-09' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0909999999')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang93', N'Nê Thanh Toàn', N'Nam', CAST(N'9009-09-09' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0909999999')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang94', N'Phan Trần Anh Thăng', N'Nam', CAST(N'9009-09-09' AS Date), N'TRAI TRANG-YÊN MĨ', N'0909999999')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang95', N'Dương Vũ Hoàng Việt', N'Nam', CAST(N'9009-09-09' AS Date), N'NHÂN HÒA -MI HÀO', N'0909999999')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang96', N'Đặng Tuấn Đạt', N'Nam', CAST(N'9009-09-09' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0909999999')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang97', N'Phan Đức Cườngu', N'Nam', CAST(N'9009-09-09' AS Date), N'KIM ĐỘNG-HƯNG YÊN', N'0909999999')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang98', N'Phan Đặng Ngọc Thành', N'Nam', CAST(N'9009-09-09' AS Date), N'VĨNH PHÚC-VĂN GIANG', N'0909999999')
INSERT [dbo].[KhachHang] ([Khachhang_id], [Khachhang_name], [Gioitinh], [Ngaysinh], [Diachi], [Sodt]) VALUES (N'Khachhang99', N'Phan Thu Hồng', N'Nữ', CAST(N'9009-09-09' AS Date), N'TRAI TRANG-YÊN MĨ', N'0909999999')
GO
INSERT [dbo].[LoaiSp] ([Loaisp_id], [Loaisp_name], [mota]) VALUES (N'lsp1', N'Rau củ', N'loại sản phẩm 1')
INSERT [dbo].[LoaiSp] ([Loaisp_id], [Loaisp_name], [mota]) VALUES (N'lsp10', N'Rượu', N'loại sản phẩm 10')
INSERT [dbo].[LoaiSp] ([Loaisp_id], [Loaisp_name], [mota]) VALUES (N'lsp11', N'Nước khoáng', N'loại sản phẩm 11')
INSERT [dbo].[LoaiSp] ([Loaisp_id], [Loaisp_name], [mota]) VALUES (N'lsp2', N'Đồ ăn nhanh', N'loại sản phẩm 2')
INSERT [dbo].[LoaiSp] ([Loaisp_id], [Loaisp_name], [mota]) VALUES (N'lsp3', N'Món chính', N'loại sản phẩm 3')
INSERT [dbo].[LoaiSp] ([Loaisp_id], [Loaisp_name], [mota]) VALUES (N'lsp4', N'Món tráng miệng', N'loại sản phẩm 4')
INSERT [dbo].[LoaiSp] ([Loaisp_id], [Loaisp_name], [mota]) VALUES (N'lsp5', N'Nước uống', N'loại sản phẩm 5')
INSERT [dbo].[LoaiSp] ([Loaisp_id], [Loaisp_name], [mota]) VALUES (N'LSPhoaqua', N'Hoa Qủa', N'Loại sả phẩm .......')
GO
INSERT [dbo].[News] ([Mabaiviet], [Tieude], [Noidung], [Anh]) VALUES (N'A', N'TP HCM thí điểm bán thực phẩm bình ổn lưu động tại khu chế xuất', N'Ngày 22-11, tại KCX Tân Thuận, Sở Công Thương TP HCM và Ban Quản lý các KCX-KCN TP HCM (Hepza) tổ chức lễ khai mạc chương trình "Thực phẩm bình ổn lưu động". Tại đây, khoảng 100 mặt hàng thực phẩm tươi sống (thịt heo, bò đông lạnh, rau củ quả, trái cây...), thực phẩm chế biến... của các đơn vị Chợ Sale, Go Green, Grove Fresh, Nutifood, TTC, Coca-Cola được bán với giá bình ổn, thấp hơn giá thị trường 5%-10%. Đặc biệt, nhiều mặt hàng được giảm giá 10%-50%.', N'asset/images/News/tin1.jpeg')
INSERT [dbo].[News] ([Mabaiviet], [Tieude], [Noidung], [Anh]) VALUES (N'bv2', N'Trung Quốc: Giá rau củ quả tăng 3 lần, người dân hối hả đổ tới siêu thị', N'(NLĐO) - Sau khi chính phủ Trung Quốc yêu cầu người dân tích trữ nhu yếu phẩm, hàng loạt siêu thị đã rơi vào tình trạng quá tải. Ngày 4-11, trên mạng xã hội lan truyền hình ảnh người dân Trung Quốc đổ xô tới các siêu thị để mua nhu yếu phẩm, gây ra tình trạng quá tải.  Trang Daily Sabah đưa tin người dân ở thủ đô Bắc Kinh cũng tới các khu chợ để mua bắp cải, gạo và dầu ăn dự trữ trong hai ngày 2 và 3-11.  Một phụ nữ vừa chất gạo lên chiếc xe đạp ở bên ngoài một siêu thị tại thủ đô Bắc Kinh vừa nói: "Mùa đông lạnh lẽo sắp đến. Chúng tôi muốn đảm bảo sẽ có đủ thức ăn". Một hàng dài người được nhìn thấy xếp hàng trước khu bán bắp cải của siêu thị.', N'asset/images/News/tq.jpg')
GO
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaC40', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC1', N'Công ty TNHH MANHH', N'KIM ĐỘNG-HƯNG YÊN', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC100', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0223556999')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC11', N'Công ty TNHH AHHDA', N'KIM ĐỘNG-HƯNG YÊN', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC12', N'Công ty Thực phẩm sạch HAHDA', N'KIM ĐỘNG-HƯNG YÊN', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC13', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC14', N'Công ty THHH AnhT', N'TRAI TRANG-YÊN MĨ', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC15', N'Công ty nước giải khát Vietsoilder', N'NHÂN HÒA -MĨ HÀO', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC16', N'Công ty TNHH AHHDA', N'KIM ĐỘNG-HƯNG YÊN', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC17', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC18', N'Công ty freshfood Toanp', N'VĨNH PHÚC-VĂN GIANG', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC19', N'Công ty THHH AnhTang', N'TRAI TRANG-YÊN MĨ', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC2', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC20', N'Công ty TNHH AHHDA', N'KIM ĐỘNG-HƯNG YÊN', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC21', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC22', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC23', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC24', N'Công ty THHH ATHAGN', N'TRAI TRANG-YÊN MĨ', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC25', N'Công ty nước giải khát Vietsoilder', N'NHÂN HÒA -MĨ HÀO', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC26', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC27', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC28', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC29', N'Công ty THHH ATHAGN', N'TRAI TRANG-YÊN MĨ', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC3', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC30', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC31', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0333456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC32', N'Công ty Thực phẩm sạch HIIDA', N'KIM ĐỘNG-HƯNG YÊN', N'0333456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC33', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0333456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC34', N'Công ty THHH ATHAGN', N'TRAI TRANG-YÊN MĨ', N'0333456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC35', N'Công ty nước giải khát Vietsoilder', N'NHÂN HÒA -MĨ HÀO', N'0333456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC36', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0333456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC37', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0333456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC38', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0333456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC39', N'Công ty THHH ATHAGN', N'TRAI TRANG-YÊN MĨ', N'0333456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC4', N'Công ty THHH AnhThang', N'TRAI TRANG-YÊN MĨ', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC41', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0444456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC42', N'Công ty Thực phẩm sạch HIIDA', N'KIM ĐỘNG-HƯNG YÊN', N'0444456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC43', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0444456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC44', N'Công ty THHH ATHAGN', N'TRAI TRANG-YÊN MĨ', N'0444456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC45', N'Công ty nước giải khát Vietsoilder', N'NHÂN HÒA -MĨ HÀO', N'0444456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC46', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0444456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC47', N'Công ty Thực phẩm sạch HIIDA', N'KIM ĐỘNG-HƯNG YÊN', N'0444456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC48', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0444456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC49', N'Công ty THHH ATHAGN', N'TRAI TRANG-YÊN MĨ', N'0444456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC5', N'Công ty nước giải khát Vietsoilder', N'NHÂN HÒA -MĨ HÀO', N'0123456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC50', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0223456789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC51', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0555556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC52', N'Công ty Thực phẩm sạch HIIDA', N'KIM ĐỘNG-HƯNG YÊN', N'0555556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC53', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0555556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC54', N'Công ty THHH ATHAGN', N'TRAI TRANG-YÊN MĨ', N'0555556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC55', N'Công ty nước giải khát Vietsoilder', N'NHÂN HÒA -MĨ HÀO', N'0555556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC56', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0555556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC57', N'Công ty Thực phẩm sạch HIIDA', N'KIM ĐỘNG-HƯNG YÊN', N'0555556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC58', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0555556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC59', N'Công ty THHH ATHAGN', N'TRAI TRANG-YÊN MĨ', N'0555556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC60', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0223556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC61', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0666666789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC62', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0666666789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC63', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0666666789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC64', N'Công ty THHH ATHAGN', N'TRAI TRANG-YÊN MĨ', N'0666666789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC65', N'Công ty nước giải khát Vietsoilder', N'NHÂN HÒA -MĨ HÀO', N'0666666789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC66', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0666666789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC67', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0666666789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC68', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0666666789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC69', N'Công ty THHH ATHAGN', N'TRAI TRANG-YÊN MĨ', N'0666666789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC70', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0223556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC71', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0777777789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC72', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0777777789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC73', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0777777789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC74', N'Công ty THHH AnhThang', N'TRAI TRANG-YÊN MĨ', N'0777777789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC75', N'Công ty nước giải khát Vietsoilder', N'NHÂN HÒA -MĨ HÀO', N'0777777789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC76', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0777777789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC77', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0777777789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC78', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0777777789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC79', N'Công ty THHH AnhThang', N'TRAI TRANG-YÊN MĨ', N'0777777789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC80', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0223556789')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC81', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0888888889')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC82', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0888888889')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC83', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0888888889')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC84', N'Công ty THHH AnhThang', N'TRAI TRANG-YÊN MĨ', N'0888888889')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC85', N'Công ty nước giải khát Vietsoilder', N'NHÂN HÒA -MĨ HÀO', N'0888888889')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC86', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0888888889')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC87', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0888888889')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC88', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0888888889')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC89', N'Công ty THHH AnhThang', N'TRAI TRANG-YÊN MĨ', N'0888888889')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC90', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0223556889')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC91', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0999999999')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC92', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0999999999')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC93', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0999999999')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC94', N'Công ty THHH AnhThang', N'TRAI TRANG-YÊN MĨ', N'0999999999')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC95', N'Công ty nước giải khát Vietsoilder', N'NHÂN HÒA -MĨ HÀO', N'0999999999')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC96', N'Công ty TNHH ZEDĐ', N'KIM ĐỘNG-HƯNG YÊN', N'0999999999')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC97', N'Công ty Thực phẩm sạch Hieuu', N'KIM ĐỘNG-HƯNG YÊN', N'0999999999')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC98', N'Công ty freshfood Toanvip', N'VĨNH PHÚC-VĂN GIANG', N'0999999999')
INSERT [dbo].[Nhacungcap] ([Nhacungcap_id], [Nhacungcap_name], [Diachi], [Sodt]) VALUES (N'NhaCC99', N'Công ty THHH AnhThang', N'TRAI TRANG-YÊN MĨ', N'0999999999')
GO
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien01', N'Nguyễn Thị Xuân', N'Nữ', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien010', N'Đặng Văn Lâm', N'Nam', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien0100', N'Đặng Văn Lâm', N'Nam', N'Hưng Yên', N'999999989')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien011', N'Nguyễn Thu Hương', N'Nữ', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien012', N'Nguyễn Thị Hạ Vy', N'Nữ', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien013', N'Nguyễn Thị Thu Hà', N'Nữ', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien014', N'Nguyễn Văn Đông', N'Nữ', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien015', N'Nguyễn An Văn', N'Nam', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien016', N'Nguyễn Hải Tuấn', N'N', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien017', N'Đỗ Đức Hoàng ', N'Nam', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien018', N'Nguyễn Hồng Hường', N'Nữ', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien019', N'Nguyễn Đạt Trọng', N'Nam', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien02', N'Nguyễn Thị Hạ', N'Nam', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien020', N'Đặng Lâm Văn ', N'Nam', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien021', N'Lê Thị Xuân', N'Nữ', N'Hưng Yên', N'223456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien022', N'Lê Thị Hạ', N'Nữ', N'Hưng Yên', N'223456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien023', N'Lê Thị Thu', N'Nữ', N'Hưng Yên', N'223456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien024', N'Lê Thị Đông', N'Nữ', N'Hưng Yên', N'223456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien025', N'Lê Văn An', N'Nam', N'Hưng Yên', N'223456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien026', N'Lê Tuấn Hải', N'N', N'Hưng Yên', N'223456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien027', N'Đỗ Hoàng Đức', N'Nam', N'Hưng Yên', N'223456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien028', N'Lê Thị Hường', N'Nữ', N'Hưng Yên', N'223456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien029', N'Lê Trọng Đạt', N'Nam', N'Hưng Yên', N'223456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien03', N'Nguyễn Thị Thu', N'Nữ', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien030', N'Đặng Văn Lâm', N'Nam', N'Hưng Yên', N'223456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien031', N'Đỗ Thị Xuân', N'Nữ', N'Hưng Yên', N'333456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien032', N'Đỗ Thị Hạ', N'Nữ', N'Hưng Yên', N'333456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien033', N'Đỗ Thị Thu', N'Nữ', N'Hưng Yên', N'333456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien034', N'Đỗ Thị Đông', N'Nữ', N'Hưng Yên', N'333456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien035', N'Đỗ Văn An', N'Nam', N'Hưng Yên', N'333456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien036', N'Đỗ Tuấn Hải', N'N', N'Hưng Yên', N'333456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien037', N'Đỗ Hoàng Đức', N'Nam', N'Hưng Yên', N'333456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien038', N'Đỗ Thị Hường', N'Nữ', N'Hưng Yên', N'333456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien039', N'Đỗ Trọng Đạt', N'Nam', N'Hưng Yên', N'333456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien04', N'Nguyễn Thị Đông', N'Nam', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien040', N'Đặng Văn Lâm', N'Nam', N'Hưng Yên', N'444456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien041', N'Đào Thị Xuân', N'Nữ', N'Hưng Yên', N'444456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien042', N'Đào Thị Hạ', N'Nữ', N'Hưng Yên', N'444456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien043', N'Đào Thị Thu', N'Nữ', N'Hưng Yên', N'444456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien044', N'Đào Thị Đông', N'Nữ', N'Hưng Yên', N'444456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien045', N'Đào Văn An', N'Nam', N'Hưng Yên', N'444456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien046', N'Đào Tuấn Hải', N'N', N'Hưng Yên', N'444456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien047', N'Đỗ Hoàng Đức', N'Nam', N'Hưng Yên', N'444456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien048', N'Đào Thị Hường', N'Nữ', N'Hưng Yên', N'444456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien049', N'Đào Trọng Đạt', N'Nam', N'Hưng Yên', N'444456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien05', N'Đào Văn An', N'Nam', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien050', N'Đặng Văn Lâm', N'Nam', N'Hưng Yên', N'555556789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien051', N'Hồ Thị Xuân', N'Nữ', N'Hưng Yên', N'555556789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien052', N'Hồ Thị Hạ', N'Nữ', N'Hưng Yên', N'555556789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien053', N'Hồ Thị Thu', N'Nữ', N'Hưng Yên', N'555556789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien054', N'Hồ Thị Đông', N'Nữ', N'Hưng Yên', N'555556789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien055', N'Hồ Văn An', N'Nam', N'Hưng Yên', N'555556789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien056', N'Hồ Tuấn Hải', N'N', N'Hưng Yên', N'555556789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien057', N'Đỗ Hoàng Đức', N'Nam', N'Hưng Yên', N'555556789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien058', N'Hồ Thị Hường', N'Nữ', N'Hưng Yên', N'555556789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien059', N'Hồ Trọng Đạt', N'Nam', N'Hưng Yên', N'555556789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien06', N'Nguyễn Tuấn Hải', N'N', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien060', N'Đặng Văn Lâm', N'Nam', N'Hưng Yên', N'666666789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien061', N'Tô Thị Xuân', N'Nữ', N'Hưng Yên', N'666666789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien062', N'Tô Thị Hạ', N'Nữ', N'Hưng Yên', N'666666789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien063', N'Tô Thị Thu', N'Nữ', N'Hưng Yên', N'666666789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien064', N'Tô Thị Đông', N'Nữ', N'Hưng Yên', N'666666789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien065', N'Tô Văn An', N'Nam', N'Hưng Yên', N'666666789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien066', N'Tô Tuấn Hải', N'N', N'Hưng Yên', N'666666789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien067', N'Đỗ Hoàng Đức', N'Nam', N'Hưng Yên', N'666666789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien068', N'Tô Thị Hường', N'Nữ', N'Hưng Yên', N'666666789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien069', N'Tô Trọng Đạt', N'Nam', N'Hưng Yên', N'666666789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien07', N'Đỗ Hoàng Đức', N'Nam', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien070', N'Đặng Văn Lâm', N'Nam', N'Hưng Yên', N'777777789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien071', N'Phan Thị Xuân', N'Nữ', N'Hưng Yên', N'777777789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien072', N'Phan Thị Hạ', N'Nữ', N'Hưng Yên', N'777777789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien073', N'Phan Thị Thu', N'Nữ', N'Hưng Yên', N'777777789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien074', N'Phan Thị Đông', N'Nữ', N'Hưng Yên', N'777777789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien075', N'Phan Văn An', N'Nam', N'Hưng Yên', N'777777789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien076', N'Phan Tuấn Hải', N'N', N'Hưng Yên', N'777777789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien077', N'Đỗ Hoàng Đức', N'Nam', N'Hưng Yên', N'777777789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien078', N'Phan Thị Hường', N'Nữ', N'Hưng Yên', N'777777789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien079', N'Phan Trọng Đạt', N'Nam', N'Hưng Yên', N'777777789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien08', N'Nguyễn Thị Hường', N'Nữ', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien080', N'Đặng Văn Lâm', N'Nam', N'Hưng Yên', N'888888889')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien081', N'Tào Thị Xuân', N'Nữ', N'Hưng Yên', N'888888889')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien082', N'Tào Thị Hạ', N'Nam', N'Hưng Yên', N'888888889')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien083', N'Tào Thị Thu', N'Nữ', N'Hưng Yên', N'888888889')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien084', N'Tào Thị Đông', N'Nữ', N'Hưng Yên', N'888888889')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien085', N'Tào Văn An', N'Nam', N'Hưng Yên', N'888888889')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien086', N'Tào Tuấn Hải', N'N', N'Hưng Yên', N'888888889')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien087', N'Đỗ Hoàng Đức', N'Nam', N'Hưng Yên', N'888888889')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien088', N'Tào Thị Hường', N'Nữ', N'Hưng Yên', N'888888889')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien089', N'Tào Trọng Đạt', N'Nam', N'Hưng Yên', N'888888889')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien09', N'Đào Trọng Đạt', N'Nam', N'Hưng Yên', N'123456789')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien090', N'Đặng Văn Lâm', N'Nam', N'Hưng Yên', N'999999989')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien091', N'Trương Thị Xuân', N'Nữ', N'Hưng Yên', N'999999989')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien092', N'Trương Thị Hạ', N'Nam', N'Hưng Yên', N'999999989')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien093', N'Trương Thị Thu', N'Nữ', N'Hưng Yên', N'999999989')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien094', N'Trương Thị Đông', N'Nữ', N'Hưng Yên', N'999999989')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien095', N'Trương Văn An', N'Nam', N'Hưng Yên', N'999999989')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien096', N'Trương Tuấn Hải', N'N', N'Hưng Yên', N'999999989')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien097', N'Đỗ Hoàng Đức', N'Nam', N'Hưng Yên', N'999999989')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien098', N'Trương Thị Hường', N'Nữ', N'Hưng Yên', N'999999989')
INSERT [dbo].[NHANVIEN] ([NV_id], [NV_name], [gioitinh], [diachi], [sdt]) VALUES (N'Nhanvien099', N'Trương Trọng Đạt', N'Nam', N'Hưng Yên', N'999999989')
GO
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'pbovien', N'lsp2', N'Bò viên', 50000, N'NhaCC2', 500, N'asset/images/productfood/bovien.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'pcavien', N'lsp2', N'Cá viên chiên', 45000, N'NhaCC1', 300, N'asset/images/productfood/cavien.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'pchom', N'LSPhoaqua', N'Chôm Chôm', 150000, N'NhaCC4', 250, N'asset/images/productfood/chomchom.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'pduagang', N'LSPhoaqua', N'Dưa Gang', 140000, N'NhaCC2', 300, N'asset/images/productfood/duagang.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'pduahau', N'LSPhoaqua', N'Dưa Hấu', 150000, N'NhaCC5', 400, N'asset/images/productfood/duahau.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'plapxuong', N'lsp2', N'Lạp Xưởng', 60000, N'NhaCC1', 400, N'asset/images/productfood/lapxuong.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'pNho', N'LSPhoaqua', N'Nho', 50000, N'NhaCC4', 300, N'asset/images/productfood/Nho.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'produachuot', N'lsp1', N'Dưa chuột', 14000, N'NhaCC1', 200, N'asset/images/productfood/duachuot.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product quecay', N'lsp2', N'Que cay', 30000, N'NhaCC2', 150, N'asset/images/productfood/quecay.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product01', N'lsp1', N'Bắp cải', 100000, N'NhaCC1', 1, N'asset/images/productfood/bapcai2.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product02', N'lsp2', N'Humberger', 220000, N'NhaCC2', 100, N'asset\img\product\humberger.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product03', N'lsp3', N'Sườn sào chua ngọt', 100000, N'NhaCC3', 100, N'asset\img\product\suonsao.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product04', N'lsp4', N'Bánh kem', 100000, N'NhaCC4', 100, N'asset\img\product\banhkem.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product05', N'lsp5', N'Nước ngọt coca', 15000, N'NhaCC5', 100, N'asset\img\product\coca.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product06', N'lsp1', N'Cà rốt', 150000, N'NhaCC1', 100, N'asset\img\product\carot.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product08', N'lsp3', N'Gà xào xả ớt', 100000, N'NhaCC3', 100, N'asset\img\product\gaxaot.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product09', N'lsp4', N'Bánh plan Pháp', 100000, N'NhaCC4', 100, N'asset\img\product\plane.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product10', N'lsp5', N'Nước cam', 15000, N'NhaCC5', 100, N'asset\img\product\cam.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product13', N'lsp5', N'Pepsi', 20000, N'NhaCC4', 169, N'asset/images/productfood/pepsi-500x500.png')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'product14', N'lsp1', N'Táo', 50000, N'NhaCC1', 150, N'asset/images/productfood/táo.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productbidao', N'lsp5', N'Bí Đao', 17000, N'NhaCC5', 180, N'asset/images/productfood/bidao.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productcaithao', N'lsp1', N'Cải thảo', 50000, N'NhaCC1', 150, N'asset/images/productfood/caithao.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productcha', N'lsp3', N'Bún đậu', 150000, N'NhaCC3', 200, N'asset/images/productfood/bundau.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productchuoi', N'LSPhoaqua', N'Chuối', 150000, N'NhaCC2', 160, N'asset/images/productfood/chuoi.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productdudu', N'LSPhoaqua', N'Đu đủ', 50000, N'NhaCC2', 150, N'asset/images/productfood/dudu.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productKFC', N'lsp2', N'Gà rán KFC', 170000, N'NhaCC1', 5000, N'asset/images/productfood/gakfc.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productkiwi', N'LSPhoaqua', N'Kiwi', 150000, N'NhaCC1', 1500, N'asset/images/productfood/kiwi.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productmiy', N'lsp3', N'Mỳ Ý', 500000, N'NhaCC2', 150, N'asset/images/productfood/Italia noodle.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productngo', N'lsp1', N'Ngô', 15000, N'NhaCC3', 140, N'asset/images/productfood/bapngo.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productsting', N'lsp5', N'STING', 20000, N'NhaCC5', 1000, N'asset/images/productfood/string.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productthitbo', N'lsp3', N'Thịt bò xào', 150000, N'NhaCC4', 100, N'asset/images/productfood/11.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'productyoo', N'lsp5', N'Nước uống Yooh', 20000, N'NhaCC4', 200, N'asset/images/productfood/yooh.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'prosusu', N'lsp1', N'Su Su', 40000, N'NhaCC1', 150, N'asset/images/productfood/susu.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'pxucxich', N'lsp2', N'Xúc xích chiên', 50000, N'NhaCC1', 300, N'asset/images/productfood/xucxich.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'raucu01', N'lsp1', N'Nấm kim', 50000, N'NhaCC1', 150, N'asset/images/productfood/namkim.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'sanpham1', N'lsp1', N'Khoai tây chiên', 45000, N'NhaCC1', 50, N'asset/images/productfood/khoaitay.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'sevenup101', N'lsp5', N'Trà thảo Mộc', 25000, N'NhaCC5', 160, N'asset/images/productfood/thaomoc.jpg')
INSERT [dbo].[SanPhams] ([sanpham_id], [Loaisp_id], [sanpham_name], [gia], [Nhacungcap_id], [Soluong], [picture]) VALUES (N'SPvietquat', N'LSPhoaqua', N'Việt Quất', 150000, N'NhaCC2', 160, N'asset/images/productfood/vietquat.jpg')
GO
INSERT [dbo].[TEST] ([id], [anh]) VALUES (N'13', N'asset/images/productfood/nuoccam.jpg')
INSERT [dbo].[TEST] ([id], [anh]) VALUES (N'aaaaa', N'asset/images/productfood/khoaitay.jpg')
INSERT [dbo].[TEST] ([id], [anh]) VALUES (N'adad', N'asset/images/productfood/11.jpg')
INSERT [dbo].[TEST] ([id], [anh]) VALUES (N'adadd', N'asset/images/productfood/cam.jpg')
INSERT [dbo].[TEST] ([id], [anh]) VALUES (N'add', NULL)
INSERT [dbo].[TEST] ([id], [anh]) VALUES (N't1', N'asset\img\product\bapcai.jpg')
GO
INSERT [dbo].[Userss] ([Users_id], [Passwords], [email]) VALUES (N'Admin', N'123', N'admin@gmail.com')
INSERT [dbo].[Userss] ([Users_id], [Passwords], [email]) VALUES (N'us1', N'123', N'a1112@gmail.com')
GO
ALTER TABLE [dbo].[Dathang]  WITH CHECK ADD FOREIGN KEY([NV_id])
REFERENCES [dbo].[NHANVIEN] ([NV_id])
GO
ALTER TABLE [dbo].[Dathang]  WITH CHECK ADD  CONSTRAINT [FK__Dathang__sanpham__45F365D3] FOREIGN KEY([sanpham_id])
REFERENCES [dbo].[SanPhams] ([sanpham_id])
GO
ALTER TABLE [dbo].[Dathang] CHECK CONSTRAINT [FK__Dathang__sanpham__45F365D3]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD FOREIGN KEY([Khachhang_id])
REFERENCES [dbo].[KhachHang] ([Khachhang_id])
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK__Donhang__sanpham__403A8C7D] FOREIGN KEY([sanpham_id])
REFERENCES [dbo].[SanPhams] ([sanpham_id])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK__Donhang__sanpham__403A8C7D]
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD FOREIGN KEY([Loaisp_id])
REFERENCES [dbo].[LoaiSp] ([Loaisp_id])
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD  CONSTRAINT [FK_SanPhams_Nhacungcap] FOREIGN KEY([Nhacungcap_id])
REFERENCES [dbo].[Nhacungcap] ([Nhacungcap_id])
GO
ALTER TABLE [dbo].[SanPhams] CHECK CONSTRAINT [FK_SanPhams_Nhacungcap]
GO
