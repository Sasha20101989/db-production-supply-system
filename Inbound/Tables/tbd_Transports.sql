CREATE TABLE [Inbound].[tbd_Transports] (
    [Transport_Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Transport_Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tbd_Transports] PRIMARY KEY CLUSTERED ([Transport_Id] ASC)
);

