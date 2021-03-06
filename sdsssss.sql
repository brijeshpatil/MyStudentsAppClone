USE [master]
GO
/****** Object:  Database [Students]    Script Date: 12/10/2014 16:08:09 ******/
CREATE DATABASE [Students] ON  PRIMARY 
( NAME = N'Students', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQL2008\MSSQL\DATA\Students.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Students_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQL2008\MSSQL\DATA\Students_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Students] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Students].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Students] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Students] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Students] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Students] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Students] SET ARITHABORT OFF
GO
ALTER DATABASE [Students] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Students] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Students] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Students] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Students] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Students] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Students] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Students] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Students] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Students] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Students] SET  ENABLE_BROKER
GO
ALTER DATABASE [Students] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Students] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Students] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Students] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Students] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Students] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Students] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Students] SET  READ_WRITE
GO
ALTER DATABASE [Students] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Students] SET  MULTI_USER
GO
ALTER DATABASE [Students] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Students] SET DB_CHAINING OFF
GO
USE [Students]
GO
/****** Object:  Table [dbo].[QuestionBank]    Script Date: 12/10/2014 16:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[QuestionBank](
	[Qid] [int] IDENTITY(1,1) NOT NULL,
	[ETypeID] [int] NULL,
	[question] [varchar](max) NULL,
	[opA] [varchar](100) NULL,
	[opB] [varchar](100) NULL,
	[opC] [varchar](100) NULL,
	[opD] [varchar](100) NULL,
	[correctans] [varchar](100) NULL,
 CONSTRAINT [PK_QuestionBank] PRIMARY KEY CLUSTERED 
(
	[Qid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionBank] ON
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (1, 1, N'Which of the following is not an OOP feature in C++?', N'Encapsulation', N'Abstraction', N'Polymorphism', N'Exceptions', N'opD')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (2, 1, N'To be called object-oriented, a programming language must allow:', N'functions that return values', N'Library of predefined functions', N'Inheritance', N'All of these', N'opD')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (3, 1, N'Which of the following statements is false?', N'A function is a block of code that performs a specific task', N'Functions allow programmers to break large and complex problems into small and manageable tasks', N'Functions allow programmers to use existing code to perform common tasks', N'Functions can be called, or invoked, only once in a program', N'opD')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (4, 1, N'A function that is called automatically each time an object is destroyed is a ', N'Destructor', N'Destroyer', N'Remover', N'Constructor', N'opA')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (5, 1, N'Which of the following is a mechanism of static polymorphism?', N'Operator overloading', N'Function Overloading', N'Templates', N'All of the above', N'opA')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (6, 1, N'A class can allow non-member functions and other classes to access its own private data, by making them as _________________.', N'private', N'protected', N'Friend', N'public', N'opC')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (7, 1, N'____________________ is the process of creating new classes, called derived classes, from existing classes called base class', N'Encapsulation', N'Abstraction', N'Polymorphism', N'Inheritance', N'opD')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (8, 1, N'A ___________ class can share selected properties of its base classes,', N'abstarct', N'derived', N'subclass', N'both b & c', N'opD')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (9, 1, N'A _______________ is the address of a memory location and provides an indirect way of accessing data in memory.', N'Constant', N'variable', N'Pointer', N'object', N'opC')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (10, 1, N'In graphics mode the basic element is a __________', N'character', N'text', N'table', N'pixel', N'opD')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (11, 1, N'Operator such as ______________ cannot be overloaded.', N'Binary(+)', N'Unary(++)', N'Scope Resolution(::)', N'Conditional (==)', N'opC')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (12, 1, N'The first index number in an array starts with _________ and the last index number of an array of size n will be ______', N'0 & n-1', N'1 & n-1', N'0 & n', N'1 & n', N'opA')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (13, 1, N'State True or False 1. Public data members can be accessed directly in the main function without an object. 2. Constructors can be overloaded.', N'1-F, 2-F', N'1-F, 2-T', N'1-T, 2-T', N'1-T, 2-F', N'opB')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (14, 1, N'To overload an operator _____________keyword must be used along with the operator to be overloaded.', N'Overloding', N'Overrding', N'Operator', N'void', N'opC')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (15, 1, N'Which one of the following declaration is invalid?', N'int a[];', N'int a[]={19, 21, 16, 1, 50};', N'int a[5]={19, b, 16, c, 50};', N'int a[5];', N'opC')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (16, 1, N'CLR is the .NET equivalent of _________.', N'Java Virtual Machine', N'Common Language Runtime', N'Common Type System', N'Common Language Specification', N'opA')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (17, 1, N'SOAP stands for __________.', N'Simple Object Access Program', N'Simple Object Access Protocol', N'Simple Object Application Protocol', N'Simple Object Account Protocol', N'opB')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (18, 1, N'All C# applications begin execution by calling the _____ method.', N'Class()', N'Main()', N'Submain()', N'Namespace', N'opB')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (19, 1, N'A _______ is an identifier that denotes a storage location', N'Constant', N'Reference type', N'Variable', N'Object', N'opC')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (20, 1, N'_________ are reserved, and cannot be used as identifiers.', N'Keywords', N'literal', N'variables', N'Identifiers', N'opA')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (21, 1, N'Boxing converts a value type on the stack to an ______ on the heap.', N'Bool Type', N'Class Type', N'Keyword Type', N'Object Type', N'opD')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (22, 1, N'C# has _______ operator, useful for making two way decisions.', N'Looping', N'Functional', N'Exponential', N'Conditional', N'opD')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (23, 1, N'________causes the loop to continue with the next iteration after skipping any statements in between.', N'Loop', N'Exit', N'Break', N'Continue', N'opD')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (24, 1, N'Arrays in C# are ______ objects', N'Reference', N'Logical', N'Value', N'Arithmetic', N'opA')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (25, 1, N'______ parameters are used to pass results back to the calling method.', N'Input', N'Reference', N'Value', N'Output', N'opD')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (26, 1, N'_______ variables are visible only in the block they are declared.', N'System', N'Global', N'Local', N'Console', N'opC')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (27, 1, N'A structure in C# provides a unique way of packing together data of ______ types.', N'Different', N'Same', N'Invoking', N'Calling', N'opA')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (28, 1, N'Struct’s data members are ____________ by default.', N'Protected', N'Public', N'Private', N'Default', N'opC')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (29, 1, N'Class’s data members are ____________ by default.', N'Protected', N'Public', N'Private', N'Default', N'opC')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (30, 1, N'A _______ creates an object by copying variables from another object.', N'Copy constructor', N'Default constructor', N'Invoking constructor', N'Calling constructor', N'opA')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (31, 1, N'The methods that have the same name, but different parameter lists and different definitions is called______.', N'Method Overloading', N'Method Overriding', N'Method Overwriting', N'Method Overreading', N'opA')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (32, 1, N'C# treats the multiple catch statements like cases in a _____________ statement.', N'if', N'switch', N'for', N'while', N'opB')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (33, 1, N'The reason that C# does not support multiple inheritances is because of ______.', N'Method collision', N'Name collision', N'Function collision', N'Interface collision', N'opB')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (34, 1, N'The scope of a variable depends on the ____________ and _________.', N'Main method, place of its declaration', N'Type of the variable, console', N'compiler, main', N'Type of the variable, place of its declaration', N'opD')
INSERT [dbo].[QuestionBank] ([Qid], [ETypeID], [question], [opA], [opB], [opC], [opD], [correctans]) VALUES (35, 1, N'Correct statement about constructors in C#.NET is ?', N'Constructor cannot be overloaded', N'Constructor allocate space for object in memory', N'Constructor are never called explicitly', N'Constructor have same name as name of the class', N'opC')
SET IDENTITY_INSERT [dbo].[QuestionBank] OFF
/****** Object:  Table [dbo].[SubmitedExams]    Script Date: 12/10/2014 16:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubmitedExams](
	[ExID] [int] IDENTITY(1,1) NOT NULL,
	[ExamTypeId] [int] NULL,
	[StudentID] [int] NULL,
	[Marks] [int] NULL,
	[ExamStatus] [varchar](50) NULL,
	[ExamDate] [datetime] NULL,
 CONSTRAINT [PK_SubmitedExams] PRIMARY KEY CLUSTERED 
(
	[ExID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[SubmitedExams] ON
INSERT [dbo].[SubmitedExams] ([ExID], [ExamTypeId], [StudentID], [Marks], [ExamStatus], [ExamDate]) VALUES (1, 1, 1, 0, N'You have to work very hard... Please again give th', CAST(0x0000A3FD0102069C AS DateTime))
SET IDENTITY_INSERT [dbo].[SubmitedExams] OFF
/****** Object:  Table [dbo].[StudentInfo]    Script Date: 12/10/2014 16:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StudentInfo](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[fname] [varchar](50) NULL,
	[lname] [varchar](50) NULL,
	[username] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[regdate] [datetime] NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[StudentInfo] ON
INSERT [dbo].[StudentInfo] ([sid], [fname], [lname], [username], [pass], [regdate], [IsActive]) VALUES (1, N'Brijesh', N'Patil', N'brijesh.patil@tops-int.com', N'brij@123', CAST(0x0000A3FB0101DEE8 AS DateTime), 1)
INSERT [dbo].[StudentInfo] ([sid], [fname], [lname], [username], [pass], [regdate], [IsActive]) VALUES (2, N'Yogesh', N'Pande', N'yogesh.pande@tops-int.com', N'yogesh123', CAST(0x0000A3FB0113CE72 AS DateTime), 0)
INSERT [dbo].[StudentInfo] ([sid], [fname], [lname], [username], [pass], [regdate], [IsActive]) VALUES (3, N'Tejas', N'Shah', N'tejas.shah@tops-int.com', N'tejyo123', CAST(0x0000A3FB01189514 AS DateTime), 1)
INSERT [dbo].[StudentInfo] ([sid], [fname], [lname], [username], [pass], [regdate], [IsActive]) VALUES (7, N'kj', N'hjk', N'hk', N'hk', CAST(0x0000A3FD0104CED8 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[StudentInfo] OFF
/****** Object:  Table [dbo].[ExamTypes]    Script Date: 12/10/2014 16:08:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ExamTypes](
	[ExamTypeId] [int] IDENTITY(1,1) NOT NULL,
	[ExamType] [varchar](50) NULL,
 CONSTRAINT [PK_ExamTypes] PRIMARY KEY CLUSTERED 
(
	[ExamTypeId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[ExamTypes] ON
INSERT [dbo].[ExamTypes] ([ExamTypeId], [ExamType]) VALUES (1, N'OOPS Basic')
SET IDENTITY_INSERT [dbo].[ExamTypes] OFF
/****** Object:  StoredProcedure [dbo].[VerifyStudentLogin]    Script Date: 12/10/2014 16:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[VerifyStudentLogin]
@UName varchar(50),
@Pass varchar(50)
as
select sid,fname,lname,username,pass,regdate,IsActive from StudentInfo where username=@UName and pass=@Pass and IsActive='True'
GO
/****** Object:  StoredProcedure [dbo].[UpdateExamType]    Script Date: 12/10/2014 16:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateExamType]
@TID int,
@Type varchar(50)
as
update ExamTypes set ExamType=@Type where ExamTypeID=@TID
GO
/****** Object:  StoredProcedure [dbo].[SubmitExam]    Script Date: 12/10/2014 16:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SubmitExam]
@ETID int,
@SID int,
@Marks int,
@EStatus varchar(50),
@EDate datetime
as

insert into SubmitedExams values(
@ETID,
@SID,
@Marks,
@EStatus,
@EDate
)
GO
/****** Object:  StoredProcedure [dbo].[RegStudent]    Script Date: 12/10/2014 16:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[RegStudent]
@Fname varchar(50),
@Lname varchar(50),
@UName varchar(50),
@Pass varchar(50),
@RegDate datetime
as
insert into StudentInfo values(@Fname,@Lname,@UName,@Pass,@RegDate,'False')
GO
/****** Object:  StoredProcedure [dbo].[ManageStudent]    Script Date: 12/10/2014 16:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ManageStudent]
@SID int,
@Action bit
as
update StudentInfo set IsActive=@Action where sid=@SID
GO
/****** Object:  StoredProcedure [dbo].[InsertNewExamType]    Script Date: 12/10/2014 16:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertNewExamType]
@Type varchar(50)
as
insert into ExamTypes values(@Type)
GO
/****** Object:  StoredProcedure [dbo].[GetRandomQuestions]    Script Date: 12/10/2014 16:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetRandomQuestions]
@TID int
as
SELECT     TOP 20   QuestionBank.ETypeID, ExamTypes.ExamType, QuestionBank.Qid, QuestionBank.question, QuestionBank.opA, QuestionBank.opB, QuestionBank.opC, 
                         QuestionBank.opD, QuestionBank.correctans
FROM            ExamTypes INNER JOIN
                         QuestionBank ON ExamTypes.ExamTypeId = QuestionBank.ETypeID
						 where QuestionBank.ETypeID=@TID order by NewID()
GO
/****** Object:  StoredProcedure [dbo].[GetAllStudents]    Script Date: 12/10/2014 16:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllStudents]
as
select * from StudentInfo order by regdate desc
GO
/****** Object:  StoredProcedure [dbo].[GetAllExamType]    Script Date: 12/10/2014 16:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllExamType]
as
select ExamTypeID,ExamType from ExamTypes
GO
/****** Object:  StoredProcedure [dbo].[GetAllExamQuestions]    Script Date: 12/10/2014 16:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllExamQuestions]
as
SELECT        QuestionBank.ETypeID, ExamTypes.ExamType, QuestionBank.Qid, QuestionBank.question, QuestionBank.opA, QuestionBank.opB, QuestionBank.opC, 
                         QuestionBank.opD, QuestionBank.correctans
FROM            ExamTypes INNER JOIN
                         QuestionBank ON ExamTypes.ExamTypeId = QuestionBank.ETypeID
GO
/****** Object:  StoredProcedure [dbo].[GetAllExamQuestionByExamType]    Script Date: 12/10/2014 16:08:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetAllExamQuestionByExamType]
@ETypeID int
as
SELECT        QuestionBank.ETypeID, ExamTypes.ExamType, QuestionBank.Qid, QuestionBank.question, QuestionBank.opA, QuestionBank.opB, QuestionBank.opC, 
                         QuestionBank.opD, QuestionBank.correctans
FROM            ExamTypes INNER JOIN
                         QuestionBank ON ExamTypes.ExamTypeId = QuestionBank.ETypeID
						 where QuestionBank.ETypeID=@ETypeID
GO
/****** Object:  Default [DF_StudentInfo_IsActive]    Script Date: 12/10/2014 16:08:11 ******/
ALTER TABLE [dbo].[StudentInfo] ADD  CONSTRAINT [DF_StudentInfo_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
