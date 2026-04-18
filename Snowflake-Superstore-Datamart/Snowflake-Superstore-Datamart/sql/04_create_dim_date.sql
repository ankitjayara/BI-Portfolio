create or replace table "ANKIT_DB"."STAGING"."Date_Dim_SUPERSTORE" as 
  select distinct order_date as Date,
   EXTRACT(MONTH FROM TRY_TO_DATE(order_date, 'DD-MM-YYYY')) AS MONTH,
    TO_CHAR(TRY_TO_DATE(order_date, 'DD-MM-YYYY'), 'MON') AS MONTH_NAME,
  EXTRACT(YEAR FROM TRY_TO_DATE(order_date, 'DD-MM-YYYY')) AS YEAR,
   EXTRACT(QUARTER FROM TRY_TO_DATE(order_date, 'DD-MM-YYYY')) AS QUARTER,
  EXTRACT(DAY FROM TRY_TO_DATE(order_date, 'DD-MM-YYYY')) AS DAY,
 from  "ANKIT_DB"."STAGING"."SUPERSTORE" ;
