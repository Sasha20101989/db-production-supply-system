CREATE TABLE [dbo].[tbd_Log] (
    [Log_Id]       BIGINT         IDENTITY (1, 1) NOT NULL,
    [Machine_Name] NVARCHAR (200) NOT NULL,
    [Log_Date]     DATETIME       NOT NULL,
    [Log_Level]    NVARCHAR (5)   NOT NULL,
    [Log_Message]  NVARCHAR (MAX) NOT NULL,
    [Domain_User] [nvarchar](300) NOT NULL,
    [Logger]       NVARCHAR (300) NOT NULL,
    CONSTRAINT [PK_tbd_Log] PRIMARY KEY CLUSTERED ([Log_Id] ASC)
);

