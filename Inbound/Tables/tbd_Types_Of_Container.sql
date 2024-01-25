CREATE TABLE [Inbound].[tbd_Types_Of_Container] (
    [Container_Type_Id] INT           IDENTITY (1, 1) NOT NULL,
    [Container_Type]    NVARCHAR (10) NOT NULL,
    CONSTRAINT [PK_tbd_Types_Of_Container] PRIMARY KEY CLUSTERED ([Container_Type_Id] ASC)
);

