-- Run these SQL after logging into Snowflake with the user SNOWFLAKE_LAB_01_USER

SELECT CURRENT_USER(), CURRENT_ROLE(), CURRENT_WAREHOUSE();

USE DATABASE SNOWFLAKE_LAB_TRAINING_DB;
USE SCHEMA WEATHER;

ALTER SESSION SET QUERY_TAG=
  'Lab: Explore Semi-Structured JSON Data'; 
  
-- Use the DESCRIBE TABLE command to describe the snowflake_lab_isd_2019_total table:
DESCRIBE TABLE SNOWFLAKE_LAB_ISD_2019_TOTAL;

-- Select all columns from the snowflake_lab_isd_2019_total table, limit the results
-- to 4 rows, and explore the data and its content:
SELECT * FROM SNOWFLAKE_LAB_ISD_2019_TOTAL
LIMIT 4;

-- Use FLATTEN to extract the top-level keys from the V column. Use LIMIT 4;
SELECT v, key, value
FROM SNOWFLAKE_LAB_ISD_2019_TOTAL, LATERAL FLATTEN (input => v)
LIMIT 4;

-- Run a query to extract the time, station, country, elevation, temp,
-- and other weather objects from the table:

SELECT v:data.observations[0].dt AS time,
       v:station.name AS station,
       v:station.country AS country,
       v:station.elev AS elevation,
       v:data.observations[0].air.temp AS temp_celsius,
       v:data.observations[0].air."dew-point" AS dew_point,
       v:data.observations[0].wind."speed-rate" AS wind_speed
FROM SNOWFLAKE_LAB_ISD_2019_TOTAL
LIMIT 10;



-- Evaluate the results.
-- The STATION and COUNTRY columns values are enclosed in double quotes,  that
-- which indicates that these columns are not VARCHAR but a VARIANT data type. 
-- In the query performed, you’ve extracted a portion of the VARIANT but have not yet
-- converted it to a built-in SQL type.

-- Run the following to display the types of columns from the last run
-- query:

DESCRIBE RESULT LAST_QUERY_ID();


-- NOTE: the values returned are all of type VARIANT.

-- Remove the double quotes around the values by casting each value as a
-- data type other than VARIANT:

SELECT v:data:observations[0].dt::DATETIME AS time,
       v:station.name::VARCHAR AS station,
       v:station.country::VARCHAR AS country,
       v:station.elev::NUMBER(8,4) AS elevation,
       v:data.observations[0].air.temp::NUMBER(8,4) AS temp_celsius,
       v:data.observations[0].air."dew-point"::NUMBER(8,4) AS dew_point,
       v:data.observations[0].wind."speed-rate"::NUMBER AS wind_speed
FROM SNOWFLAKE_LAB_ISD_2019_TOTAL
LIMIT 10;


-- Run the following to display the types of columns from the last run query:

DESCRIBE RESULT LAST_QUERY_ID();


-- Note the values returned have been updated.

-- Extract and Transform the Data

-- Extract the weather station-reported air temperature data from France
-- (country code FR). Instead of keeping the value a VARIANT, cast it to  a NUMBER(38,1):
SELECT v:station.name::VARCHAR AS station,
       v:station.country::VARCHAR AS country,
       v:data.observations[0].air.temp::NUMBER(38,1) AS temp_celsius
FROM SNOWFLAKE_LAB_ISD_2019_TOTAL
WHERE country = 'US';



-- Explore the results.
-- NOTE: Some weather stations could not record data, and an observation
-- quality code column should be evaluated to avoid skewed data readings 
-- when performing data analysis.

-- Extract the weather station-reported air temperature data that has
-- passed all quality control checks. Rename the column to temp_celsius
-- and include only temperature data with a temp-quality-code equal to 1:

SELECT v:station.name::VARCHAR AS station,
       v:station.country::VARCHAR AS country,
       v:data.observations[0].air.temp::NUMBER(38,1) AS temp_celsius
FROM SNOWFLAKE_LAB_ISD_2019_TOTAL
WHERE country = 'US'
AND v:data.observations[0].air."temp-quality-code" = '1';

-- Filter the results to records for seven days starting on 2019-10-07
-- and ending on 2019-10-08.
-- Cast the time column as a date to match the output type from the
-- TO_DATE function. Including this explicit conversion in your code as
-- a best practice for clarity is advisable, even though Snowflake often
-- infers and applies the casting automatically in most cases.

SELECT v:data.observations[0].air.temp::NUMBER(38,1) AS temp_celsius,
       v:data.observations[0].dt::DATE AS date
FROM SNOWFLAKE_LAB_ISD_2019_TOTAL
WHERE date BETWEEN to_date('2019-10-07') AND to_date('2019-10-08')
 AND v:data.observations[0].air."temp-quality-code" = '1'
ORDER BY date;

-- Execute the following query to pull country, station name, and
-- highest temperatures for a three (3) day period starting on
-- 2019-10-07 and ending on 2019-10-08.

SELECT v:station.country::VARCHAR AS country,
       v:station.name::VARCHAR AS station,
       MAX(v:data.observations[0].air.temp)::NUMBER(38,1) AS max_celsius
FROM SNOWFLAKE_LAB_ISD_2019_TOTAL
WHERE v:data.observations[0].dt::date BETWEEN
    to_date('2019-10-07') AND to_date('2019-10-08')
AND v:data.observations[0].air."temp-quality-code" = '1'
GROUP BY country, station;

-- Run the same query, but return the temperature in Fahrenheit and Celsius.
-- The formula is Fahrenheit = (Celsius * 9/5 + 32).

SELECT v:station.country::VARCHAR AS country,
       v:station.name::VARCHAR AS station,
       MAX(v:data.observations[0].air.temp) AS max_celsius,
       (max_celsius * 9/5 + 32) AS max_fahrenheit
FROM SNOWFLAKE_LAB_ISD_2019_TOTAL
WHERE v:data.observations[0].dt::date BETWEEN
    to_date('2019-10-07') AND to_date('2019-10-08')
AND v:data.observations[0].air."temp-quality-code" = '1'
GROUP BY country, station;



-- Run the following command, then double-click on one of the values in the V 
-- column to see the format of the VARIANT:

SELECT * FROM SNOWFLAKE_LAB_ISD_2019_DAILY
LIMIT 4;

-- Notice a data key and a station key, each with nested values.
-- Run a query to return ten rows showing the timestamp, the station
-- name, and the entire data VARIANT.

SELECT t, v:station.name, v AS variant
FROM SNOWFLAKE_LAB_ISD_2019_DAILY
LIMIT 4;


-- Double-click on a row in the column named VARIANT to see the
-- structure of the VARIANT data. What additional information can you
-- extract from the JSON data provided?

-- Use the FLATTEN table function (with a LATERAL join) to iterate
-- through the objects in the observations field and extract the
-- observation time and air temperature value:

SELECT weather.t as date,
       weather.v:station.name::VARCHAR AS station,
       weather.v:station.country::VARCHAR AS country,
       observations.value:air.temp::NUMBER(38,1) AS temp_celsius,
       observations.value:dt::timestamp_ntz AS time
FROM SNOWFLAKE_LAB_ISD_2019_DAILY weather,
LATERAL FLATTEN(input => v:data.observations) observations
LIMIT 10;

-- Note the results: the first three (3) columns (DATE, STATION, and
-- COUNTRY) repeat for several rows while the remaining columns change.
-- Can you explain why those first columns repeat, but the remaining
-- columns change every row?
-- Does the number of rows where the values in the first two columns
-- repeat give you any information on the size of the data array you
-- just flattened?

-- Run a query to calculate each weather station’s average, max, and min
-- air temperature in Celsius and Fahrenheit. Filter the results to
-- records for seven days starting on 2026-01-14 and ending on
-- 2026-01-15 for air temperature values that have passed all quality
-- control checks:

SELECT weather.t as date,
       weather.v:station.name::VARCHAR AS station,
       weather.v:station.country::VARCHAR AS country,
       AVG(observations.value:air.temp)::NUMBER(38,1) as avg_temp_c,
       MIN(observations.value:air.temp) as min_temp_c,
       MAX(observations.value:air.temp) as max_temp_c,
       (AVG(observations.value:air.temp) * 9/5 + 32)::NUMBER(38,1) as avg_temp_f,
       (MIN(observations.value:air.temp) * 9/5 + 32) as min_temp_f,
       (MAX(observations.value:air.temp) * 9/5 + 32) as max_temp_f
FROM SNOWFLAKE_LAB_ISD_2019_DAILY weather,
LATERAL FLATTEN(input => v:data.observations) observations
WHERE observations.value:air."temp-quality-code" = '1'
AND date BETWEEN to_date('2026-01-14') AND to_date('2026-01-15')
GROUP BY country, date, station;


-- Finally, remove the query tag and suspend the warehouse as the work
-- for this lab is complete.

ALTER SESSION UNSET QUERY_TAG;
ALTER WAREHOUSE SNOWFLAKE_LAB_DE_WH SUSPEND; 
