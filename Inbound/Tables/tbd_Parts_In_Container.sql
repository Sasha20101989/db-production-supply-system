CREATE TABLE [Inbound].[tbd_Parts_In_Container] (
    [Part_In_Container_Id] INT IDENTITY (1, 1) NOT NULL,
    [Container_In_Lot_Id]  INT NOT NULL,
    [Case_Id]              INT NULL,
    [Part_Number_Id]       INT NOT NULL,
    [Quantity]             INT NOT NULL,
    [Part_Invoice_Id]      INT NOT NULL,
    CONSTRAINT [PK_tbd_PartsInContainer] PRIMARY KEY CLUSTERED ([Part_In_Container_Id] ASC),
    CONSTRAINT [FK_tbd_Parts_In_Container_tbd_Cases] FOREIGN KEY ([Case_Id]) REFERENCES [Inbound].[tbd_Cases] ([Case_Id]),
    CONSTRAINT [FK_tbd_PartsInContainer_tbd_ContainersInLot] FOREIGN KEY ([Container_In_Lot_Id]) REFERENCES [Inbound].[tbd_Containers_In_Lot] ([Container_In_Lot_Id]),
    CONSTRAINT [FK_tbd_PartsInContainer_tbd_CustomsParts] FOREIGN KEY ([Part_Number_Id]) REFERENCES [Customs].[tbd_Customs_Parts] ([Part_Number_Id]),
    CONSTRAINT [FK_tbd_PartsInContainer_tbd_Invoices] FOREIGN KEY ([Part_Invoice_Id]) REFERENCES [Inbound].[tbd_Invoices] ([Invoice_Id])
);





