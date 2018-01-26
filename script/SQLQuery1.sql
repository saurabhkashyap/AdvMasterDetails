DECLARE @Fromdate datetime = '19 November 2017  10:10 pm',
@Todate datetime = '19 November 2017  11:10 pm'
--select @Fromdate , @Todate
--select CONVERT(datetime,Fromdate),CONVERT(datetime,Todate) from OrderDetails
--where @Fromdate >= CONVERT(datetime,Fromdate)
--and @Todate <= CONVERT(datetime,Todate)

select CAST((@Fromdate) AS datetime),CAST(Fromdate AS datetime) from OrderDetails where CAST((@Fromdate) AS datetime) >= CAST(FromDate AS datetime) 

DECLARE @Fromdate datetime = '19 November 2017  10:10 pm', 
@Todate datetime = '23 November 2017  12:00 pm'
--select * from OrderDetails where (@Fromdate between CONVERT(datetime,Fromdate) and Convert(datetime,@ToDate)) and (@ToDate between CONVERT(datetime,@Fromdate)and CONVERT(datetime,Todate))


select 
* 
,DATEDIFF(MINUTE,@Fromdate,Fromdate),DATEDIFF(MINUTE,Todate,@Todate)
 from OrderDetails
where DATEDIFF(MINUTE,@Fromdate,Fromdate) >= 0 and DATEDIFF(MINUTE,Todate,@Todate) >= 0

select datediff(minute,getdate(),'2017-11-16 23:55:07.480')

