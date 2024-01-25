CREATE TABLE [Planning].[tbd_Planned_Sequence] (
    [Planned_Sequence_Id]      INT IDENTITY (1, 1) NOT NULL,
    [VIN_In_Container_Id]      INT NOT NULL,
    [PP_Order]                 INT NULL,
    [CCR_Order]                INT NULL,
    [Status_For_SFS_Upload_Id] INT CONSTRAINT [DF_tbd_PlannedSequence_StatusForSFSUpload] DEFAULT ((1)) NULL,
    [Is_Suspicious]            INT CONSTRAINT [DF_tbd_PlannedSequence_IsSuspicious] DEFAULT ((0)) NULL,
    [Is_Unyelding]             INT CONSTRAINT [DF_tbd_Planned_Sequence_Is_Unyelding] DEFAULT ((0)) NULL,
    CONSTRAINT [PK_tbd_Planned_Sequence] PRIMARY KEY CLUSTERED ([Planned_Sequence_Id] ASC),
    CONSTRAINT [FK_tbd_Planned_Sequence_tbd_VINs_In_Container] FOREIGN KEY ([VIN_In_Container_Id]) REFERENCES [Planning].[tbd_VINs_In_Container] ([VIN_In_Container_Id]),
    CONSTRAINT [FK_tbd_PlannedSequence_tbd_StatusesForSFSUpload] FOREIGN KEY ([Status_For_SFS_Upload_Id]) REFERENCES [Planning].[tbd_Statuses_For_SFS_Upload] ([Status_For_SFS_Upload_Id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbd_Planned_Sequence_VIN_In_Cont]
    ON [Planning].[tbd_Planned_Sequence]([VIN_In_Container_Id] ASC);

