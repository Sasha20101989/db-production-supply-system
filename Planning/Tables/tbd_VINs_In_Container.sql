CREATE TABLE [Planning].[tbd_VINs_In_Container] (
    [VIN_In_Container_Id] INT           IDENTITY (1, 1) NOT NULL,
    [Container_In_Lot_Id] INT           NOT NULL,
    [Supplier_VIN_Number] NVARCHAR (50) NOT NULL,
    [Modvar_Id]           INT           NOT NULL,
    [Lot_Id]              INT           NOT NULL,
    CONSTRAINT [PK_tbd_Vin_In_Container] PRIMARY KEY CLUSTERED ([VIN_In_Container_Id] ASC),
    CONSTRAINT [FK_tbd_Vin_In_Container_tbd_Containers_In_Lot] FOREIGN KEY ([Container_In_Lot_Id]) REFERENCES [Inbound].[tbd_Containers_In_Lot] ([Container_In_Lot_Id])
);



