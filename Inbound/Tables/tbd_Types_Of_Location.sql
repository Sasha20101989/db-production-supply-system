CREATE TABLE [Inbound].[tbd_Types_Of_Location] (
    [Location_Type_Id] INT           IDENTITY (1, 1) NOT NULL,
    [Location_Type]    NVARCHAR (20) NOT NULL,
    CONSTRAINT [PK_tbd_Types_Of_Location] PRIMARY KEY CLUSTERED ([Location_Type_Id] ASC)
);

