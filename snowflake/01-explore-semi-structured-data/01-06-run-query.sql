-- Run these SQL after logging into Snowflake with the user SNOWFLAKE_LAB_01_USER

SELECT CURRENT_USER(), CURRENT_ROLE(), CURRENT_WAREHOUSE();

USE DATABASE SNOWFLAKE_LAB_TRAINING_DB;
USE SCHEMA WEATHER;


SELECT
  (SELECT COUNT(*) FROM SNOWFLAKE_LAB_ISD_2019_DAILY) AS dailyrows,
  (SELECT COUNT(*) FROM SNOWFLAKE_LAB_ISD_2019_TOTAL) AS total_rows;
  
FROM SNOWFLAKE_LAB_ISD_2019_DAILY;


USE ROLE SNOWFLAKE_LAB_DE_ROLE;

ALTER SESSION SET QUERY_TAG=
  'Lab 01: Explore Semi-Structured JSON Data';


DESCRIBE TABLE SNOWFLAKE_LAB_ISD_2019_TOTAL;


SELECT * FROM SNOWFLAKE_LAB_ISD_2019_TOTAL
LIMIT 10;


SELECT v, key, value
FROM SNOWFLAKE_LAB_ISD_2019_TOTAL, LATERAL FLATTEN (input => v)
LIMIT 10;

SELECT v:data.observations[0].dt::timestamp_ntz AS time,
       v:station.name::VARCHAR AS station,
       v:station.country::VARCHAR AS country,
       v:station.elev::NUMBER(10,1) AS elevation,
       v:data.observations[0].air.temp::NUMBER(38,1) AS temp_celsius,
       v:data.observations[0].air."temp-quality-code"::VARCHAR AS temp_quality_code,
       v:data.observations[0].air."dew-point"::NUMBER(38,1) AS dew_point,
       v:data.observations[0].wind."speed-rate"::NUMBER(38,1) AS wind_speed
FROM SNOWFLAKE_LAB_TRAINING_DB.WEATHER.SNOWFLAKE_LAB_ISD_2019_TOTAL
LIMIT 10;


SELECT v:data.observations[0].dt::timestamp_ntz AS time,
       v:station.name::VARCHAR AS station,
       v:station.country::VARCHAR AS country,
       v:station.elev::NUMBER(10,1) AS elevation,
       v:data.observations[0].air.temp::NUMBER(38,1) AS temp_celsius,
       v:data.observations[0].air."temp-quality-code"::VARCHAR AS temp_quality_code,
       v:data.observations[0].air."dew-point"::NUMBER(38,1) AS dew_point,
       v:data.observations[0].wind."speed-rate"::NUMBER(38,1) AS wind_speed
FROM SNOWFLAKE_LAB_TRAINING_DB.WEATHER.SNOWFLAKE_LAB_ISD_2019_TOTAL
LIMIT 10;

SELECT v:data.observations[0].dt::timestamp_ntz AS time,
       v:station.name::VARCHAR AS station,
       v:station.country::VARCHAR AS country,
       v:station.elev::NUMBER(10,1) AS elevation,
       v:data.observations[0].air.temp AS temp_celsius,
       v:data.observations[0].air."temp-quality-code"::VARCHAR AS temp_quality_code
FROM SNOWFLAKE_LAB_TRAINING_DB.WEATHER.SNOWFLAKE_LAB_ISD_2019_TOTAL
WHERE station = 'PARIS/LE BOURGET'
LIMIT 10;


SELECT v:data.observations[0].dt::timestamp_ntz AS time,
       v:station.name::VARCHAR AS station,
       v:station.country::VARCHAR AS country,
       v:station.elev::NUMBER(10,1) AS elevation,
       v:data.observations[0].air.temp::NUMBER(38,1) AS temp_celsius,
       v:data.observations[0].air."temp-quality-code"::VARCHAR AS temp_quality_code
FROM SNOWFLAKE_LAB_TRAINING_DB.WEATHER.SNOWFLAKE_LAB_ISD_2019_TOTAL
WHERE station = 'PARIS/LE BOURGET'
LIMIT 10;


SELECT v:data.observations[0].dt::timestamp_ntz AS time,
       v:station.name::VARCHAR AS station,
       v:station.country::VARCHAR AS country,
       v:station.elev::NUMBER(10,1) AS elevation,
       v:data.observations[0].air.temp::NUMBER(38,1) AS temp_celsius
FROM SNOWFLAKE_LAB_TRAINING_DB.WEATHER.SNOWFLAKE_LAB_ISD_2019_TOTAL
WHERE station = 'PARIS/LE BOURGET'
  AND v:data.observations[0].air."temp-quality-code"::VARCHAR = '1'
LIMIT 10;

SELECT * FROM SNOWFLAKE_LAB_ISD_2019_DAILY
LIMIT 10;



SELECT v, key, value
FROM SNOWFLAKE_LAB_ISD_2019_DAILY, LATERAL FLATTEN (input => v)
LIMIT 10;


SELECT t as date,
       v:station.name::VARCHAR AS station,
       v:station.country::VARCHAR AS country,
       observations.value:air.temp::NUMBER(38,1) AS temp_celsius,
       observations.value:air."temp-quality-code"::VARCHAR AS temp_quality_code,
       observations.value:dt::timestamp_ntz AS time
FROM SNOWFLAKE_LAB_TRAINING_DB.WEATHER.SNOWFLAKE_LAB_ISD_2019_DAILY weather,
     LATERAL FLATTEN(input => v:data.observations) observations
LIMIT 20;


SELECT t as date,
       v:station.name::VARCHAR AS station,
       v:station.country::VARCHAR AS country,
       observations.value:air.temp::NUMBER(38,1) AS temp_celsius,
       observations.value:dt::timestamp_ntz AS time
FROM SNOWFLAKE_LAB_TRAINING_DB.WEATHER.SNOWFLAKE_LAB_ISD_2019_DAILY weather,
     LATERAL FLATTEN(input => v:data.observations) observations
WHERE TO_DATE(observations.value:dt::timestamp_ntz) BETWEEN TO_DATE('2019-08-15') AND TO_DATE('2019-08-21')
LIMIT 50;


SELECT country,
       date,
       station,
       ROUND(AVG(observations.value:air.temp)::NUMBER(38,1), 1) as avg_temp_c,
       (ROUND(AVG(observations.value:air.temp)::NUMBER(38,1), 1) * 9/5 + 32) as avg_temp_f
FROM (
  SELECT weather.v:station.country::VARCHAR AS country,
         weather.t as date,
         weather.v:station.name::VARCHAR AS station,
         observations.value:air.temp::NUMBER(38,1) AS temp_celsius
  FROM SNOWFLAKE_LAB_TRAINING_DB.WEATHER.SNOWFLAKE_LAB_ISD_2019_DAILY weather,
       LATERAL FLATTEN(input => v:data.observations) observations
  WHERE TO_DATE(observations.value:dt::timestamp_ntz) BETWEEN TO_DATE('2019-08-14') AND TO_DATE('2019-08-16')
)
GROUP BY country, date, station;

SELECT v
FROM SNOWFLAKE_LAB_ISD_2019_DAILY
LIMIT 1;

-- 2.4.7   Extract the station name, and the entire data VARIANT:
--         name, y todo el VARIANT de data.

SELECT v:station.name::VARCHAR AS station_name,
       v:data AS data
FROM SNOWFLAKE_LAB_ISD_2019_DAILY
LIMIT 10;


-- 2.4.8   Select the data field only, and view the VARIANT structure:
SELECT v:data AS data
FROM SNOWFLAKE_LAB_ISD_2019_DAILY
LIMIT 10;


SELECT weather.t as date,
       weather.v:station.name::VARCHAR AS station,
       weather.v:station.country::VARCHAR AS country,
       observations.value:air.temp::NUMBER(38,1) AS temp_celsius,
       observations.value:dt::timestamp_ntz AS time
FROM SNOWFLAKE_LAB_TRAINING_DB.WEATHER.SNOWFLAKE_LAB_ISD_2019_DAILY weather,
     LATERAL FLATTEN(input => v:data.observations) observations
LIMIT 50;

SELECT country,
       date,
       station,
       MIN(observations.value:air.temp) as min_temp_c,
       MAX(observations.value:air.temp) as max_temp_c,
       (MIN(observations.value:air.temp) * 9/5 + 32) as min_temp_f,
       (MAX(observations.value:air.temp) * 9/5 + 32) as max_temp_f
FROM SNOWFLAKE_LAB_TRAINING_DB.WEATHER.SNOWFLAKE_LAB_ISD_2019_DAILY weather,
LATERAL FLATTEN(input => v:data.observations) observations
WHERE observations.value:air."temp-quality-code" = '1'
AND date BETWEEN to_date('2019-08-14') AND to_date('2019-08-20')
GROUP BY country, date, station;


ALTER SESSION UNSET QUERY_TAG;
ALTER WAREHOUSE SNOWFLAKE_LAB_DE_WH SUSPEND;

