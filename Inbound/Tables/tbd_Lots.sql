CREATE TABLE [Inbound].[tbd_Lots] (
    [Lot_Id]                    INT            IDENTITY (1, 1) NOT NULL,
    [Lot_Number]                NVARCHAR (20)  NOT NULL,
    [Shipper_Id]                INT            NOT NULL,
    [Lot_Invoice_Id]            INT            NOT NULL,
    [Lot_Purchase_Order_Id]     INT            NOT NULL,
    [Carrier_Id]                INT            NOT NULL,
    [Delivery_Terms_Id]         INT            NOT NULL,
    [Lot_Transpot_Id]           INT            NULL,
    [Lot_Transport_Type_Id]     INT            NOT NULL,
    [Lot_Transport_Document]    NVARCHAR (50)  NULL,
    [Lot_ETD]                   DATE           NULL,
    [Lot_ATD]                   DATE           NULL,
    [Lot_ETA]                   DATE           NULL,
    [Lot_ATA]                   DATE           NULL,
    [Lot_Departure_Location_Id] INT            NOT NULL,
    [Lot_Customs_Location_Id]   INT            NULL,
    [Lot_Arrival_Location_Id]   INT            NOT NULL,
    [Close_Date]                DATE           NULL,
    [Lot_Comment]               NVARCHAR (250) NULL,
    CONSTRAINT [PK_tbd_Lots] PRIMARY KEY CLUSTERED ([Lot_Id] ASC),
    CONSTRAINT [FK_tbd_Lots_tbd_Carriers] FOREIGN KEY ([Carrier_Id]) REFERENCES [Inbound].[tbd_Carriers] ([Carrier_Id]),
    CONSTRAINT [FK_tbd_Lots_tbd_Delivery_Terms] FOREIGN KEY ([Delivery_Terms_Id]) REFERENCES [Inbound].[tbd_Terms_Of_Delivery] ([Delivery_Terms_Id]),
    CONSTRAINT [FK_tbd_Lots_tbd_Invoices] FOREIGN KEY ([Lot_Invoice_Id]) REFERENCES [Inbound].[tbd_Invoices] ([Invoice_Id]),
    CONSTRAINT [FK_tbd_Lots_tbd_Locations] FOREIGN KEY ([Lot_Departure_Location_Id]) REFERENCES [Inbound].[tbd_Locations] ([Location_Id]),
    CONSTRAINT [FK_tbd_Lots_tbd_Locations1] FOREIGN KEY ([Lot_Arrival_Location_Id]) REFERENCES [Inbound].[tbd_Locations] ([Location_Id]),
    CONSTRAINT [FK_tbd_Lots_tbd_Locations2] FOREIGN KEY ([Lot_Customs_Location_Id]) REFERENCES [Inbound].[tbd_Locations] ([Location_Id]),
    CONSTRAINT [FK_tbd_Lots_tbd_PurchaseOrders] FOREIGN KEY ([Lot_Purchase_Order_Id]) REFERENCES [Partscontrol].[tbd_Purchase_Orders] ([Purchase_Order_Id]),
    CONSTRAINT [FK_tbd_Lots_tbd_Shippers] FOREIGN KEY ([Shipper_Id]) REFERENCES [Inbound].[tbd_Shippers] ([Shipper_Id]),
    CONSTRAINT [FK_tbd_Lots_tbd_Transports] FOREIGN KEY ([Lot_Transpot_Id]) REFERENCES [Inbound].[tbd_Transports] ([Transport_Id]),
    CONSTRAINT [FK_tbd_Lots_tbd_Types_Of_Transport] FOREIGN KEY ([Lot_Transport_Type_Id]) REFERENCES [Inbound].[tbd_Types_Of_Transport] ([Transport_Type_Id])
);





