CREATE TABLE [Inbound].[tbd_Invoices] (
    [Invoice_Id]        INT           IDENTITY (1, 1) NOT NULL,
    [Invoice_Number]    NVARCHAR (20) NOT NULL,
    [Invoice_Date]      DATE          NOT NULL,
    [Shipper_Id]        INT           NOT NULL,
    [Purchase_Order_Id] INT           NOT NULL,
    CONSTRAINT [PK_tbd_Invoices] PRIMARY KEY CLUSTERED ([Invoice_Id] ASC),
    CONSTRAINT [FK_tbd_Invoices_tbd_Purchase_Orders] FOREIGN KEY ([Purchase_Order_Id]) REFERENCES [Partscontrol].[tbd_Purchase_Orders] ([Purchase_Order_Id]),
    CONSTRAINT [IX_tbd_Invoices] UNIQUE NONCLUSTERED ([Invoice_Number] ASC)
);



