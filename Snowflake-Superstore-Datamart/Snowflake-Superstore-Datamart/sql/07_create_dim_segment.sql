create or replace table "ANKIT_DB"."STAGING"."DIM_SEGMENT_SUPERSTORE" as 
  select DISTINCT segment,
  ROW_ID 
from  "ANKIT_DB"."STAGING"."SUPERSTORE";
