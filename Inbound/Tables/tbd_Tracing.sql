CREATE TABLE [Inbound].[tbd_Tracing] (
    [Tracing_Id]               INT           IDENTITY (1, 1) NOT NULL,
    [Container_In_Lot_Id]      INT           NOT NULL,
    [Carrier_Id]               INT           NULL,
    [Trace_Transport_Id]       INT           NULL,
    [Transportation_Type_Id]   INT           NULL,
    [Trace_Location_Id]        INT           NOT NULL,
    [Trace_Transport_Document] NVARCHAR (50) NULL,
    [Trace_ETA]                DATE          NULL,
    [Trace_ATA]                DATE          NULL,
    [Trace_ETD]                DATE          NULL,
    [Trace_ATD]                DATE          NULL,
    CONSTRAINT [PK_tbd_Tracing] PRIMARY KEY CLUSTERED ([Tracing_Id] ASC),
    CONSTRAINT [FK_tbd_Tracing_tbd_Carriers] FOREIGN KEY ([Carrier_Id]) REFERENCES [Inbound].[tbd_Carriers] ([Carrier_Id]),
    CONSTRAINT [FK_tbd_Tracing_tbd_Containers_In_Lot] FOREIGN KEY ([Container_In_Lot_Id]) REFERENCES [Inbound].[tbd_Containers_In_Lot] ([Container_In_Lot_Id]),
    CONSTRAINT [FK_tbd_Tracing_tbd_Locations1] FOREIGN KEY ([Trace_Location_Id]) REFERENCES [Inbound].[tbd_Locations] ([Location_Id]),
    CONSTRAINT [FK_tbd_Tracing_tbd_Transports] FOREIGN KEY ([Trace_Transport_Id]) REFERENCES [Inbound].[tbd_Transports] ([Transport_Id]),
    CONSTRAINT [FK_tbd_Tracing_tbd_Types_Of_Transportation] FOREIGN KEY ([Transportation_Type_Id]) REFERENCES [Inbound].[tbd_Types_Of_Transport] ([Transport_Type_Id])
);





