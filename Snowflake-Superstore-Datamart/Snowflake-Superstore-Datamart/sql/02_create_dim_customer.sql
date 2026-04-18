  create or replace table "ANKIT_DB"."STAGING"."Customer_SUPERSTORE" as 
SELECT  CUSTOMER_ID,
        CUSTOMER_NAME,
        SEGMENT,
        CITY,
        STATE,
        COUNTRY,
        POSTAL_CODE,
        MARKET,
        REGION
FROM (
    SELECT 
        CUSTOMER_ID,
        CUSTOMER_NAME,
        SEGMENT,
        CITY,
        STATE,
        COUNTRY,
        POSTAL_CODE,
        MARKET,
        REGION,
        ROW_NUMBER() OVER (
            PARTITION BY CUSTOMER_ID 
            ORDER BY ORDER_DATE DESC
        ) AS rn
    FROM "ANKIT_DB"."STAGING"."SUPERSTORE"
)
WHERE rn = 1;
