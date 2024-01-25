CREATE TABLE [Planning].[tbd_Statuses_For_SFS_Upload] (
    [Status_For_SFS_Upload_Id] INT           IDENTITY (1, 1) NOT NULL,
    [Status_Name]              NVARCHAR (10) NOT NULL,
    CONSTRAINT [PK_tbd_StatusesForSFSUpload] PRIMARY KEY CLUSTERED ([Status_For_SFS_Upload_Id] ASC)
);

