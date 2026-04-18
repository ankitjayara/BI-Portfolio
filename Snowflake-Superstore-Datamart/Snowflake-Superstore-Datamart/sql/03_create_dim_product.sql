create or replace table "ANKIT_DB"."STAGING"."Product_SUPERSTORE" as 
  select Product_ID,
Category,	
  "Sub-Category",	
PRODUCT_NAME from (select
Product_ID,
Category,	
  "Sub-Category",	
PRODUCT_NAME,	
 row_number() over(partition by product_id order by order_date desc)
as rnk
 from  "ANKIT_DB"."STAGING"."SUPERSTORE" )
where rnk=1
