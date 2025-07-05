select [province], COUNT(distinct order_id) as totalsales
from [KMS Sql Case Study]
group by [province]
order by totalsales desc
select [Product_Category], COUNT(distinct order_id) as totalsales
from [KMS Sql Case Study]
group by [Product_Category]
order by totalsales desc
select region, SUM(sales) as totalsales
from [KMS Sql Case Study]
where Region = 'ontario'
group by Region
select SUM(sales) as totalsales
from [KMS Sql Case Study]
where Product_Sub_Category = 'appliances'
and Region = 'ontario'
select * 
from (
select top 3 region, SUM(sales) as totalsales
from [KMS Sql Case Study]
group by Region
order by totalsales desc
) as topsales
union all
select *
from (
select top 3 region, SUM(sales) as totalsales
from [KMS Sql Case Study]
group by Region
order by totalsales asc
) as bottomsales
order by totalsales desc;
select top 10 Customer_Name, SUM(sales) as totalsales
from [KMS Sql Case Study]
group by Customer_Name
order by totalsales asc

select top 1 Ship_Mode, sum(Shipping_Cost) as totalshippingcost
from [KMS Sql Case Study]
group by Ship_Mode
order by totalshippingcost desc
select top 10 Customer_Name, sum(Sales) as totalsales
from [KMS Sql Case Study]
group by Customer_Name
order by totalsales desc
select top 1 Customer_Name, sum(Sales) as totalsales
from [KMS Sql Case Study]
where Customer_Segment = 'small business'
group by Customer_Name
order by totalsales desc
select top 1 customer_name, count(distinct order_id) as totalorders
from [KMS Sql Case Study]
where Customer_Segment = 'corporate'
and convert(date, [order_date], 101) between '2009-01-01' and '2021-12-31'
group by customer_name
order by totalorders desc;
select top 1 customer_name, sum(profit) as total_profit
from [KMS Sql Case Study]
where Customer_Segment = 'consumer'
group by Customer_Name
order by total_profit desc
select distinct customer_name, customer_segment
from [KMS Sql Case Study]
where Profit <0;
select order_priority, ship_mode, count(*) as total_orders
from [KMS Sql Case Study]
group by Order_Priority, Ship_Mode
order by Order_Priority;
select top 10 customer_name, product_category, product_sub_category, sum(sales) as totalsales
from [KMS Sql Case Study]
where Customer_Name in (
select top 100 percent Customer_Name
from [KMS Sql Case Study]
group by Customer_Name
order by sum(sales) desc
)
group by customer_name, product_category, product_sub_category
order by customer_name, totalsales desc