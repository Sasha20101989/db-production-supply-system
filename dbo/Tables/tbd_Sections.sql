CREATE TABLE [dbo].[tbd_Sections] (
    [Section_Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Section_Name] NVARCHAR (300) NOT NULL,
    CONSTRAINT [PK_Sections] PRIMARY KEY CLUSTERED ([Section_Id] ASC)
);

