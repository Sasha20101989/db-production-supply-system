CREATE TABLE [Master].[tbd_Processes_Steps] (
    [Process_Step_Id] INT IDENTITY (1, 1) NOT NULL,
    [Process_Id]      INT NOT NULL,
    [Step]            INT NOT NULL,
    [Docmapper_Id]    INT NOT NULL,
    [Section_Id]      INT NOT NULL,
    CONSTRAINT [PK_Processes_Steps] PRIMARY KEY CLUSTERED ([Process_Step_Id] ASC),
    CONSTRAINT [FK_Processes_Steps_Processes] FOREIGN KEY ([Process_Id]) REFERENCES [Master].[tbd_Processes] ([Process_Id]),
    CONSTRAINT [FK_Processes_Steps_Sections] FOREIGN KEY ([Section_Id]) REFERENCES [dbo].[tbd_Sections] ([Section_Id]),
    CONSTRAINT [FK_Processes_Steps_tbd_Docmapper] FOREIGN KEY ([Docmapper_Id]) REFERENCES [Docmapper].[tbd_Docmapper] ([Docmapper_Id])
);

