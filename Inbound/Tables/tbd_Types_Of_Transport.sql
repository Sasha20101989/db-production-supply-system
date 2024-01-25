CREATE TABLE [Inbound].[tbd_Types_Of_Transport] (
    [Transport_Type_Id]       INT           IDENTITY (1, 1) NOT NULL,
    [Transport_Type]          NVARCHAR (10) NOT NULL,
    [Transport_Document_Name] NVARCHAR (10) NOT NULL,
    CONSTRAINT [PK_tbd_Type_Of_Transportation] PRIMARY KEY CLUSTERED ([Transport_Type_Id] ASC)
);

