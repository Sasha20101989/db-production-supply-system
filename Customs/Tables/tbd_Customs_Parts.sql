CREATE TABLE [Customs].[tbd_Customs_Parts] (
    [Part_Number_Id] INT            NOT NULL,
    [Part_Number]    NVARCHAR (50)  NOT NULL,
    [Part_Name_Eng]  NVARCHAR (150) NOT NULL,
    [Part_Name_Rus]  NVARCHAR (MAX) NULL,
    [Hs_Code]        NCHAR (10)     NULL,
    [Part_Type_Id]   INT            NULL,
    CONSTRAINT [PK_tbd_CustomsParts] PRIMARY KEY CLUSTERED ([Part_Number_Id] ASC),
    CONSTRAINT [FK_tbd_CustomsParts_tbd_PartTypes] FOREIGN KEY ([Part_Type_Id]) REFERENCES [Inbound].[tbd_Types_Of_Part] ([Part_Type_Id]),
    CONSTRAINT [IX_tbd_CustomsParts] UNIQUE NONCLUSTERED ([Part_Number_Id] ASC)
);



