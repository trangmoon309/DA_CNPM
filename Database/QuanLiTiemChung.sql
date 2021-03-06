USE [QuanLiTiemChung]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 5/17/2020 10:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[idAdmin] [int] NOT NULL,
	[Fullname] [nvarchar](100) NULL,
	[Gender] [nvarchar](100) NULL,
	[iAddress] [nvarchar](100) NULL,
	[Username] [nvarchar](100) NULL,
	[iPassword] [nvarchar](100) NULL,
	[Dob] [date] NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[idAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Animal]    Script Date: 5/17/2020 10:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animal](
	[idVatNuoi] [nvarchar](100) NOT NULL,
	[Vatnuoi_name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idVatNuoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DangkiTiem]    Script Date: 5/17/2020 10:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DangkiTiem](
	[idHoDan] [int] IDENTITY(1,1) NOT NULL,
	[idVaccine] [nvarchar](100) NOT NULL,
	[idVatNuoi] [nvarchar](100) NOT NULL,
	[Number] [int] NULL,
	[Date_register] [datetime] NULL,
 CONSTRAINT [PK_hodan_vaccine] PRIMARY KEY CLUSTERED 
(
	[idHoDan] ASC,
	[idVaccine] ASC,
	[idVatNuoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoDan]    Script Date: 5/17/2020 10:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoDan](
	[idHoDan] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](100) NULL,
	[Password] [nvarchar](100) NULL,
	[Fullname] [nvarchar](100) NULL,
	[Gender] [nvarchar](100) NULL,
	[PhoneNumber] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[Dob] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[idHoDan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 5/17/2020 10:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[idNews] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[LinktoWeb] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[idNews] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schedule]    Script Date: 5/17/2020 10:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schedule](
	[idSchedule] [int] IDENTITY(1,1) NOT NULL,
	[idVaccine] [nvarchar](100) NULL,
	[Vaccine_name] [nvarchar](100) NULL,
	[idVatNuoi] [nvarchar](100) NULL,
	[Vatnuoi_name] [nvarchar](100) NULL,
	[Number_vaccine] [int] NULL,
	[Time_register] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[idSchedule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vaccine_r]    Script Date: 5/17/2020 10:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vaccine_r](
	[idVaccine] [nvarchar](100) NOT NULL,
	[Vaccine_name] [nvarchar](100) NULL,
	[Number] [int] NULL,
	[idVatNuoi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Vaccine_r] PRIMARY KEY CLUSTERED 
(
	[idVaccine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([idAdmin], [Fullname], [Gender], [iAddress], [Username], [iPassword], [Dob]) VALUES (102, N'Huỳnh Nguyễn Phương Trang', N'Nữ', N'Duy Xuyên, Tỉnh Quảng Nam', N'30thangs9', N'Trangmoon309', CAST(N'2000-09-30' AS Date))
INSERT [dbo].[Admin] ([idAdmin], [Fullname], [Gender], [iAddress], [Username], [iPassword], [Dob]) VALUES (103, N'Hoàng Ngọc Khánh Quỳnh', N'Nữ', N'Phường Cẩm Lệ, thành phố Đà Nẵng', N'Conthobeos', N'Qiunqiun', CAST(N'2000-03-15' AS Date))
INSERT [dbo].[Admin] ([idAdmin], [Fullname], [Gender], [iAddress], [Username], [iPassword], [Dob]) VALUES (111, N'Nguyễn Ngọc Huyền', N'Nữ', N'Tx Quảng Trị, Tỉnh Quảng Trị', N'ErinAbbey', N'_jvf_k', CAST(N'2000-06-10' AS Date))
INSERT [dbo].[Animal] ([idVatNuoi], [Vatnuoi_name]) VALUES (N'Anic_6', N'Ngan')
INSERT [dbo].[Animal] ([idVatNuoi], [Vatnuoi_name]) VALUES (N'Anic_7', N'Vịt')
INSERT [dbo].[Animal] ([idVatNuoi], [Vatnuoi_name]) VALUES (N'Anic_8', N'Ngỗng')
INSERT [dbo].[Animal] ([idVatNuoi], [Vatnuoi_name]) VALUES (N'Anic_9', N'Gà')
INSERT [dbo].[Animal] ([idVatNuoi], [Vatnuoi_name]) VALUES (N'Anis_1', N'Bò')
INSERT [dbo].[Animal] ([idVatNuoi], [Vatnuoi_name]) VALUES (N'Anis_2', N'Trâu')
INSERT [dbo].[Animal] ([idVatNuoi], [Vatnuoi_name]) VALUES (N'Anis_3', N'Dê')
INSERT [dbo].[Animal] ([idVatNuoi], [Vatnuoi_name]) VALUES (N'Anis_4', N'Cừu')
INSERT [dbo].[Animal] ([idVatNuoi], [Vatnuoi_name]) VALUES (N'Anis_5', N'Heo')
SET IDENTITY_INSERT [dbo].[HoDan] ON 

INSERT [dbo].[HoDan] ([idHoDan], [Username], [Password], [Fullname], [Gender], [PhoneNumber], [Address], [Dob]) VALUES (1, N'ngochuyen', N'ngochuyen2309', N'nguyen thi ngoc huyen', N'Nữ', N'033221', N'quang tri', CAST(N'2020-10-06' AS Date))
SET IDENTITY_INSERT [dbo].[HoDan] OFF
SET IDENTITY_INSERT [dbo].[Schedule] ON 

INSERT [dbo].[Schedule] ([idSchedule], [idVaccine], [Vaccine_name], [idVatNuoi], [Vatnuoi_name], [Number_vaccine], [Time_register]) VALUES (1, N'Vacc_1', N'Baytril 0.5% Oral Sol', N'Anis_5', N'Heo', 1000, CAST(N'2020-12-12T07:00:00.000' AS DateTime))
INSERT [dbo].[Schedule] ([idSchedule], [idVaccine], [Vaccine_name], [idVatNuoi], [Vatnuoi_name], [Number_vaccine], [Time_register]) VALUES (2, N'Vacc_2', N'Vô tụ huyết trùng', N'Anis_1', N'Bò', 1000, CAST(N'2020-12-12T07:00:00.000' AS DateTime))
INSERT [dbo].[Schedule] ([idSchedule], [idVaccine], [Vaccine_name], [idVatNuoi], [Vatnuoi_name], [Number_vaccine], [Time_register]) VALUES (3, N'Vacc_3', N'Latibon', N'Anic_9', N'Gà', 1000, CAST(N'2020-12-12T07:00:00.000' AS DateTime))
INSERT [dbo].[Schedule] ([idSchedule], [idVaccine], [Vaccine_name], [idVatNuoi], [Vatnuoi_name], [Number_vaccine], [Time_register]) VALUES (4, N'Vacc_4', N'Vô tụ huyết trùng', N'Anis_2', N'Trâu', 1000, CAST(N'2020-12-12T07:00:00.000' AS DateTime))
INSERT [dbo].[Schedule] ([idSchedule], [idVaccine], [Vaccine_name], [idVatNuoi], [Vatnuoi_name], [Number_vaccine], [Time_register]) VALUES (5, N'Vacc_5', N'Lactovet', N'Anic_6', N'Ngan', 1000, CAST(N'2020-12-12T07:00:00.000' AS DateTime))
INSERT [dbo].[Schedule] ([idSchedule], [idVaccine], [Vaccine_name], [idVatNuoi], [Vatnuoi_name], [Number_vaccine], [Time_register]) VALUES (6, N'Vacc_6', N'Lactovet', N'Anic_7', N'Vịt', 1000, CAST(N'2020-12-12T07:00:00.000' AS DateTime))
INSERT [dbo].[Schedule] ([idSchedule], [idVaccine], [Vaccine_name], [idVatNuoi], [Vatnuoi_name], [Number_vaccine], [Time_register]) VALUES (7, N'Vacc_7', N'Lactovet', N'Anic_8', N'Ngỗng', 1000, CAST(N'2020-12-12T07:00:00.000' AS DateTime))
INSERT [dbo].[Schedule] ([idSchedule], [idVaccine], [Vaccine_name], [idVatNuoi], [Vatnuoi_name], [Number_vaccine], [Time_register]) VALUES (8, N'Vacc_8', N'Đậu dê', N'Anis_3', N'Dê', 1000, CAST(N'2020-12-12T07:00:00.000' AS DateTime))
INSERT [dbo].[Schedule] ([idSchedule], [idVaccine], [Vaccine_name], [idVatNuoi], [Vatnuoi_name], [Number_vaccine], [Time_register]) VALUES (9, N'Vacc_9', N'Rabisin', N'Anis_4', N'Cừu', 1000, CAST(N'2020-12-12T07:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Schedule] OFF
INSERT [dbo].[Vaccine_r] ([idVaccine], [Vaccine_name], [Number], [idVatNuoi]) VALUES (N'Vacc_1', N'Baytril 0.5% Oral Sol', 1000, N'Anis_5')
INSERT [dbo].[Vaccine_r] ([idVaccine], [Vaccine_name], [Number], [idVatNuoi]) VALUES (N'Vacc_2', N'Vô tụ huyết trùng', 1000, N'Anis_1')
INSERT [dbo].[Vaccine_r] ([idVaccine], [Vaccine_name], [Number], [idVatNuoi]) VALUES (N'Vacc_3', N'Latibon', 1000, N'Anic_9')
INSERT [dbo].[Vaccine_r] ([idVaccine], [Vaccine_name], [Number], [idVatNuoi]) VALUES (N'Vacc_4', N'Vô tụ huyết trùng', 1000, N'Anis_2')
INSERT [dbo].[Vaccine_r] ([idVaccine], [Vaccine_name], [Number], [idVatNuoi]) VALUES (N'Vacc_5', N'Lactovet', 1000, N'Anic_6')
INSERT [dbo].[Vaccine_r] ([idVaccine], [Vaccine_name], [Number], [idVatNuoi]) VALUES (N'Vacc_6', N'Lactovet', 1000, N'Anic_7')
INSERT [dbo].[Vaccine_r] ([idVaccine], [Vaccine_name], [Number], [idVatNuoi]) VALUES (N'Vacc_7', N'Lactovet', 1000, N'Anic_8')
INSERT [dbo].[Vaccine_r] ([idVaccine], [Vaccine_name], [Number], [idVatNuoi]) VALUES (N'Vacc_8', N'Đậu dê', 1000, N'Anis_3')
INSERT [dbo].[Vaccine_r] ([idVaccine], [Vaccine_name], [Number], [idVatNuoi]) VALUES (N'Vacc_9', N'Rabisin', 1000, N'Anis_4')
ALTER TABLE [dbo].[DangkiTiem]  WITH CHECK ADD  CONSTRAINT [FK_DangkiTiem_Vaccine_r] FOREIGN KEY([idVaccine])
REFERENCES [dbo].[Vaccine_r] ([idVaccine])
GO
ALTER TABLE [dbo].[DangkiTiem] CHECK CONSTRAINT [FK_DangkiTiem_Vaccine_r]
GO
ALTER TABLE [dbo].[DangkiTiem]  WITH CHECK ADD  CONSTRAINT [FK_DKTiem_Animal] FOREIGN KEY([idVatNuoi])
REFERENCES [dbo].[Animal] ([idVatNuoi])
GO
ALTER TABLE [dbo].[DangkiTiem] CHECK CONSTRAINT [FK_DKTiem_Animal]
GO
ALTER TABLE [dbo].[DangkiTiem]  WITH CHECK ADD  CONSTRAINT [FK_DKTiem_HD] FOREIGN KEY([idHoDan])
REFERENCES [dbo].[HoDan] ([idHoDan])
GO
ALTER TABLE [dbo].[DangkiTiem] CHECK CONSTRAINT [FK_DKTiem_HD]
GO
ALTER TABLE [dbo].[DangkiTiem]  WITH CHECK ADD  CONSTRAINT [FK_DKTiem_Vacxin] FOREIGN KEY([idVaccine])
REFERENCES [dbo].[Vacxin] ([idVaccine])
GO
ALTER TABLE [dbo].[DangkiTiem] CHECK CONSTRAINT [FK_DKTiem_Vacxin]
GO
ALTER TABLE [dbo].[Vaccine_r]  WITH CHECK ADD  CONSTRAINT [FK_Vaccine_r_Animal] FOREIGN KEY([idVatNuoi])
REFERENCES [dbo].[Animal] ([idVatNuoi])
GO
ALTER TABLE [dbo].[Vaccine_r] CHECK CONSTRAINT [FK_Vaccine_r_Animal]
GO
