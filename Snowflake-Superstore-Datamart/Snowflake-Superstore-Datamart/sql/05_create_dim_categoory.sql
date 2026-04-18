 create or replace table "ANKIT_DB"."STAGING"."DIM_CATEGORY_SUPERSTORE" as 
  select
  CATEGORY,
   "Sub-Category" from (
  select 
  CATEGORY,
   "Sub-Category",	ROW_NUMBER() OVER (PARTITION BY ORDER_ID ORDER BY ORDER_DATE DESC) AS rnk 
from  "ANKIT_DB"."STAGING"."SUPERSTORE") where rnk=1;
