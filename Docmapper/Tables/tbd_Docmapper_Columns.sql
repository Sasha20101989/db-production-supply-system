CREATE TABLE [Docmapper].[tbd_Docmapper_Columns] (
    [Docmapper_Column_Id] INT           IDENTITY (1, 1) NOT NULL,
    [Element_Name]        NVARCHAR (50) NOT NULL,
    [System_Column_Name]  NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tbd_Docmapper_Columns] PRIMARY KEY CLUSTERED ([Docmapper_Column_Id] ASC)
);

