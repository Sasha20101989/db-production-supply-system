CREATE TABLE [Inbound].[tbd_Terms_Of_Delivery] (
    [Delivery_Terms_Id] INT          IDENTITY (1, 1) NOT NULL,
    [Delivery_Term]     NVARCHAR (5) NOT NULL,
    CONSTRAINT [PK_tbd_Delivery_Terms] PRIMARY KEY CLUSTERED ([Delivery_Terms_Id] ASC)
);

