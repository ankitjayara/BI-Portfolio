create or replace table "ANKIT_DB"."STAGING"."DIM_GEOGRAPHY_SUPERSTORE" as 
  select POSTAL_CODE,
CITY,
STATE,
COUNTRY,
REGION,
MARKET from 
(SELECT
POSTAL_CODE,
CITY,
STATE,
COUNTRY,
REGION,
MARKET, row_number() over(partition by postal_code order by order_date desc)
as rnk 
from  "ANKIT_DB"."STAGING"."SUPERSTORE" ) where rnk=1 and postal_code is not null;
