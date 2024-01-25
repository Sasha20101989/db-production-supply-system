CREATE TABLE [Inbound].[tbd_Containers_In_Lot] (
    [Container_In_Lot_Id]     INT            IDENTITY (1, 1) NOT NULL,
    [Lot_Id]                  INT            NOT NULL,
    [Container_Number]        NVARCHAR (11)  NOT NULL,
    [Seal_Number]             NVARCHAR (20)  NULL,
    [Container_Type_Id]       INT            NULL,
    [IMO_Cargo]               BIT            NULL,
    [Storage_Last_Free_Day]   DATE           NULL,
    [Detention_Last_Free_Day] DATE           NULL,
    [Container_Comment]       NVARCHAR (250) NULL,
    [Last_Tracing_Update]     DATE           NULL,
    [CI_OnTheWay]             BIT            CONSTRAINT [DF_tbd_Containers_In_Lot_CI_OnTheWay] DEFAULT ((0)) NOT NULL,
    CONSTRAINT [PK_tbd_ContainersInLot] PRIMARY KEY CLUSTERED ([Container_In_Lot_Id] ASC),
    CONSTRAINT [FK_tbd_Containers_In_Lot_tbd_Types_Of_Container] FOREIGN KEY ([Container_Type_Id]) REFERENCES [Inbound].[tbd_Types_Of_Container] ([Container_Type_Id]),
    CONSTRAINT [FK_tbd_ContainersInLot_tbd_Lots] FOREIGN KEY ([Lot_Id]) REFERENCES [Inbound].[tbd_Lots] ([Lot_Id])
);



