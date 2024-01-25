CREATE TABLE [Inbound].[tbd_Carriers] (
    [Carrier_Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Carrier_Name] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_tbd_Carriers] PRIMARY KEY CLUSTERED ([Carrier_Id] ASC)
);



