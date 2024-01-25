-- =============================================
-- Author:		<Satrapinsky,Alex>
-- Create date: <12/14/2023>
-- Description:	<>
-- =============================================


CREATE PROCEDURE [Inbound].[usp_Get_All_Lot_Items]
AS
begin
SELECT       
		Lot_Id as LotId,
		Lot_Number as LotNumber,
		Shipper_Id as ShipperId,
		Lot_Invoice_Id as LotInvoiceId,
		Purchase_Order_Id as PurchaseOrderId,
		Carrier_Id as CarrierId,
		Delivery_Terms_Id as DeliveryTermsId,
		Lot_Transpot_Id as LotTranspotId,
		Lot_Transport_Type_Id as LotTransportTypeId,
	    Lot_Departure_Location_Id as LotDepartureLocationId,
		Lot_Customs_Location_Id as LotCustomsLocationId, 
		Lot_Arrival_Location_Id as LotArrivalLocationId, 
		Lot_Transport_Document as LotTransportDocument,
		Lot_ETD as LotETD, 
		Lot_ATD as LotATD,
		Lot_ETA as LotETA,
		Lot_ATA as LotATA,
		Close_Date as CloseDate, 
		Lot_Comment as LotComment
FROM    Inbound.tbd_Lots
end
