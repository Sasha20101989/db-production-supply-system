CREATE TABLE [Inbound].[tbd_Locations] (
    [Location_Id]      INT           IDENTITY (1, 1) NOT NULL,
    [Location_Type_Id] INT           NOT NULL,
    [Location_Name]    NVARCHAR (50) NOT NULL,
    [City]             NVARCHAR (50) NULL,
    CONSTRAINT [PK_tbd_Terminals] PRIMARY KEY CLUSTERED ([Location_Id] ASC),
    CONSTRAINT [FK_tbd_Locations_tbd_Types_Of_Location] FOREIGN KEY ([Location_Type_Id]) REFERENCES [Inbound].[tbd_Types_Of_Location] ([Location_Type_Id])
);

