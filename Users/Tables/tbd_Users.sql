CREATE TABLE [Users].[tbd_Users] (
    [id]         INT           IDENTITY (1, 1) NOT NULL,
    [Account]    NVARCHAR (10) NOT NULL,
    [Name]       NVARCHAR (30) NOT NULL,
    [Surname]    NVARCHAR (30) NOT NULL,
    [Patronymic] NVARCHAR (30) NOT NULL,
    [Section_Id] INT           NULL,
    CONSTRAINT [PK_tbd_Users] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_tbd_Users_Sections] FOREIGN KEY ([Section_Id]) REFERENCES [dbo].[tbd_Sections] ([Section_Id]),
    CONSTRAINT [UQ_tbd_Users_Account] UNIQUE NONCLUSTERED ([Account] ASC)
);



