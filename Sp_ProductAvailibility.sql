Alter Procedure [dbo].[sp_ProductAvailibility]
(
	@FromD nvarchar(40),
	@ToD nvarchar(40),
	@ProdId int,
	@Status nvarchar(20),
	@Qnt int
)
AS
BEGIN

--DECLARE @FromD  nvarchar(40) = '17 November 2017 06:00 am',
--@ToD nvarchar(40) = '19 November 2017  10:05 am',
--@ProdId int = 35,
--@Qnt int = 1,
--@Status nvarchar(20)='wait for review'
select countmax -(select COALESCE(sum(Quantity),0) from OrderDetails
 where ProductID =@ProdId 
and (Convert (datetime,FromDate)>= Convert (datetime,@FromD) and Convert (datetime,FromDate) <= Convert(datetime,@ToD)) 
and Convert (datetime,ToDate) <= COnvert (datetime,@ToD) and [Status]=@Status)
from Products where ProductID=@ProdId
END