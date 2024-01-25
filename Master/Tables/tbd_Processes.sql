CREATE TABLE [Master].[tbd_Processes] (
    [Process_Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Process_Name] NVARCHAR (300) NOT NULL,
    CONSTRAINT [PK_Processes] PRIMARY KEY CLUSTERED ([Process_Id] ASC)
);

