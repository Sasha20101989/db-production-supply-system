-- =============================================
-- Author:		GK
-- Create date: 19.01.2024
-- Description:	Inserts new vins specifying PP order
-- =============================================
CREATE PROCEDURE [Planning].[usp_Insert_PP_Sequence]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    INSERT INTO Planning.tbd_Planned_Sequence (VIN_In_Container_Id, PP_Order, CCR_Order)
	SELECT incoming.VIN_In_Container_Id
		  ,NEXT VALUE FOR Planning.PPSequence
			OVER (ORDER BY lots.Lot_ETA
						  ,incoming.Lot_Id
						  ,incoming.Container_In_Lot_Id) AS [PP_Order]
		  ,ROW_NUMBER() OVER (PARTITION BY incoming.Lot_Id 
						ORDER BY incoming.Lot_Id
								,incoming.Container_In_Lot_Id) AS [CCR_Order]
	FROM Planning.tbd_VINs_In_Container AS incoming 
		LEFT OUTER JOIN Planning.tbd_Planned_Sequence AS existing 
		ON incoming.VIN_In_Container_Id = existing.VIN_In_Container_Id
			LEFT OUTER JOIN Inbound.tbd_Lots AS lots
			ON incoming.Lot_Id = lots.Lot_Id
	WHERE (existing.Planned_Sequence_Id IS NULL);

END