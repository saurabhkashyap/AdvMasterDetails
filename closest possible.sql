SELECT [OrderDetails] = CAST('19 November 2017 10:00 pm' AS datetime)

nvarchar date
Declare @date as nvarchar(200)
@date  SELECT [OrderDetails] = CAST('19 November 2017 10:00 pm' AS smalldatetime)

SELECT [OrderDetails] = CONVERT(datetime,convert(varchar,'19 November 2017 10:00 pm'))

select CONVERT(datetime,'19 November 2017 10:00 am')  -- 2017-11-21 10:00:00.000

select * from OrderDetails
where CONVERT(datetime,'21 November 2017  10:00 am') >= CONVERT(datetime,FromDate)
and CONVERT(datetime,'23 November 2017  10:00 am') <= CONVERT(datetime,ToDate)


SELECT * FROM OrderDetails
WHERE (CONCAT(FromDate, ToDate) LIKE '%10 November 2017%')
AND (CONCAT(ToDate,FromDate) LIKE '%23 November 2017%')

select * from OrderDetails
where CONVERT(datetime,convert(varchar,'21 November 2017 10:00 am')) >= CONVERT(datetime,convert(varchar,FromDate))
and CONVERT(datetime,convert(varchar,'23 November 2017 10:00 pm')) <= CONVERT(datetime,convert(varchar,ToDate))
and Quantity > 0
 where 
CONVERT(datetime,convert(varchar,FromDate))