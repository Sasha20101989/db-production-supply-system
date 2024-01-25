CREATE TABLE [Partscontrol].[tbd_Types_Of_Order] (
    [Order_Type_Id] INT           IDENTITY (1, 1) NOT NULL,
    [Order_Type]    NVARCHAR (10) NOT NULL,
    CONSTRAINT [PK_tbd_Types_Of_Order] PRIMARY KEY CLUSTERED ([Order_Type_Id] ASC)
);

