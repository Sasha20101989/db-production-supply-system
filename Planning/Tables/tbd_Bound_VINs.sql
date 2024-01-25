CREATE TABLE [Planning].[tbd_Bound_VINs] (
    [Bound_VINs_Id]       INT IDENTITY (1, 1) NOT NULL,
    [VIN_In_Container_Id] INT NOT NULL,
    [VIN_Number_Local_Id] INT NOT NULL,
    CONSTRAINT [PK_tbd_Bound_VINs] PRIMARY KEY CLUSTERED ([Bound_VINs_Id] ASC),
    CONSTRAINT [FK_tbd_Bound_VINs_tbd_VIN_Numbers_Local1] FOREIGN KEY ([VIN_Number_Local_Id]) REFERENCES [Planning].[tbd_VIN_Numbers_Local] ([VIN_Number_Local_Id]),
    CONSTRAINT [FK_tbd_Bound_VINs_tbd_VINs_In_Container] FOREIGN KEY ([VIN_In_Container_Id]) REFERENCES [Planning].[tbd_VINs_In_Container] ([VIN_In_Container_Id])
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbd_Bound_VINs_Uniq_VIN_Number_Local]
    ON [Planning].[tbd_Bound_VINs]([VIN_Number_Local_Id] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_tbd_Bound_VINs_Uniq_VIN_In_Cont]
    ON [Planning].[tbd_Bound_VINs]([VIN_In_Container_Id] ASC);

