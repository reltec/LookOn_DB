USE [LookOn]
GO
/****** Object:  Table [dbo].[album]    Script Date: 09.04.2014 12:23:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[album](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[type_id] [int] NOT NULL,
	[create_time] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_album] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[album_media]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[album_media](
	[album_id] [bigint] NOT NULL,
	[media_id] [bigint] NOT NULL,
 CONSTRAINT [IX_person_file] UNIQUE NONCLUSTERED 
(
	[album_id] ASC,
	[media_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chat]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[type_id] [int] NOT NULL,
	[status_id] [int] NOT NULL,
 CONSTRAINT [PK_chat] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chat_member]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat_member](
	[person_id] [bigint] NOT NULL,
	[chat_id] [bigint] NOT NULL,
	[role_id] [int] NOT NULL,
	[inviter_id] [bigint] NOT NULL,
	[invite_date] [datetime] NOT NULL,
 CONSTRAINT [IX_chatter] UNIQUE NONCLUSTERED 
(
	[person_id] ASC,
	[chat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[chat_message]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat_message](
	[id] [uniqueidentifier] NOT NULL,
	[message_text] [nvarchar](max) NOT NULL,
	[media_id] [bigint] NULL,
	[date_message] [datetime2](7) NOT NULL,
	[chat_id] [bigint] NOT NULL,
	[person_id] [bigint] NOT NULL,
 CONSTRAINT [IX_chat_message] UNIQUE NONCLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[community]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[community](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[person_id] [bigint] NOT NULL,
	[create_time] [datetime2](7) NOT NULL,
	[media_id] [bigint] NULL,
	[description] [ntext] NOT NULL,
 CONSTRAINT [PK_community] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[community_album]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[community_album](
	[community_id] [bigint] NOT NULL,
	[album_id] [bigint] NOT NULL,
 CONSTRAINT [IX_community_album] UNIQUE NONCLUSTERED 
(
	[community_id] ASC,
	[album_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[community_person]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[community_person](
	[community_id] [bigint] NOT NULL,
	[person_id] [bigint] NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [IX_community_person] UNIQUE NONCLUSTERED 
(
	[community_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[company]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nchar](10) NOT NULL,
	[country] [nchar](10) NULL,
	[city] [nchar](10) NULL,
 CONSTRAINT [PK_company_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[company_rating]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_rating](
	[company_id] [bigint] NULL,
	[rater_id] [bigint] NULL,
 CONSTRAINT [IX_company_rating] UNIQUE NONCLUSTERED 
(
	[company_id] ASC,
	[rater_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[company_resume]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[company_resume](
	[company_id] [bigint] NOT NULL,
	[resume_id] [bigint] NOT NULL,
 CONSTRAINT [IX_company_resume] UNIQUE NONCLUSTERED 
(
	[company_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_ChatRole]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_ChatRole](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_ChatRole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_ChatStatus]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_ChatStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DT_ChatStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_ChatType]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DT_ChatType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [varchar](50) NULL,
 CONSTRAINT [PK_chat_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DT_CommunityRole]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_CommunityRole](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DT_CommunityRole] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_CompanyStatus]    Script Date: 09.04.2014 12:23:58 ******/
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
/****** Object:  Table [dbo].[DT_MediaType]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_MediaType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_media_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_NotesType]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_NotesType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_DT_NotesStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_PersonActivityStatus]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_PersonActivityStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_person_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_PersonNetworkStatus]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_PersonNetworkStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_DT_PersonNetworkStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_PersonType]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_PersonType](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[type_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DT_PersonType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_VacancyStatus]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DT_VacancyStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DT_VacancyStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DT_WorkStatus]    Script Date: 09.04.2014 12:23:58 ******/
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
/****** Object:  Table [dbo].[email]    Script Date: 09.04.2014 12:23:58 ******/
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
/****** Object:  Table [dbo].[media]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[media](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[link] [varchar](max) NOT NULL,
	[create_time] [datetime] NOT NULL,
	[type_id] [int] NOT NULL,
 CONSTRAINT [PK_media] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[money]    Script Date: 09.04.2014 12:23:58 ******/
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
/****** Object:  Table [dbo].[notes]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notes](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[person_id] [bigint] NOT NULL,
	[note] [text] NULL,
	[media_id] [bigint] NULL,
	[type_id] [int] NOT NULL,
 CONSTRAINT [PK_notes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[notes_role]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notes_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_notes_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[person]    Script Date: 09.04.2014 12:23:58 ******/
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
	[regdate] [datetime2](7) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[male_female] [bit] NOT NULL,
	[birth_date] [date] NULL,
	[country] [nvarchar](50) NOT NULL,
	[city] [nvarchar](255) NULL,
	[adress] [nvarchar](255) NULL,
	[money_id] [int] NULL,
	[photo_id] [bigint] NULL,
	[activity_status_id] [int] NOT NULL,
	[network_status_id] [int] NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[person_album]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person_album](
	[person_id] [bigint] NOT NULL,
	[album_id] [bigint] NOT NULL,
 CONSTRAINT [IX_person_album] UNIQUE NONCLUSTERED 
(
	[person_id] ASC,
	[album_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[person_blacklist]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person_blacklist](
	[person_id] [bigint] NOT NULL,
	[blacklist_id] [bigint] NOT NULL,
	[type_id] [int] NOT NULL,
 CONSTRAINT [IX_blacklist] UNIQUE NONCLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[person_chat]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person_chat](
	[person_id] [bigint] NOT NULL,
	[chat_id] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[person_friend]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person_friend](
	[person_id] [bigint] NOT NULL,
	[friend_id] [bigint] NOT NULL,
	[type_id] [int] NOT NULL,
 CONSTRAINT [IX_friend] UNIQUE NONCLUSTERED 
(
	[person_id] ASC,
	[friend_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[person_rating]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[person_rating](
	[person_id] [bigint] NOT NULL,
	[rater_id] [bigint] NOT NULL,
 CONSTRAINT [IX_person_rating] UNIQUE NONCLUSTERED 
(
	[person_id] ASC,
	[rater_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[phone]    Script Date: 09.04.2014 12:23:58 ******/
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
/****** Object:  Table [dbo].[private_message]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[private_message](
	[id] [uniqueidentifier] NOT NULL,
	[message_text] [nvarchar](max) NOT NULL,
	[media_id] [bigint] NULL,
	[date_message] [datetime2](7) NOT NULL,
	[author_id] [bigint] NOT NULL,
	[recipient_id] [bigint] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[real_company]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[real_company](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[phone_id] [bigint] NOT NULL,
	[create_date] [datetime2](7) NOT NULL,
	[email_id] [bigint] NULL,
	[country] [nvarchar](50) NULL,
	[city] [nvarchar](255) NULL,
	[adress] [nvarchar](255) NULL,
	[company_code] [nvarchar](50) NULL,
	[industry] [nvarchar](255) NULL,
	[logo_id] [bigint] NULL,
	[status_id] [int] NULL,
	[workspace_id] [bigint] NOT NULL,
 CONSTRAINT [PK_company] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[real_company_resume]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[real_company_resume](
	[real_company_id] [bigint] NOT NULL,
	[resume_id] [bigint] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[resume]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[resume](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[workspace_id] [bigint] NOT NULL,
	[education] [nvarchar](255) NOT NULL,
	[ext_position] [nvarchar](255) NOT NULL,
	[experience] [nvarchar](255) NULL,
	[skills] [nvarchar](255) NULL,
	[language] [nvarchar](255) NULL,
	[personality] [nvarchar](255) NULL,
	[hobby] [nvarchar](max) NULL,
	[country] [varchar](40) NULL,
	[city] [varchar](255) NOT NULL,
	[adress] [varchar](255) NOT NULL,
	[school] [varchar](255) NOT NULL,
	[photo_id] [bigint] NULL,
	[university] [varchar](255) NULL,
	[passport_num] [nvarchar](50) NULL,
	[passport_date] [date] NULL,
	[passport_where] [nvarchar](50) NULL,
	[tax_number] [nvarchar](50) NULL,
 CONSTRAINT [PK_resume] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[resume_rating]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resume_rating](
	[resume_id] [bigint] NOT NULL,
	[workspace_id] [bigint] NOT NULL,
 CONSTRAINT [IX_resume_rating] UNIQUE NONCLUSTERED 
(
	[resume_id] ASC,
	[workspace_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[shared_notes]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shared_notes](
	[person_id] [bigint] NOT NULL,
	[note_id] [bigint] NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [IX_shared_notes] UNIQUE NONCLUSTERED 
(
	[person_id] ASC,
	[note_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[vacancy]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vacancy](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[status_id] [int] NOT NULL,
	[company_id] [bigint] NOT NULL,
 CONSTRAINT [PK_vacancy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[work]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[work](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[workspace_id] [bigint] NOT NULL,
	[company_id] [bigint] NOT NULL,
	[status_id] [int] NULL,
 CONSTRAINT [PK_work] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[workspace]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workspace](
	[id] [bigint] NOT NULL,
	[money_id] [int] NULL,
	[photo_id] [bigint] NULL,
 CONSTRAINT [PK_user_work] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[сommunity_chat]    Script Date: 09.04.2014 12:23:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[сommunity_chat](
	[community_id] [bigint] NOT NULL,
	[chat_id] [bigint] NOT NULL,
 CONSTRAINT [IX_сommunity_chat] UNIQUE NONCLUSTERED 
(
	[community_id] ASC,
	[chat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_private_message]    Script Date: 09.04.2014 12:23:58 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_private_message] ON [dbo].[private_message]
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[album]  WITH CHECK ADD  CONSTRAINT [FK_album_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[DT_MediaType] ([id])
GO
ALTER TABLE [dbo].[album] CHECK CONSTRAINT [FK_album_type]
GO
ALTER TABLE [dbo].[album_media]  WITH CHECK ADD  CONSTRAINT [FK_person_file_album] FOREIGN KEY([album_id])
REFERENCES [dbo].[album] ([id])
GO
ALTER TABLE [dbo].[album_media] CHECK CONSTRAINT [FK_person_file_album]
GO
ALTER TABLE [dbo].[album_media]  WITH CHECK ADD  CONSTRAINT [FK_person_file_media] FOREIGN KEY([media_id])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[album_media] CHECK CONSTRAINT [FK_person_file_media]
GO
ALTER TABLE [dbo].[chat]  WITH CHECK ADD  CONSTRAINT [FK_chat_chat_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[DT_ChatType] ([id])
GO
ALTER TABLE [dbo].[chat] CHECK CONSTRAINT [FK_chat_chat_type]
GO
ALTER TABLE [dbo].[chat]  WITH CHECK ADD  CONSTRAINT [FK_chat_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[DT_ChatStatus] ([id])
GO
ALTER TABLE [dbo].[chat] CHECK CONSTRAINT [FK_chat_status]
GO
ALTER TABLE [dbo].[chat_member]  WITH CHECK ADD  CONSTRAINT [FK_chat_inviter] FOREIGN KEY([inviter_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[chat_member] CHECK CONSTRAINT [FK_chat_inviter]
GO
ALTER TABLE [dbo].[chat_member]  WITH CHECK ADD  CONSTRAINT [FK_chat_member_DT_ChatRole] FOREIGN KEY([role_id])
REFERENCES [dbo].[DT_ChatRole] ([id])
GO
ALTER TABLE [dbo].[chat_member] CHECK CONSTRAINT [FK_chat_member_DT_ChatRole]
GO
ALTER TABLE [dbo].[chat_member]  WITH CHECK ADD  CONSTRAINT [FK_chatter_chat] FOREIGN KEY([chat_id])
REFERENCES [dbo].[chat] ([id])
GO
ALTER TABLE [dbo].[chat_member] CHECK CONSTRAINT [FK_chatter_chat]
GO
ALTER TABLE [dbo].[chat_member]  WITH CHECK ADD  CONSTRAINT [FK_chatter_person] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[chat_member] CHECK CONSTRAINT [FK_chatter_person]
GO
ALTER TABLE [dbo].[chat_message]  WITH CHECK ADD  CONSTRAINT [FK_chat_message_media] FOREIGN KEY([media_id])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[chat_message] CHECK CONSTRAINT [FK_chat_message_media]
GO
ALTER TABLE [dbo].[chat_message]  WITH CHECK ADD  CONSTRAINT [FK_message_chat] FOREIGN KEY([chat_id])
REFERENCES [dbo].[chat] ([id])
GO
ALTER TABLE [dbo].[chat_message] CHECK CONSTRAINT [FK_message_chat]
GO
ALTER TABLE [dbo].[chat_message]  WITH CHECK ADD  CONSTRAINT [FK_message_person] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[chat_message] CHECK CONSTRAINT [FK_message_person]
GO
ALTER TABLE [dbo].[community]  WITH CHECK ADD  CONSTRAINT [FK_community_media] FOREIGN KEY([media_id])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[community] CHECK CONSTRAINT [FK_community_media]
GO
ALTER TABLE [dbo].[community]  WITH CHECK ADD  CONSTRAINT [FK_community_person] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[community] CHECK CONSTRAINT [FK_community_person]
GO
ALTER TABLE [dbo].[community_album]  WITH CHECK ADD  CONSTRAINT [FK_album_community] FOREIGN KEY([community_id])
REFERENCES [dbo].[community] ([id])
GO
ALTER TABLE [dbo].[community_album] CHECK CONSTRAINT [FK_album_community]
GO
ALTER TABLE [dbo].[community_album]  WITH CHECK ADD  CONSTRAINT [FK_community_album] FOREIGN KEY([album_id])
REFERENCES [dbo].[album] ([id])
GO
ALTER TABLE [dbo].[community_album] CHECK CONSTRAINT [FK_community_album]
GO
ALTER TABLE [dbo].[community_person]  WITH CHECK ADD  CONSTRAINT [FK_community_person_DT_CommunityRole] FOREIGN KEY([role_id])
REFERENCES [dbo].[DT_CommunityRole] ([id])
GO
ALTER TABLE [dbo].[community_person] CHECK CONSTRAINT [FK_community_person_DT_CommunityRole]
GO
ALTER TABLE [dbo].[community_person]  WITH CHECK ADD  CONSTRAINT [FK_member_community] FOREIGN KEY([community_id])
REFERENCES [dbo].[community] ([id])
GO
ALTER TABLE [dbo].[community_person] CHECK CONSTRAINT [FK_member_community]
GO
ALTER TABLE [dbo].[community_person]  WITH CHECK ADD  CONSTRAINT [FK_member_person] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[community_person] CHECK CONSTRAINT [FK_member_person]
GO
ALTER TABLE [dbo].[company_rating]  WITH CHECK ADD  CONSTRAINT [FK_company_rating] FOREIGN KEY([company_id])
REFERENCES [dbo].[real_company] ([id])
GO
ALTER TABLE [dbo].[company_rating] CHECK CONSTRAINT [FK_company_rating]
GO
ALTER TABLE [dbo].[company_rating]  WITH CHECK ADD  CONSTRAINT [FK_workcompany_rating] FOREIGN KEY([rater_id])
REFERENCES [dbo].[workspace] ([id])
GO
ALTER TABLE [dbo].[company_rating] CHECK CONSTRAINT [FK_workcompany_rating]
GO
ALTER TABLE [dbo].[company_resume]  WITH CHECK ADD  CONSTRAINT [FK_company_resume] FOREIGN KEY([company_id])
REFERENCES [dbo].[company] ([id])
GO
ALTER TABLE [dbo].[company_resume] CHECK CONSTRAINT [FK_company_resume]
GO
ALTER TABLE [dbo].[company_resume]  WITH CHECK ADD  CONSTRAINT [FK_resume_company] FOREIGN KEY([resume_id])
REFERENCES [dbo].[resume] ([id])
GO
ALTER TABLE [dbo].[company_resume] CHECK CONSTRAINT [FK_resume_company]
GO
ALTER TABLE [dbo].[media]  WITH CHECK ADD  CONSTRAINT [FK_media_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[DT_MediaType] ([id])
GO
ALTER TABLE [dbo].[media] CHECK CONSTRAINT [FK_media_type]
GO
ALTER TABLE [dbo].[notes]  WITH CHECK ADD  CONSTRAINT [FK_notes_media] FOREIGN KEY([media_id])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[notes] CHECK CONSTRAINT [FK_notes_media]
GO
ALTER TABLE [dbo].[notes]  WITH CHECK ADD  CONSTRAINT [FK_notes_status] FOREIGN KEY([type_id])
REFERENCES [dbo].[DT_NotesType] ([id])
GO
ALTER TABLE [dbo].[notes] CHECK CONSTRAINT [FK_notes_status]
GO
ALTER TABLE [dbo].[notes]  WITH CHECK ADD  CONSTRAINT [FK_notes_user] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[notes] CHECK CONSTRAINT [FK_notes_user]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FK_person_activity_status] FOREIGN KEY([activity_status_id])
REFERENCES [dbo].[DT_PersonActivityStatus] ([id])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FK_person_activity_status]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FK_person_network_status] FOREIGN KEY([network_status_id])
REFERENCES [dbo].[DT_PersonNetworkStatus] ([id])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FK_person_network_status]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FK_user_media] FOREIGN KEY([photo_id])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FK_user_media]
GO
ALTER TABLE [dbo].[person]  WITH CHECK ADD  CONSTRAINT [FK_user_money] FOREIGN KEY([money_id])
REFERENCES [dbo].[money] ([id])
GO
ALTER TABLE [dbo].[person] CHECK CONSTRAINT [FK_user_money]
GO
ALTER TABLE [dbo].[person_album]  WITH CHECK ADD  CONSTRAINT [FK_album_person] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[person_album] CHECK CONSTRAINT [FK_album_person]
GO
ALTER TABLE [dbo].[person_album]  WITH CHECK ADD  CONSTRAINT [FK_person_album] FOREIGN KEY([album_id])
REFERENCES [dbo].[album] ([id])
GO
ALTER TABLE [dbo].[person_album] CHECK CONSTRAINT [FK_person_album]
GO
ALTER TABLE [dbo].[person_blacklist]  WITH CHECK ADD  CONSTRAINT [FK_blacklist_person] FOREIGN KEY([blacklist_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[person_blacklist] CHECK CONSTRAINT [FK_blacklist_person]
GO
ALTER TABLE [dbo].[person_blacklist]  WITH CHECK ADD  CONSTRAINT [FK_person_blacklist] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[person_blacklist] CHECK CONSTRAINT [FK_person_blacklist]
GO
ALTER TABLE [dbo].[person_blacklist]  WITH CHECK ADD  CONSTRAINT [FK_person_blacklist_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[DT_PersonType] ([id])
GO
ALTER TABLE [dbo].[person_blacklist] CHECK CONSTRAINT [FK_person_blacklist_type]
GO
ALTER TABLE [dbo].[person_chat]  WITH CHECK ADD  CONSTRAINT [FK_chat_owner] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[person_chat] CHECK CONSTRAINT [FK_chat_owner]
GO
ALTER TABLE [dbo].[person_chat]  WITH CHECK ADD  CONSTRAINT [FK_owner_chat] FOREIGN KEY([chat_id])
REFERENCES [dbo].[chat] ([id])
GO
ALTER TABLE [dbo].[person_chat] CHECK CONSTRAINT [FK_owner_chat]
GO
ALTER TABLE [dbo].[person_friend]  WITH CHECK ADD  CONSTRAINT [FK_friend] FOREIGN KEY([friend_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[person_friend] CHECK CONSTRAINT [FK_friend]
GO
ALTER TABLE [dbo].[person_friend]  WITH CHECK ADD  CONSTRAINT [FK_friend_user] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[person_friend] CHECK CONSTRAINT [FK_friend_user]
GO
ALTER TABLE [dbo].[person_friend]  WITH CHECK ADD  CONSTRAINT [FK_person_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[DT_PersonType] ([id])
GO
ALTER TABLE [dbo].[person_friend] CHECK CONSTRAINT [FK_person_type]
GO
ALTER TABLE [dbo].[person_rating]  WITH CHECK ADD  CONSTRAINT [FK_person_rating] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[person_rating] CHECK CONSTRAINT [FK_person_rating]
GO
ALTER TABLE [dbo].[person_rating]  WITH CHECK ADD  CONSTRAINT [FK_rater_rating] FOREIGN KEY([rater_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[person_rating] CHECK CONSTRAINT [FK_rater_rating]
GO
ALTER TABLE [dbo].[private_message]  WITH CHECK ADD  CONSTRAINT [FK_private_message_author] FOREIGN KEY([author_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[private_message] CHECK CONSTRAINT [FK_private_message_author]
GO
ALTER TABLE [dbo].[private_message]  WITH CHECK ADD  CONSTRAINT [FK_private_message_media] FOREIGN KEY([media_id])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[private_message] CHECK CONSTRAINT [FK_private_message_media]
GO
ALTER TABLE [dbo].[private_message]  WITH CHECK ADD  CONSTRAINT [FK_private_message_recipient] FOREIGN KEY([recipient_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[private_message] CHECK CONSTRAINT [FK_private_message_recipient]
GO
ALTER TABLE [dbo].[real_company]  WITH CHECK ADD  CONSTRAINT [FK_company_email] FOREIGN KEY([email_id])
REFERENCES [dbo].[email] ([id])
GO
ALTER TABLE [dbo].[real_company] CHECK CONSTRAINT [FK_company_email]
GO
ALTER TABLE [dbo].[real_company]  WITH CHECK ADD  CONSTRAINT [FK_company_media] FOREIGN KEY([logo_id])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[real_company] CHECK CONSTRAINT [FK_company_media]
GO
ALTER TABLE [dbo].[real_company]  WITH CHECK ADD  CONSTRAINT [FK_company_phone] FOREIGN KEY([phone_id])
REFERENCES [dbo].[phone] ([id])
GO
ALTER TABLE [dbo].[real_company] CHECK CONSTRAINT [FK_company_phone]
GO
ALTER TABLE [dbo].[real_company]  WITH CHECK ADD  CONSTRAINT [FK_company_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[DT_CompanyStatus] ([id])
GO
ALTER TABLE [dbo].[real_company] CHECK CONSTRAINT [FK_company_status]
GO
ALTER TABLE [dbo].[real_company]  WITH CHECK ADD  CONSTRAINT [FK_real_company_workspace] FOREIGN KEY([workspace_id])
REFERENCES [dbo].[workspace] ([id])
GO
ALTER TABLE [dbo].[real_company] CHECK CONSTRAINT [FK_real_company_workspace]
GO
ALTER TABLE [dbo].[real_company_resume]  WITH CHECK ADD  CONSTRAINT [FK_real_company_resume] FOREIGN KEY([real_company_id])
REFERENCES [dbo].[real_company] ([id])
GO
ALTER TABLE [dbo].[real_company_resume] CHECK CONSTRAINT [FK_real_company_resume]
GO
ALTER TABLE [dbo].[real_company_resume]  WITH CHECK ADD  CONSTRAINT [FK_resume_real_company] FOREIGN KEY([resume_id])
REFERENCES [dbo].[resume] ([id])
GO
ALTER TABLE [dbo].[real_company_resume] CHECK CONSTRAINT [FK_resume_real_company]
GO
ALTER TABLE [dbo].[resume]  WITH CHECK ADD  CONSTRAINT [FK_resume_media] FOREIGN KEY([photo_id])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[resume] CHECK CONSTRAINT [FK_resume_media]
GO
ALTER TABLE [dbo].[resume]  WITH CHECK ADD  CONSTRAINT [FK_resume_user_work] FOREIGN KEY([workspace_id])
REFERENCES [dbo].[workspace] ([id])
GO
ALTER TABLE [dbo].[resume] CHECK CONSTRAINT [FK_resume_user_work]
GO
ALTER TABLE [dbo].[resume_rating]  WITH CHECK ADD  CONSTRAINT [FK_resume_rating] FOREIGN KEY([resume_id])
REFERENCES [dbo].[resume] ([id])
GO
ALTER TABLE [dbo].[resume_rating] CHECK CONSTRAINT [FK_resume_rating]
GO
ALTER TABLE [dbo].[resume_rating]  WITH CHECK ADD  CONSTRAINT [FK_resume_rating_workspace] FOREIGN KEY([workspace_id])
REFERENCES [dbo].[workspace] ([id])
GO
ALTER TABLE [dbo].[resume_rating] CHECK CONSTRAINT [FK_resume_rating_workspace]
GO
ALTER TABLE [dbo].[shared_notes]  WITH CHECK ADD  CONSTRAINT [FK_shared_notes_notes] FOREIGN KEY([note_id])
REFERENCES [dbo].[notes] ([id])
GO
ALTER TABLE [dbo].[shared_notes] CHECK CONSTRAINT [FK_shared_notes_notes]
GO
ALTER TABLE [dbo].[shared_notes]  WITH CHECK ADD  CONSTRAINT [FK_shared_notes_role] FOREIGN KEY([role_id])
REFERENCES [dbo].[notes_role] ([id])
GO
ALTER TABLE [dbo].[shared_notes] CHECK CONSTRAINT [FK_shared_notes_role]
GO
ALTER TABLE [dbo].[shared_notes]  WITH CHECK ADD  CONSTRAINT [FK_shared_notes_user] FOREIGN KEY([person_id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[shared_notes] CHECK CONSTRAINT [FK_shared_notes_user]
GO
ALTER TABLE [dbo].[vacancy]  WITH CHECK ADD  CONSTRAINT [FK_vacancy_real_company] FOREIGN KEY([company_id])
REFERENCES [dbo].[real_company] ([id])
GO
ALTER TABLE [dbo].[vacancy] CHECK CONSTRAINT [FK_vacancy_real_company]
GO
ALTER TABLE [dbo].[vacancy]  WITH CHECK ADD  CONSTRAINT [FK_vacancy_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[DT_VacancyStatus] ([id])
GO
ALTER TABLE [dbo].[vacancy] CHECK CONSTRAINT [FK_vacancy_status]
GO
ALTER TABLE [dbo].[work]  WITH CHECK ADD  CONSTRAINT [FK_work_company] FOREIGN KEY([company_id])
REFERENCES [dbo].[real_company] ([id])
GO
ALTER TABLE [dbo].[work] CHECK CONSTRAINT [FK_work_company]
GO
ALTER TABLE [dbo].[work]  WITH CHECK ADD  CONSTRAINT [FK_work_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[DT_WorkStatus] ([id])
GO
ALTER TABLE [dbo].[work] CHECK CONSTRAINT [FK_work_status]
GO
ALTER TABLE [dbo].[work]  WITH CHECK ADD  CONSTRAINT [FK_work_user_work] FOREIGN KEY([workspace_id])
REFERENCES [dbo].[workspace] ([id])
GO
ALTER TABLE [dbo].[work] CHECK CONSTRAINT [FK_work_user_work]
GO
ALTER TABLE [dbo].[workspace]  WITH CHECK ADD  CONSTRAINT [FK_user_work_media] FOREIGN KEY([photo_id])
REFERENCES [dbo].[media] ([id])
GO
ALTER TABLE [dbo].[workspace] CHECK CONSTRAINT [FK_user_work_media]
GO
ALTER TABLE [dbo].[workspace]  WITH CHECK ADD  CONSTRAINT [FK_user_work_money] FOREIGN KEY([money_id])
REFERENCES [dbo].[money] ([id])
GO
ALTER TABLE [dbo].[workspace] CHECK CONSTRAINT [FK_user_work_money]
GO
ALTER TABLE [dbo].[workspace]  WITH CHECK ADD  CONSTRAINT [FK_user_work_user] FOREIGN KEY([id])
REFERENCES [dbo].[person] ([id])
GO
ALTER TABLE [dbo].[workspace] CHECK CONSTRAINT [FK_user_work_user]
GO
ALTER TABLE [dbo].[сommunity_chat]  WITH CHECK ADD  CONSTRAINT [FK_chat_сommunity] FOREIGN KEY([chat_id])
REFERENCES [dbo].[chat] ([id])
GO
ALTER TABLE [dbo].[сommunity_chat] CHECK CONSTRAINT [FK_chat_сommunity]
GO
ALTER TABLE [dbo].[сommunity_chat]  WITH CHECK ADD  CONSTRAINT [FK_сommunity_chat] FOREIGN KEY([community_id])
REFERENCES [dbo].[community] ([id])
GO
ALTER TABLE [dbo].[сommunity_chat] CHECK CONSTRAINT [FK_сommunity_chat]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Альбом певного типу' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'album'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Які файли в якому альбому лежать' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'album_media'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Загальний чат' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'chat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Той хто запросив в чат' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'chat_member', @level2type=N'COLUMN',@level2name=N'inviter_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Які користувачі з якою роллю беруть участь в чаті' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'chat_member'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Повідомлення в чаті' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'chat_message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Альбоми що належать групам' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'community_album'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Які люди в якій групі знаходяться' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'community_person'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Компанії, які юзер вводить вручну при створенні резюме' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Лайки компанії' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'company_rating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ролі учасників чату' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_ChatRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Статус чату - активний, закритий' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_ChatStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Робочий чи якийсь інший' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_ChatType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Роль в групі (учасник, адмін, модератор)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_CommunityRole'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Статуси компанії (є вакансії, немає)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_CompanyStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Типи файлів (фото, аудіо, документи)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_MediaType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Активність профіля (активний, заблокований, видалений)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_PersonActivityStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Назва мережевого статусу' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_PersonNetworkStatus', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Мережеві статуси (в мережі, офлайн, спить)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_PersonNetworkStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Тип особи (особисте, по роботі)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_PersonType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Довідник статусів вакансій' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_VacancyStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Статус роботи (працює, звільнений)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DT_WorkStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Мейли компанії' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Посилання на файл' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'media', @level2type=N'COLUMN',@level2name=N'link'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Час створення, завантаження' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'media', @level2type=N'COLUMN',@level2name=N'create_time'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Файли в системі' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'media'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ролі редагування нотаток' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'notes_role'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ім''я' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Прізвище' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'surname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'По батькові (не обов''язкове)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'middle_name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'логін' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'login'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Телефон (для СМС та ін.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата реєстрації' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'regdate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ел. пошта' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'стать' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'male_female'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дата народження' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'birth_date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Країна' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'country'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Місто' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'city'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Адреса' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'adress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Статус активності (видалений, блокований)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person', @level2type=N'COLUMN',@level2name=N'activity_status_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дані користувача' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Альбоми що належать користувачам' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person_album'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Список заблокованих осіб' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person_blacklist'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Чати користувачів' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person_chat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Зв''язок людини з другом' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person_friend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Лайки певної особи' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'person_rating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Телефони компанії' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'phone', @level2type=N'COLUMN',@level2name=N'id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Телефони компанії' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'phone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Автор повідомлення' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'private_message', @level2type=N'COLUMN',@level2name=N'author_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Отримувач повідомлення' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'private_message', @level2type=N'COLUMN',@level2name=N'recipient_id'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Приватні повідомлення' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'private_message'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дані реальної компанії' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'real_company'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Дані резюме' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'resume'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Рейтинг тих, хто шукає роботу' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'resume_rating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Вакансії компанії' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'vacancy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Де працює особа' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'work'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Робоча область користувачів' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'workspace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Чати груп' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'сommunity_chat'
GO
