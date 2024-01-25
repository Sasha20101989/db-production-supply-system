CREATE TABLE [dbo].[tbd_History_Of_Changes] (
    [ID]         INT            IDENTITY (1, 1) NOT NULL,
    [ObjectName] NVARCHAR (50)  NOT NULL,
    [RecordId]   INT            NOT NULL,
    [FieldName]  NVARCHAR (50)  NULL,
    [OldValue]   NVARCHAR (150) NULL,
    [NewValue]   NVARCHAR (150) NULL,
    [UserName]   NVARCHAR (7)   NOT NULL,
    [Added]      DATETIME       NULL,
    CONSTRAINT [PK_tbd_HistoryOfChanges] PRIMARY KEY CLUSTERED ([ID] ASC)
);

