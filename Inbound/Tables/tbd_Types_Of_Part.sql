CREATE TABLE [Inbound].[tbd_Types_Of_Part] (
    [Part_Type_Id] INT           IDENTITY (1, 1) NOT NULL,
    [Part_Type] NVARCHAR (10) NOT NULL,
    CONSTRAINT [PK_tbd_PartTypes] PRIMARY KEY CLUSTERED ([Part_Type_Id] ASC)
);

