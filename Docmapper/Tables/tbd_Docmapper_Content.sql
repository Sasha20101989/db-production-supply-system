CREATE TABLE [Docmapper].[tbd_Docmapper_Content] (
    [Docmapper_Content_Id] INT IDENTITY (1, 1) NOT NULL,
    [Docmapper_Id]         INT NOT NULL,
    [Docmapper_Column_Id]  INT NOT NULL,
    [Row_Nr]               INT NULL,
    [Column_Nr]            INT NOT NULL,
    CONSTRAINT [PK_tbd_Docmapper_Content] PRIMARY KEY CLUSTERED ([Docmapper_Content_Id] ASC),
    CONSTRAINT [FK_tbd_Docmapper_Content_tbd_Docmapper] FOREIGN KEY ([Docmapper_Id]) REFERENCES [Docmapper].[tbd_Docmapper] ([Docmapper_Id]),
    CONSTRAINT [FK_tbd_Docmapper_Content_tbd_Docmapper_Columns] FOREIGN KEY ([Docmapper_Column_Id]) REFERENCES [Docmapper].[tbd_Docmapper_Columns] ([Docmapper_Column_Id])
);



