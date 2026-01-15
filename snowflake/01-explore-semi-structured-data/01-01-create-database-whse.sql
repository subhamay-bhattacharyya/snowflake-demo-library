-- ✅ What this step achieves
-- Establishes clean, lab-scoped objects
-- Prevents collision with system or future projects
-- Keeps ownership under SYSADMIN (best practice)

USE ROLE SYSADMIN;

-- Database and schema used by the lab
CREATE DATABASE IF NOT EXISTS SNOWFLAKE_LAB_TRAINING_DB;
CREATE SCHEMA IF NOT EXISTS SNOWFLAKE_LAB_TRAINING_DB.WEATHER;

-- Warehouse used by the lab
CREATE WAREHOUSE IF NOT EXISTS SNOWFLAKE_LAB_DE_WH
  WAREHOUSE_SIZE = 'XSMALL'
  AUTO_SUSPEND = 300
  AUTO_RESUME = TRUE
  INITIALLY_SUSPENDED = TRUE;


-- Verification (run one command at a time in sequence)
SHOW DATABASES LIKE 'SNOWFLAKE_LAB%';

SHOW SCHEMAS LIKE 'WEATHER' IN DATABASE SNOWFLAKE_LAB_TRAINING_DB;

SHOW WAREHOUSES LIKE 'SNOWFLAKE_LAB%';
