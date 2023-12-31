USE [DB_StudentInformation]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 12/02/2023 20:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[Student_ID] [int] NOT NULL,
	[Name] [varchar](50) NULL,
	[Program_of_Study] [varchar](100) NULL,
	[GPA] [float] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Grade]    Script Date: 12/02/2023 20:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Grade](
	[Student_ID] [int] NOT NULL,
	[Subject_ID] [varchar](5) NOT NULL,
	[Subject_Name] [varchar](50) NOT NULL,
	[Grade] [char](10) NOT NULL,
 CONSTRAINT [PK_Student_Grade] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC,
	[Subject_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[student_Profile]    Script Date: 12/02/2023 20:40:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[student_Profile](
	[Student_ID] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email_Address] [varchar](100) NOT NULL,
	[Phone] [varchar](50) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[City] [varchar](50) NOT NULL,
 CONSTRAINT [PK_student_Profile] PRIMARY KEY CLUSTERED 
(
	[Student_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Student] ([Student_ID], [Name], [Program_of_Study], [GPA]) VALUES (20212, N'Steven Murphy', N'Computer Science', 2)
INSERT [dbo].[Student] ([Student_ID], [Name], [Program_of_Study], [GPA]) VALUES (35750, N'Dylan Rangel', N'Art Education', 3)
INSERT [dbo].[Student] ([Student_ID], [Name], [Program_of_Study], [GPA]) VALUES (36008, N'Andrea Baker', N'Marketing', 3)
INSERT [dbo].[Student] ([Student_ID], [Name], [Program_of_Study], [GPA]) VALUES (40574, N'Linda Hines', N'Computer Science', 3.6)
INSERT [dbo].[Student] ([Student_ID], [Name], [Program_of_Study], [GPA]) VALUES (50460, N'Ernest Barnes', N'Art Education', 3.3)
INSERT [dbo].[Student] ([Student_ID], [Name], [Program_of_Study], [GPA]) VALUES (61559, N'Rebecca Parker', N'Computer Science', 4)
INSERT [dbo].[Student] ([Student_ID], [Name], [Program_of_Study], [GPA]) VALUES (68389, N'William Velez', N'Mathematics', 3.3)
INSERT [dbo].[Student] ([Student_ID], [Name], [Program_of_Study], [GPA]) VALUES (72596, N'Laura Murray', N'Mathematics', 3)
INSERT [dbo].[Student] ([Student_ID], [Name], [Program_of_Study], [GPA]) VALUES (87006, N'Michael Moore', N'Art Education', 4)
INSERT [dbo].[Student] ([Student_ID], [Name], [Program_of_Study], [GPA]) VALUES (89832, N'Jasmine Fletcher', N'Accounting', 2.3)
GO
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (20212, N'S031', N'Subject A', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (20212, N'S032', N'Subject B', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (20212, N'S033', N'Subject C', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (35750, N'S001', N'Subject A', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (35750, N'S002', N'Subject B', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (35750, N'S003', N'Subject C', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (36008, N'S021', N'Subject A', N'C         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (36008, N'S022', N'Subject B', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (36008, N'S023', N'Subject C', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (40574, N'S031', N'Subject A', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (40574, N'S032', N'Subject B', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (40574, N'S033', N'Subject C', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (50460, N'S001', N'Subject A', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (50460, N'S002', N'Subject B', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (50460, N'S003', N'Subject C', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (61559, N'S031', N'Subject A', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (61559, N'S032', N'Subject B', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (61559, N'S033', N'Subject C', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (68389, N'S051', N'Subject A', N'C         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (68389, N'S052', N'Subject B', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (68389, N'S053', N'Subject C', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (72596, N'S051', N'Subject A', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (72596, N'S052', N'Subject B', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (72596, N'S053', N'Subject C', N'C         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (87006, N'S001', N'Subject A', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (87006, N'S002', N'Subject B', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (87006, N'S003', N'Subject C', N'A         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (89832, N'S041', N'Subject A', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (89832, N'S042', N'Subject B', N'B         ')
INSERT [dbo].[Student_Grade] ([Student_ID], [Subject_ID], [Subject_Name], [Grade]) VALUES (89832, N'S043', N'Subject C', N'D         ')
GO
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (13532, N'Laura Gilbert', N'Gilbert_Laura@att.com', N'359-490-1979', N'2372 Parker Drive', N'Cleveland')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (20212, N'Steven Murphy', N'Steven.Murphy54@aol.com', N'341-726-5787', N'4600 Melody Lane', N'Richmond')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (23489, N'Amber Williams', N'AmberWilliams17@mail.com', N'713-575-2422', N'4600 Melody Lane', N'Richmond')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (26678, N'Bryan Benson', N'Bryan_Benson@protonmail.com', N'358-767-5696', N'2094 Biddie Lane', N'Richmond')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (29361, N'Glen Chavez', N'Chavez_Glen@xfinity.com', N'702-737-4764', N'2965 Jacobs Street', N'Pittsburgh')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (35750, N'Dylan Rangel', N'Rangel.Dylan@comcast.net', N'420-332-5209', N'2094 Biddie Lane', N'Richmond')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (36008, N'Andrea Baker', N'Andrea_Baker94@aol.com', N'858-637-6955', N'4619 Spring Avenue', N'Philadelphia')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (40574, N'Linda Hines', N'LHines@verizon.com', N'713-226-5883', N'2372 Parker Drive', N'Cleveland')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (50460, N'Ernest Barnes', N'Ernest.Barnes31@outlook.com', N'669-792-1661', N'3121 Bond Street', N'Narragansett')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (52345, N'Sharon Miller', N'SMiller34@gmail.com', N'128-806-1850', N'3166 Single Street', N'Kingston')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (57784, N'Robert Jones', N'Jones.Robert@outlook.com', N'928-868-4951', N'4998 Benedum Drive', N'Kingston')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (57823, N'Gregory Johnson', N'Gregory.J@comcast.net', N'653-480-0263', N'3901 Single Street', N'Kingston')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (61559, N'Rebecca Parker', N'Rebecca_Parker@comcast.net', N'652-885-2745', N'2326 Diamond Cove', N'Providence')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (67209, N'Laurie Ward', N'Laurie.Ward19@att.com', N'299-960-5941', N'2953 Rosebud Avenue', N'Little Rock')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (68389, N'William Velez', N'Velez_William@mail.com', N'286-669-4333', N'3166 Single Street', N'Kingston')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (72596, N'Laura Murray', N'Laura_M@gmail.com', N'364-656-8427', N'2953 Rosebud Avenue', N'Little Rock')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (83604, N'Kimberly Ashley', N'Kimberly_Ashley@comcast.net', N'853-862-3087', N'4998 Benedum Drive', N'Kingston')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (87006, N'Michael Moore', N'MichaelMoore81@outlook.com', N'316-648-6176', N'3901 Single Street', N'Kingston')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (88643, N'William Franco', N'Franco_William@yahoo.com', N'588-420-6039', N'4600 Melody Lane', N'Richmond')
INSERT [dbo].[student_Profile] ([Student_ID], [Name], [Email_Address], [Phone], [Address], [City]) VALUES (89832, N'Jasmine Fletcher', N'JFletcher43@xfinity.com', N'190-271-6743', N'4998 Benedum Drive', N'Kingston')
GO
