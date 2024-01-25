CREATE TABLE [Customs].[tbd_Customs_Clearance] (
    [Customs_Clearance_Id]           INT           IDENTITY (1, 1) NOT NULL,
    [Container_In_Lot_Id]            INT           NOT NULL,
    [Invoce_Number]                  NVARCHAR (50) NULL,
    [Docs_To_Customs_Date]           DATE          NULL,
    [AEO_Obbligation_Number]         NVARCHAR (20) NULL,
    [AEO_Obbligation_Release_Date]   DATE          NULL,
    [CCD_Number]                     NVARCHAR (20) NULL,
    [CCD_Release_Date]               DATE          NULL,
    [Customs_Inpection_Need]         BIT           NULL,
    [EDocuments_To_Be_Provided_Date] DATE          NULL,
    [EDocuments_To_Be_Received_Date] DATE          NULL,
    [Part_Type_Id]                   INT           NULL,
    CONSTRAINT [PK_tbd_Customs_Clearance] PRIMARY KEY CLUSTERED ([Customs_Clearance_Id] ASC),
    CONSTRAINT [FK_tbd_Customs_Clearance_tbd_Containers_In_Lot] FOREIGN KEY ([Container_In_Lot_Id]) REFERENCES [Inbound].[tbd_Containers_In_Lot] ([Container_In_Lot_Id]),
    CONSTRAINT [FK_tbd_Customs_Clearance_tbd_Types_Of_Part] FOREIGN KEY ([Part_Type_Id]) REFERENCES [Inbound].[tbd_Types_Of_Part] ([Part_Type_Id])
);



