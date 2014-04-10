USE [LookOn]
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[album](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[id_person] [bigint] NULL,
	[id_type] [int] NOT NULL,
	[create_time] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chat]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_person] [bigint] NOT NULL,
	[type] [int] NULL,
 CONSTRAINT [PK_chat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chatter]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chatter](
	[id_chatter] [bigint] IDENTITY(1,1) NOT NULL,
	[id_person] [bigint] NOT NULL,
	[id_chat] [bigint] NOT NULL,
 CONSTRAINT [IX_chatter] UNIQUE NONCLUSTERED 
(
	[id_person] ASC,
	[id_chat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[community]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[community](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[id_person] [bigint] NOT NULL,
	[create_time] [datetime2](7) NOT NULL,
	[id_media] [bigint] NULL,
	[description] [ntext] NOT NULL,
 CONSTRAINT [PK_community] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[company]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name_company] [nvarchar](50) NOT NULL,
	[id_phone] [bigint] NOT NULL,
	[create_date] [datetime2](7) NOT NULL,
	[id_email] [bigint] NULL,
	[country] [nvarchar](50) NULL,
	[city] [nvarchar](255) NULL,
	[adress] [nvarchar](255) NULL,
	[company_code] [nvarchar](50) NULL,
	[industry] [nvarchar](255) NULL,
	[id_logo] [bigint] NULL,
	[id_status] [int] NULL,
 CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[company_rating]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_rating](
	[id_company] [bigint] NULL,
	[id_rater] [bigint] NULL,
	[comment] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_ChatType]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DT_ChatType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_type] [varchar](50) NULL,
 CONSTRAINT [PK_chat_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DT_CommunityRole]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_CommunityRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DT_CommunityRole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_CompanyStatus]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_CompanyStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_company_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_MediaType]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_MediaType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name_type] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_media_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_NotesStatus]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_NotesStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DT_NotesStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_PersonStatus]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_PersonStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_person_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_WorkStatus]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_WorkStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_work_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[email]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_email] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[friend]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[friend](
	[id_person] [bigint] NOT NULL,
	[id_friend] [bigint] NOT NULL,
	[friend_status] [int] NOT NULL,
 CONSTRAINT [IX_friend] UNIQUE NONCLUSTERED 
(
	[id_person] ASC,
	[id_friend] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[media]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[media](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[link] [varchar](max) NOT NULL,
	[id_media_type] [int] NOT NULL,
 CONSTRAINT [PK_media] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[member]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member](
	[id_community] [bigint] NOT NULL,
	[id_person] [bigint] NOT NULL,
	[id_role] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[message]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[message](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[message_text] [ntext] NOT NULL,
	[id_media] [bigint] NOT NULL,
	[date_message] [timestamp] NOT NULL,
	[id_chat] [bigint] NOT NULL,
	[id_person] [bigint] NOT NULL,
 CONSTRAINT [PK_message] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[money]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[money](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](40) NULL,
	[surname] [varchar](40) NULL,
	[middle_name] [varchar](40) NULL,
	[amount] [float] NULL,
	[card_number] [varchar](16) NULL,
	[card_type] [varchar](40) NULL,
	[name_bank] [varchar](255) NULL,
	[date_oper] [datetime] NULL,
	[status_oper] [binary](9) NULL,
 CONSTRAINT [PK_money] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[notes]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notes](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_person] [bigint] NOT NULL,
	[note] [text] NULL,
	[id_media] [bigint] NULL,
	[id_status] [int] NOT NULL,
 CONSTRAINT [PK_notes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[person]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[middle_name] [nvarchar](50) NULL,
	[login] [nvarchar](50) NOT NULL,
	[phone] [nvarchar](20) NULL,
	[date_registr] [datetime2](7) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[male_female] [bit] NOT NULL,
	[date_birth] [date] NULL,
	[country] [nvarchar](50) NOT NULL,
	[city] [nvarchar](255) NULL,
	[adress] [nvarchar](255) NULL,
	[passport_num] [nvarchar](50) NULL,
	[passport_date] [date] NULL,
	[passport_where] [nvarchar](50) NULL,
	[tax_number] [nvarchar](50) NULL,
	[id_money] [int] NULL,
	[id_photo] [bigint] NULL,
	[id_status] [int] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[person_file]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person_file](
	[id_album] [bigint] NOT NULL,
	[id_media] [bigint] NOT NULL,
	[create_time] [datetime2](7) NOT NULL,
 CONSTRAINT [IX_person_file] UNIQUE NONCLUSTERED 
(
	[id_album] ASC,
	[id_media] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[person_rating]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person_rating](
	[id_person] [bigint] NOT NULL,
	[id_rater] [bigint] NOT NULL,
	[comment] [nvarchar](255) NULL,
 CONSTRAINT [IX_person_rating] UNIQUE NONCLUSTERED 
(
	[id_person] ASC,
	[id_rater] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phone]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phone](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[phone_number] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_phone] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[resume]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[resume](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[id_userwork] [bigint] NOT NULL,
	[country] [varchar](40) NOT NULL,
	[city] [varchar](255) NOT NULL,
	[adress] [varchar](255) NOT NULL,
	[school] [varchar](255) NOT NULL,
	[id_photo] [bigint] NULL,
	[university] [varchar](255) NULL,
 CONSTRAINT [PK_resume] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[shared_notes]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shared_notes](
	[id_friend] [bigint] NOT NULL,
	[access_type] [bit] NOT NULL,
	[id_note] [bigint] NOT NULL,
 CONSTRAINT [IX_shared_notes] UNIQUE NONCLUSTERED 
(
	[id_friend] ASC,
	[id_note] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[user_work]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_work](
	[id] [bigint] NOT NULL,
	[ext_position] [nvarchar](255) NOT NULL,
	[education] [nvarchar](255) NOT NULL,
	[experience] [nvarchar](255) NOT NULL,
	[skills] [nvarchar](255) NULL,
	[languages] [nvarchar](255) NULL,
	[personality] [nvarchar](255) NULL,
	[id_money] [int] NULL,
	[id_photo] [bigint] NULL,
	[hobbies] [nvarchar](max) NULL,
 CONSTRAINT [PK_user_work] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[work]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[work](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_user_work] [bigint] NOT NULL,
	[id_company] [bigint] NOT NULL,
	[id_status] [int] NULL,
 CONSTRAINT [PK_work] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[work_friend]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[work_friend](
	[id_user_work] [bigint] NULL,
	[id_friend] [bigint] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[work_rating]    Script Date: 28.03.2014 12:34:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[work_rating](
	[id_worker] [bigint] NOT NULL,
	[id_rater] [bigint] NOT NULL,
	[comment] [nvarchar](255) NULL
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[shared_notes] ADD  CONSTRAINT [DF_shared_notes_access]  DEFAULT ((0)) FOR [access_type]
GO
ALTER TABLE [dbo].[album]  WITH CHECK ADD  CONSTRAINT [FK_album_person] FOREIGN KEY([id_person])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[album] CHECK CONSTRAINT [FK_album_person]
GO
ALTER TABLE [dbo].[album]  WITH CHECK ADD  CONSTRAINT [FK_album_type] FOREIGN KEY([id_type])
REFERENCES [dbo].[DT_MediaType] ([id])
GO
ALTER TABLE [dbo].[album] CHECK CONSTRAINT [FK_album_type]
GO
ALTER TABLE [dbo].[chat]  WITH CHECK ADD  CONSTRAINT [FK_chat_chat_type] FOREIGN KEY([type])
REFERENCES [dbo].[DT_ChatType] ([id])
GO
ALTER TABLE [dbo].[chat] CHECK CONSTRAINT [FK_chat_chat_type]
GO
ALTER TABLE [dbo].[chat]  WITH CHECK ADD  CONSTRAINT [FK_chat_user] FOREIGN KEY([id_person])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[chat] CHECK CONSTRAINT [FK_chat_user]
GO
ALTER TABLE [dbo].[chatter]  WITH CHECK ADD  CONSTRAINT [FK_chatter_chat] FOREIGN KEY([id_chat])
REFERENCES [dbo].[chat] ([id])
GO
ALTER TABLE [dbo].[chatter] CHECK CONSTRAINT [FK_chatter_chat]
GO
ALTER TABLE [dbo].[chatter]  WITH CHECK ADD  CONSTRAINT [FK_chatter_person] FOREIGN KEY([id_person])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[chatter] CHECK CONSTRAINT [FK_chatter_person]
GO
ALTER TABLE [dbo].[community]  WITH CHECK ADD  CONSTRAINT [FK_community_media] FOREIGN KEY([id_media])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[community] CHECK CONSTRAINT [FK_community_media]
GO
ALTER TABLE [dbo].[community]  WITH CHECK ADD  CONSTRAINT [FK_community_person] FOREIGN KEY([id_person])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[community] CHECK CONSTRAINT [FK_community_person]
GO
ALTER TABLE [dbo].[company]  WITH CHECK ADD  CONSTRAINT [FK_company_email] FOREIGN KEY([id_email])
REFERENCES [dbo].[email] ([id])
GO
ALTER TABLE [dbo].[company] CHECK CONSTRAINT [FK_company_email]
GO
ALTER TABLE [dbo].[company]  WITH CHECK ADD  CONSTRAINT [FK_company_media] FOREIGN KEY([id_logo])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[company] CHECK CONSTRAINT [FK_company_media]
GO
ALTER TABLE [dbo].[company]  WITH CHECK ADD  CONSTRAINT [FK_company_phone] FOREIGN KEY([id_phone])
REFERENCES [dbo].[phone] ([id])
GO
ALTER TABLE [dbo].[company] CHECK CONSTRAINT [FK_company_phone]
GO
ALTER TABLE [dbo].[company]  WITH CHECK ADD  CONSTRAINT [FK_company_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[DT_CompanyStatus] ([id])
GO
ALTER TABLE [dbo].[company] CHECK CONSTRAINT [FK_company_status]
GO
ALTER TABLE [dbo].[company_rating]  WITH CHECK ADD  CONSTRAINT [FK_company_rating] FOREIGN KEY([id_company])
REFERENCES [dbo].[company] ([id])
GO
ALTER TABLE [dbo].[company_rating] CHECK CONSTRAINT [FK_company_rating]
GO
ALTER TABLE [dbo].[company_rating]  WITH CHECK ADD  CONSTRAINT [FK_workcompany_rating] FOREIGN KEY([id_rater])
REFERENCES [dbo].[user_work] ([id])
GO
ALTER TABLE [dbo].[company_rating] CHECK CONSTRAINT [FK_workcompany_rating]
GO
ALTER TABLE [dbo].[friend]  WITH CHECK ADD  CONSTRAINT [FK_friend] FOREIGN KEY([id_friend])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[friend] CHECK CONSTRAINT [FK_friend]
GO
ALTER TABLE [dbo].[friend]  WITH CHECK ADD  CONSTRAINT [FK_friend_user] FOREIGN KEY([id_person])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[friend] CHECK CONSTRAINT [FK_friend_user]
GO
ALTER TABLE [dbo].[media]  WITH CHECK ADD  CONSTRAINT [FK_media_type] FOREIGN KEY([id_media_type])
REFERENCES [dbo].[DT_MediaType] ([id])
GO
ALTER TABLE [dbo].[media] CHECK CONSTRAINT [FK_media_type]
GO
ALTER TABLE [dbo].[member]  WITH CHECK ADD  CONSTRAINT [FK_member_community] FOREIGN KEY([id_community])
REFERENCES [dbo].[community] ([id])
GO
ALTER TABLE [dbo].[member] CHECK CONSTRAINT [FK_member_community]
GO
ALTER TABLE [dbo].[member]  WITH CHECK ADD  CONSTRAINT [FK_member_person] FOREIGN KEY([id_person])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[member] CHECK CONSTRAINT [FK_member_person]
GO
ALTER TABLE [dbo].[member]  WITH CHECK ADD  CONSTRAINT [FK_member_role] FOREIGN KEY([id_role])
REFERENCES [dbo].[DT_CommunityRole] ([id])
GO
ALTER TABLE [dbo].[member] CHECK CONSTRAINT [FK_member_role]
GO
ALTER TABLE [dbo].[message]  WITH CHECK ADD  CONSTRAINT [FK_message_chat] FOREIGN KEY([id_chat])
REFERENCES [dbo].[chat] ([id])
GO
ALTER TABLE [dbo].[message] CHECK CONSTRAINT [FK_message_chat]
GO
ALTER TABLE [dbo].[message]  WITH CHECK ADD  CONSTRAINT [FK_message_person] FOREIGN KEY([id_person])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[message] CHECK CONSTRAINT [FK_message_person]
GO
ALTER TABLE [dbo].[notes]  WITH CHECK ADD  CONSTRAINT [FK_notes_media] FOREIGN KEY([id_media])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[notes] CHECK CONSTRAINT [FK_notes_media]
GO
ALTER TABLE [dbo].[notes]  WITH CHECK ADD  CONSTRAINT [FK_notes_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[DT_NotesStatus] ([id])
GO
ALTER TABLE [dbo].[notes] CHECK CONSTRAINT [FK_notes_status]
GO
ALTER TABLE [dbo].[notes]  WITH CHECK ADD  CONSTRAINT [FK_notes_user] FOREIGN KEY([id_person])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[notes] CHECK CONSTRAINT [FK_notes_user]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FK_person_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[DT_PersonStatus] ([id])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FK_person_status]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FK_user_media] FOREIGN KEY([id_photo])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FK_user_media]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FK_user_money] FOREIGN KEY([id_money])
REFERENCES [dbo].[money] ([id])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FK_user_money]
GO
ALTER TABLE [dbo].[person_file]  WITH CHECK ADD  CONSTRAINT [FK_person_file_album] FOREIGN KEY([id_album])
REFERENCES [dbo].[album] ([id])
GO
ALTER TABLE [dbo].[person_file] CHECK CONSTRAINT [FK_person_file_album]
GO
ALTER TABLE [dbo].[person_file]  WITH CHECK ADD  CONSTRAINT [FK_person_file_media] FOREIGN KEY([id_media])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[person_file] CHECK CONSTRAINT [FK_person_file_media]
GO
ALTER TABLE [dbo].[person_rating]  WITH CHECK ADD  CONSTRAINT [FK_person_rating] FOREIGN KEY([id_person])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[person_rating] CHECK CONSTRAINT [FK_person_rating]
GO
ALTER TABLE [dbo].[person_rating]  WITH CHECK ADD  CONSTRAINT [FK_rater_rating] FOREIGN KEY([id_rater])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[person_rating] CHECK CONSTRAINT [FK_rater_rating]
GO
ALTER TABLE [dbo].[resume]  WITH CHECK ADD  CONSTRAINT [FK_resume_media] FOREIGN KEY([id_photo])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[resume] CHECK CONSTRAINT [FK_resume_media]
GO
ALTER TABLE [dbo].[resume]  WITH CHECK ADD  CONSTRAINT [FK_resume_user_work] FOREIGN KEY([id_userwork])
REFERENCES [dbo].[user_work] ([id])
GO
ALTER TABLE [dbo].[resume] CHECK CONSTRAINT [FK_resume_user_work]
GO
ALTER TABLE [dbo].[shared_notes]  WITH CHECK ADD  CONSTRAINT [FK_shared_notes_notes] FOREIGN KEY([id_note])
REFERENCES [dbo].[notes] ([id])
GO
ALTER TABLE [dbo].[shared_notes] CHECK CONSTRAINT [FK_shared_notes_notes]
GO
ALTER TABLE [dbo].[shared_notes]  WITH CHECK ADD  CONSTRAINT [FK_shared_notes_user] FOREIGN KEY([id_friend])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[shared_notes] CHECK CONSTRAINT [FK_shared_notes_user]
GO
ALTER TABLE [dbo].[user_work]  WITH CHECK ADD  CONSTRAINT [FK_user_work_media] FOREIGN KEY([id_photo])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[user_work] CHECK CONSTRAINT [FK_user_work_media]
GO
ALTER TABLE [dbo].[user_work]  WITH CHECK ADD  CONSTRAINT [FK_user_work_money] FOREIGN KEY([id_money])
REFERENCES [dbo].[money] ([id])
GO
ALTER TABLE [dbo].[user_work] CHECK CONSTRAINT [FK_user_work_money]
GO
ALTER TABLE [dbo].[user_work]  WITH CHECK ADD  CONSTRAINT [FK_user_work_user] FOREIGN KEY([id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[user_work] CHECK CONSTRAINT [FK_user_work_user]
GO
ALTER TABLE [dbo].[work]  WITH CHECK ADD  CONSTRAINT [FK_work_company] FOREIGN KEY([id_company])
REFERENCES [dbo].[company] ([id])
GO
ALTER TABLE [dbo].[work] CHECK CONSTRAINT [FK_work_company]
GO
ALTER TABLE [dbo].[work]  WITH CHECK ADD  CONSTRAINT [FK_work_status] FOREIGN KEY([id_status])
REFERENCES [dbo].[DT_WorkStatus] ([id])
GO
ALTER TABLE [dbo].[work] CHECK CONSTRAINT [FK_work_status]
GO
ALTER TABLE [dbo].[work]  WITH CHECK ADD  CONSTRAINT [FK_work_user_work] FOREIGN KEY([id_user_work])
REFERENCES [dbo].[user_work] ([id])
GO
ALTER TABLE [dbo].[work] CHECK CONSTRAINT [FK_work_user_work]
GO
ALTER TABLE [dbo].[work_friend]  WITH CHECK ADD  CONSTRAINT [FK_friend_work] FOREIGN KEY([id_friend])
REFERENCES [dbo].[user_work] ([id])
GO
ALTER TABLE [dbo].[work_friend] CHECK CONSTRAINT [FK_friend_work]
GO
ALTER TABLE [dbo].[work_friend]  WITH CHECK ADD  CONSTRAINT [FK_user_work] FOREIGN KEY([id_user_work])
REFERENCES [dbo].[user_work] ([id])
GO
ALTER TABLE [dbo].[work_friend] CHECK CONSTRAINT [FK_user_work]
GO
ALTER TABLE [dbo].[work_rating]  WITH CHECK ADD  CONSTRAINT [FK_worker_rating] FOREIGN KEY([id_worker])
REFERENCES [dbo].[user_work] ([id])
GO
ALTER TABLE [dbo].[work_rating] CHECK CONSTRAINT [FK_worker_rating]
GO
ALTER TABLE [dbo].[work_rating]  WITH CHECK ADD  CONSTRAINT [FK_workrater_rating] FOREIGN KEY([id_rater])
REFERENCES [dbo].[user_work] ([id])
GO
ALTER TABLE [dbo].[work_rating] CHECK CONSTRAINT [FK_workrater_rating]
GO
