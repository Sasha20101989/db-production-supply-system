CREATE TABLE [Inbound].[tbd_Shippers] (
    [Shipper_Id]                           INT            IDENTITY (1, 1) NOT NULL,
    [Shipper_Name]                         NVARCHAR (20)  NOT NULL,
    [Shipper_Full_Name]                    NVARCHAR (100) NULL,
    [Shipper_Default_Delivery_Location_Id] INT            NULL,
    CONSTRAINT [PK_tbd_Shippers] PRIMARY KEY CLUSTERED ([Shipper_Id] ASC),
    CONSTRAINT [FK_tbd_Shippers_tbd_Locations] FOREIGN KEY ([Shipper_Default_Delivery_Location_Id]) REFERENCES [Inbound].[tbd_Locations] ([Location_Id])
);



