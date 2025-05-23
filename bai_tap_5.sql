USE [qlBaiGuiXeDB]
GO
/****** Object:  Table [dbo].[GiaVe]    Script Date: 4/23/2025 5:04:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiaVe](
	[MaGia] [varchar](10) NOT NULL,
	[LoaiXe] [nvarchar](20) NOT NULL,
	[GiaTien] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaGia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/23/2025 5:04:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[SoDienThoai] [varchar](10) NOT NULL,
	[DiaChi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 4/23/2025 5:04:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[SoDienThoai] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeXe]    Script Date: 4/23/2025 5:04:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeXe](
	[MaVe] [varchar](10) NOT NULL,
	[BienSo] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NOT NULL,
	[ThoiGianVao] [datetime] NOT NULL,
	[ThoiGianRa] [datetime] NULL,
	[TrangThai] [bit] NOT NULL,
	[MaGia] [varchar](10) NULL,
	[TongTien] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaVe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xe]    Script Date: 4/23/2025 5:04:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xe](
	[BienSo] [varchar](10) NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[LoaiXe] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[BienSo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[GiaVe] ([MaGia], [LoaiXe], [GiaTien]) VALUES (N'GIA001', N'Xe máy', CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[GiaVe] ([MaGia], [LoaiXe], [GiaTien]) VALUES (N'GIA002', N'Ô tô', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[GiaVe] ([MaGia], [LoaiXe], [GiaTien]) VALUES (N'GV001', N'Xe máy', CAST(5000.00 AS Decimal(10, 2)))
INSERT [dbo].[GiaVe] ([MaGia], [LoaiXe], [GiaTien]) VALUES (N'GV002', N'Ô tô', CAST(15000.00 AS Decimal(10, 2)))
INSERT [dbo].[GiaVe] ([MaGia], [LoaiXe], [GiaTien]) VALUES (N'GV003', N'Xe máy', CAST(6000.00 AS Decimal(10, 2)))
INSERT [dbo].[GiaVe] ([MaGia], [LoaiXe], [GiaTien]) VALUES (N'GV004', N'Ô tô', CAST(20000.00 AS Decimal(10, 2)))
INSERT [dbo].[GiaVe] ([MaGia], [LoaiXe], [GiaTien]) VALUES (N'GV005', N'Xe máy', CAST(5500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [SoDienThoai], [DiaChi]) VALUES (N'KH001', N'Nguyễn Văn An', N'0987654321', N'123 Đường Láng, Thái Nguyên')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [SoDienThoai], [DiaChi]) VALUES (N'KH002', N'Trần Thị Bình', N'0912345678', N'45 Nguyễn Huệ, Thái Nguyên')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [SoDienThoai], [DiaChi]) VALUES (N'KH003', N'Lê Văn Cường', N'0932145678', N'67 Lê Lợi, Thái Nguyên')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [SoDienThoai], [DiaChi]) VALUES (N'KH004', N'Phạm Thị Dung', N'0971234567', N'89 Trần Phú, Thái Nguyên')
INSERT [dbo].[KhachHang] ([MaKH], [HoTen], [SoDienThoai], [DiaChi]) VALUES (N'KH005', N'Hoàng Văn Em', N'0943216789', N'12 Phạm Ngũ Lão, Thái Nguyên')
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SoDienThoai]) VALUES (N'NV001', N'Nguyễn Thị Hoa', N'0981234567')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SoDienThoai]) VALUES (N'NV002', N'Trần Văn Hùng', N'0918765432')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SoDienThoai]) VALUES (N'NV003', N'Lê Thị Mai', N'0937654321')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SoDienThoai]) VALUES (N'NV004', N'Phạm Văn Nam', N'0976543210')
INSERT [dbo].[NhanVien] ([MaNV], [HoTen], [SoDienThoai]) VALUES (N'NV005', N'Hoàng Thị Lan', N'0945678901')
GO
INSERT [dbo].[VeXe] ([MaVe], [BienSo], [MaNV], [ThoiGianVao], [ThoiGianRa], [TrangThai], [MaGia], [TongTien]) VALUES (N'VE001', N'29A12345', N'NV001', CAST(N'2025-04-22T08:00:00.000' AS DateTime), CAST(N'2025-04-23T10:00:00.000' AS DateTime), 1, N'GIA001', CAST(130.00 AS Decimal(10, 2)))
INSERT [dbo].[VeXe] ([MaVe], [BienSo], [MaNV], [ThoiGianVao], [ThoiGianRa], [TrangThai], [MaGia], [TongTien]) VALUES (N'VE002', N'30B67890', N'NV002', CAST(N'2025-04-22T09:00:00.000' AS DateTime), CAST(N'2025-04-23T12:00:00.000' AS DateTime), 0, N'GIA002', CAST(540.00 AS Decimal(10, 2)))
INSERT [dbo].[VeXe] ([MaVe], [BienSo], [MaNV], [ThoiGianVao], [ThoiGianRa], [TrangThai], [MaGia], [TongTien]) VALUES (N'VE003', N'29C45678', N'NV003', CAST(N'2025-04-22T10:30:00.000' AS DateTime), CAST(N'2025-04-22T14:30:00.000' AS DateTime), 1, N'GIA001', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[VeXe] ([MaVe], [BienSo], [MaNV], [ThoiGianVao], [ThoiGianRa], [TrangThai], [MaGia], [TongTien]) VALUES (N'VE004', N'30A98765', N'NV004', CAST(N'2025-04-22T11:00:00.000' AS DateTime), NULL, 0, NULL, NULL)
INSERT [dbo].[VeXe] ([MaVe], [BienSo], [MaNV], [ThoiGianVao], [ThoiGianRa], [TrangThai], [MaGia], [TongTien]) VALUES (N'VE005', N'29D23456', N'NV005', CAST(N'2025-04-22T12:00:00.000' AS DateTime), CAST(N'2025-04-22T14:00:00.000' AS DateTime), 1, NULL, NULL)
GO
INSERT [dbo].[Xe] ([BienSo], [MaKH], [LoaiXe]) VALUES (N'29A12345', N'KH001', N'Xe máy')
INSERT [dbo].[Xe] ([BienSo], [MaKH], [LoaiXe]) VALUES (N'29C45678', N'KH003', N'Xe máy')
INSERT [dbo].[Xe] ([BienSo], [MaKH], [LoaiXe]) VALUES (N'29D23456', N'KH005', N'Xe máy')
INSERT [dbo].[Xe] ([BienSo], [MaKH], [LoaiXe]) VALUES (N'30A98765', N'KH004', N'Ô tô')
INSERT [dbo].[Xe] ([BienSo], [MaKH], [LoaiXe]) VALUES (N'30B67890', N'KH002', N'Ô tô')
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_GiaVe] FOREIGN KEY([MaGia])
REFERENCES [dbo].[GiaVe] ([MaGia])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_GiaVe]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_NhanVien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_NhanVien]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [FK_VeXe_Xe] FOREIGN KEY([BienSo])
REFERENCES [dbo].[Xe] ([BienSo])
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [FK_VeXe_Xe]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [FK_Xe_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [FK_Xe_KhachHang]
GO
ALTER TABLE [dbo].[GiaVe]  WITH CHECK ADD  CONSTRAINT [CHK_GiaTien] CHECK  (([GiaTien]>(0)))
GO
ALTER TABLE [dbo].[GiaVe] CHECK CONSTRAINT [CHK_GiaTien]
GO
ALTER TABLE [dbo].[GiaVe]  WITH CHECK ADD  CONSTRAINT [CHK_LoaiXe_GiaVe] CHECK  (([LoaiXe]=N'Ô tô' OR [LoaiXe]=N'Xe máy'))
GO
ALTER TABLE [dbo].[GiaVe] CHECK CONSTRAINT [CHK_LoaiXe_GiaVe]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [CHK_ThoiGian] CHECK  (([ThoiGianRa] IS NULL OR [ThoiGianRa]>=[ThoiGianVao]))
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [CHK_ThoiGian]
GO
ALTER TABLE [dbo].[VeXe]  WITH CHECK ADD  CONSTRAINT [CHK_TrangThai] CHECK  (([TrangThai]=(1) OR [TrangThai]=(0)))
GO
ALTER TABLE [dbo].[VeXe] CHECK CONSTRAINT [CHK_TrangThai]
GO
ALTER TABLE [dbo].[Xe]  WITH CHECK ADD  CONSTRAINT [CHK_LoaiXe] CHECK  (([LoaiXe]=N'Ô tô' OR [LoaiXe]=N'Xe máy'))
GO
ALTER TABLE [dbo].[Xe] CHECK CONSTRAINT [CHK_LoaiXe]
GO
/****** Object:  Trigger [dbo].[trg_UpdateTongTien]    Script Date: 4/23/2025 5:04:24 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Lương Văn Học>
-- Create date: <23/4/2025>
-- Description:	<UpdateTongTien cho bảng VeXe>
-- =============================================
CREATE TRIGGER [dbo].[trg_UpdateTongTien]
ON [dbo].[VeXe]
AFTER UPDATE
AS

BEGIN
    SET NOCOUNT ON;

    -- Cập nhật TongTien cho các bản ghi có ThoiGianRa và MaGia hợp lệ
    UPDATE v
    SET v.TongTien = g.GiaTien * DATEDIFF(HOUR, v.ThoiGianVao, v.ThoiGianRa)
    FROM [dbo].[VeXe] v
    INNER JOIN inserted i ON v.MaVe = i.MaVe
    INNER JOIN [dbo].[GiaVe] g ON v.MaGia = g.MaGia
    WHERE i.ThoiGianRa IS NOT NULL
      AND i.ThoiGianRa >= i.ThoiGianVao
      AND i.MaGia IS NOT NULL;

    -- Đặt TongTien = NULL nếu ThoiGianRa hoặc MaGia không hợp lệ
    UPDATE v
    SET v.TongTien = NULL
    FROM [dbo].[VeXe] v
    INNER JOIN inserted i ON v.MaVe = i.MaVe
    WHERE i.ThoiGianRa IS NULL
       OR i.MaGia IS NULL;
END
GO
ALTER TABLE [dbo].[VeXe] ENABLE TRIGGER [trg_UpdateTongTien]
GO
