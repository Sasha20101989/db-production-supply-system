CREATE TABLE [Inbound].[tbd_Parts_In_Invoice] (
    [Part_In_Invoice_Id] INT             IDENTITY (1, 1) NOT NULL,
    [Invoice_Id]         INT             NOT NULL,
    [Part_Number_Id]     INT             NOT NULL,
    [Quantity]           DECIMAL (8, 3)  NOT NULL,
    [Init_Price]         DECIMAL (10, 4) NOT NULL,
    CONSTRAINT [PK_tbd_PartsInInvoice] PRIMARY KEY CLUSTERED ([Part_In_Invoice_Id] ASC),
    CONSTRAINT [FK_tbd_PartsInInvoice_tbd_CustomsParts] FOREIGN KEY ([Part_Number_Id]) REFERENCES [Customs].[tbd_Customs_Parts] ([Part_Number_Id]),
    CONSTRAINT [FK_tbd_PartsInInvoice_tbd_Invoices1] FOREIGN KEY ([Invoice_Id]) REFERENCES [Inbound].[tbd_Invoices] ([Invoice_Id])
);



