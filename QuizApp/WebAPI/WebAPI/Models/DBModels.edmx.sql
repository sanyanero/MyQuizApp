
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/19/2018 13:36:45
-- Generated from EDMX file: D:\GithubProjects\MyQuizApp\QuizApp\WebAPI\WebAPI\Models\DBModels.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [QuizDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Questions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Questions];
GO
IF OBJECT_ID(N'[dbo].[Participants]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Participants];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Questions'
CREATE TABLE [dbo].[Questions] (
    [QnID] int IDENTITY(1,1) NOT NULL,
    [Qn] varchar(250)  NULL,
    [ImageName] varchar(50)  NULL,
    [Option1] varchar(50)  NULL,
    [Option2] varchar(50)  NULL,
    [Option3] varchar(50)  NULL,
    [Option4] varchar(50)  NULL,
    [Answer] int  NULL,
    [Subject] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Participants'
CREATE TABLE [dbo].[Participants] (
    [ParticipantID] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NULL,
    [Email] varchar(50)  NULL,
    [Score] int  NULL,
    [TimeSpent] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [QnID] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [PK_Questions]
    PRIMARY KEY CLUSTERED ([QnID] ASC);
GO

-- Creating primary key on [ParticipantID] in table 'Participants'
ALTER TABLE [dbo].[Participants]
ADD CONSTRAINT [PK_Participants]
    PRIMARY KEY CLUSTERED ([ParticipantID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------