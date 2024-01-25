CREATE TABLE [Inbound].[tbd_Cases] (
    [Case_Id]         INT            IDENTITY (1, 1) NOT NULL,
    [Case_No]         NVARCHAR (10)  NOT NULL,
    [Net_Weight]      DECIMAL (6, 3) NOT NULL,
    [Gross_Wheight]   DECIMAL (6, 3) NOT NULL,
    [Packing_Type_Id] INT            NULL,
    [Length]          DECIMAL (6, 2) NULL,
    [Width]           DECIMAL (6, 2) NULL,
    [Height]          DECIMAL (6, 2) NULL,
    [Volume]          DECIMAL (6, 2) NULL,
    CONSTRAINT [PK_tbd_Cases] PRIMARY KEY CLUSTERED ([Case_Id] ASC),
    CONSTRAINT [FK_tbd_Cases_tbd_Types_Of_Packing] FOREIGN KEY ([Packing_Type_Id]) REFERENCES [Inbound].[tbd_Types_Of_Packing] ([Packing_Type_Id])
);

