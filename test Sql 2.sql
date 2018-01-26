


select * from OrderDetails
where CONVERT(datetime,'17 November 2017  9:00 am') >= CONVERT(datetime,FromDate)
and CONVERT(datetime,'23 November 2017  10:00 pm') <= CONVERT(datetime,ToDate)

select * from OrderDetails
where CONVERT(datetime,'19 November 2017  10:00 am') >= CONVERT(datetime,FromDate)

select CONVERT(datetime,'19 November 2017  10:00 am')  --2017-11-19 10:00:00.000
select  CONVERT(datetime,FromDate) from OrderDetails  -- 2017-11-17 10:00:00.000

select * from OrderDetails where CAST(CONVERT(datetime,'23 November 2017  10:00 am') AS DATE) >= CAST(CONVERT(datetime,'17 November 2017  10:00 am') AS DATE) 


SELECT * from OrderDetails where
FromDate BETWEEN ((CONVERT(datetime,'23 November 2017  10:00 am')) and ((CONVERT(datetime,'17 November 2017  10:00 am'))) OR 
ToDate BETWEEN ((CONVERT(datetime,'23 November 2017  10:00 am')),((CONVERT(datetime,'17 November 2017  10:00 am'))) OR 
FromDate <= (CONVERT(datetime,'23 November 2017  10:00 am') AND ToDate >= (CONVERT(datetime,'17 November 2017  10:00 am'))

--//** 100% Working Date Time Range Validator availibility of Product or Not**//
DECLARE @FromD  nvarchar(40) = '17 November 2017 10:10 am',
@ToD nvarchar(40) = '17 November 2017  11:00 pm',
@ProdId int = 35,
@Qnt int =2,
@Status nvarchar ='Approved - Package'
select * from  OrderDetails OD INNER JOIN Products P ON p.ProductID = OD.ProductID  
--where Convert(datetime,FromDate)>=Convert(datetime,@FromD) and Convert(datetime,ToDate)<Convert(datetime,@ToD) or Convert(datetime,ToDate)>=@FromD and Convert(datetime,FromDate)<Convert(datetime,@ToD) and OD.ProductID=@ProdId and Status=@Status

where Convert(datetime,FromDate)>=@FromD and Convert(datetime,ToDate)<@ToD or Convert(datetime,ToDate)>=@FromD and Convert(datetime,FromDate)<@ToD and OD.ProductID in (35,36,37,38) and Status='Approved - Package'
and @Qnt >  p.CountMax-@Qnt