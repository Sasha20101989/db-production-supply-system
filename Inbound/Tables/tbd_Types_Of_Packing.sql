CREATE TABLE [Inbound].[tbd_Types_Of_Packing] (
    [Packing_Type_Id]       INT            IDENTITY (1, 1) NOT NULL,
    [Supplier_Packing_Type] NVARCHAR (150) NOT NULL,
    [Packing_Type]       NVARCHAR (150) NOT NULL,
    CONSTRAINT [PK_tbd_PackingTypes] PRIMARY KEY CLUSTERED ([Packing_Type_Id] ASC)
);

