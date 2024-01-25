CREATE TABLE [Inbound].[tbd_Terms_Of_Container_Use] (
    [Id]         INT  IDENTITY (1, 1) NOT NULL,
    [Init_Date]  DATE NOT NULL,
    [Carrier_Id] INT  NULL,
    [Detention]  INT  NULL,
    [Storage]    INT  NULL,
    CONSTRAINT [PK_tbd_TracingEventStaticData] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_tbd_Terms_Of_Container_Use_tbd_Carriers] FOREIGN KEY ([Carrier_Id]) REFERENCES [Inbound].[tbd_Carriers] ([Carrier_Id])
);

