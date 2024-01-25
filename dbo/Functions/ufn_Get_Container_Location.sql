-- =============================================
-- Author:		<Satrapinsky, Alex>
-- Create date: <19.02.2024>
-- Description:	<>
-- =============================================
CREATE FUNCTION [dbo].[ufn_Get_Container_Location](@ContainerId INT)

RETURNS INT

AS

BEGIN

	DECLARE @TraceId INT
    DECLARE @LocationId INT;
	DECLARE @MaxDate DATE;
	DECLARE @Tracing TABLE (Tracing_Id INT, Trace_Location_Id INT, Trace_ATA DATE)

-- make temperim table tracing for container
INSERT INTO  @Tracing (Tracing_Id , Trace_Location_Id , Trace_ATA )
SELECT      Tracing_Id, Trace_Location_Id, Trace_ATA
FROM        Inbound.tbd_Tracing
WHERE		Container_In_Lot_Id = @ContainerId

--get latest event date
SELECT @MaxDate =  MAX(Trace_ATA)
FROM   @Tracing 

--for latest date define maximum tracing position
SELECT        @TraceId = MAX(Tracing_Id) 
FROM		   @Tracing
WHERE        Trace_ATA = @MaxDate

-- get lication Id for this tracing position	
SELECT        @LocationId = Tracing_Id 
FROM           @Tracing
WHERE        Tracing_Id = @TraceId
	
	RETURN @LocationId;
	
END;