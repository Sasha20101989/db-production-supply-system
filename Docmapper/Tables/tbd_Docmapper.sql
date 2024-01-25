CREATE TABLE [Docmapper].[tbd_Docmapper] (
    [Docmapper_Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Docmapper_Name] NVARCHAR (50)  NOT NULL,
    [Default_Folder] NVARCHAR (100) NULL,
    [Sheet_Name]     NVARCHAR (50)  NOT NULL,
    [First_Data_Row] INT            CONSTRAINT [DF_tbd_Docmapper_First_Data_Row] DEFAULT ((1)) NULL,
    [Is_Active]      BIT            CONSTRAINT [DF_tbd_Docmapper_IsActive] DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_tbd_Docmapper] PRIMARY KEY CLUSTERED ([Docmapper_Id] ASC)
);


GO

