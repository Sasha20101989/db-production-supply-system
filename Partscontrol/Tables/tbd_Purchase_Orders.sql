CREATE TABLE [Partscontrol].[tbd_Purchase_Orders] (
    [Purchase_Order_Id]     INT           IDENTITY (1, 1) NOT NULL,
    [Order_Type_Id]         INT           NOT NULL,
    [Purchase_Order_Number] NVARCHAR (10) NOT NULL,
    [Purchase_Order_Date]   DATE          NOT NULL,
    CONSTRAINT [PK_tbd_PurchaseOrders] PRIMARY KEY CLUSTERED ([Purchase_Order_Id] ASC),
    CONSTRAINT [FK_tbd_Purchase_Orders_tbd_Types_Of_Order] FOREIGN KEY ([Order_Type_Id]) REFERENCES [Partscontrol].[tbd_Types_Of_Order] ([Order_Type_Id]),
    CONSTRAINT [IX_tbd_PurchaseOrders] UNIQUE NONCLUSTERED ([Purchase_Order_Number] ASC)
);

