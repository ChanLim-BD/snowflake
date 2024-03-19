-----------------------------------------------
--                                           --
--                  공통 사항                  --
--                                           --
-----------------------------------------------

-- 역할 및 웨어하우스 사용 설정
USE ROLE ACCOUNTADMIN;
USE WAREHOUSE COMPUTE_WH;

-- DB, SCHEMA 생성 및 사용
--CREATE OR REPLACE DATABASE PENTA_DB;
--CREATE OR REPLACE SCHEMA CH_SCHEMA;
USE DATABASE PENTA_DB;
USE SCHEMA CH_SCHEMA;


-----------------------------------------------
--                                           --
--              Test Table 1 생성             --
--                                           --
-----------------------------------------------

-- SAMPLE DATA TABLE 복사
-- Snowflake 샘플 데이터를 활용
CREATE TABLE PENTA_DB.CH_SCHEMA.SAMPLE_TEST AS
SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER;

-- TABLE 및 DATA 복사 확인
SELECT * FROM SAMPLE_TEST;


-----------------------------------------------
--                                           --
--   데이터 Unload를 위한 FILE_FORMAT 생성      --
--                                           --
-----------------------------------------------


-- FILE FORMAT 생성 (Parquet)
CREATE OR REPLACE FILE FORMAT my_parquet_format
  TYPE = PARQUET
  COMPRESSION = SNAPPY;


-----------------------------------------------
--                                           --
--         S3와 연결을 위한  STAGE 생성         --
--                                           --
-----------------------------------------------


-- External Stage 생성 (Parquet)
CREATE OR REPLACE STAGE SNOW_TO_S3_par
    STORAGE_INTEGRATION = PENTA_INTEGRATION
    URL = 's3://jaeyeong-hyundai/snowflake_sample/chan/parquet/'
    FILE_FORMAT = my_parquet_unload_format;


-----------------------------------------------
--                                           --
--              S3로 데이터 Unload            --
--                                           --
-----------------------------------------------

-- S3로 데이터 Unload
COPY INTO @SNOW_TO_S3_PAR FROM SAMPLE_TEST HEADER = TRUE;

COPY INTO @SNOW_TO_S3_PAR FROM SAMPLE_TEST2 HEADER = TRUE;


-- STAGE 데이터 확인하기
LIST @SNOW_TO_S3_par;



-----------------------------------------------
--                                           --
--   데이터 Load하기 위한 FILE_FORMAT 생성      --
--                                           --
-----------------------------------------------

-- INFER_SCHEMA test parquet
SELECT *
  FROM TABLE(
    INFER_SCHEMA(
      LOCATION=>'@SNOW_TO_S3_PAR/'
      , FILE_FORMAT=>'my_parquet_format'
      )
    );

-- CSV Table 생성
CREATE OR REPLACE TABLE S3TOSNOWCSV ENABLE_SCHEMA_EVOLUTION = TRUE 
USING TEMPLATE (
    SELECT ARRAY_AGG(object_construct(*))
      FROM TABLE(
        INFER_SCHEMA(
          LOCATION=>'@SNOW_TO_S3_CSV/'
          , FILE_FORMAT=>'my_csv_load_format'
          )
      ));

-- Parquet Table 생성
CREATE OR REPLACE TABLE S3TOSNOWPARQUET ENABLE_SCHEMA_EVOLUTION = TRUE 
USING TEMPLATE (
    SELECT ARRAY_AGG(object_construct(*))
      FROM TABLE(
        INFER_SCHEMA(
          LOCATION=>'@SNOW_TO_S3_PAR/'
          , FILE_FORMAT=>'my_parquet_format'
          )
      ));


SELECT * FROM S3TOSNOWPARQUET;
DESC TABLE S3TOSNOWPARQUET;

TRUNCATE TABLE temp2;


-----------------------------------------------
--                                           --
--              Test Table 2 생성             --
--                                           --
-----------------------------------------------

-- SAMPLE DATA TABLE 복사 2
CREATE TABLE PENTA_DB.CH_SCHEMA.SAMPLE_TEST2 AS
SELECT *
FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER;

TRUNCATE TABLE SAMPLE_TEST2;
SELECT * FROM SAMPLE_TEST2;

-- 새로운 Column 추가
ALTER TABLE SAMPLE_TEST2 ADD test_c1 INT;
ALTER TABLE SAMPLE_TEST2 ADD test_c2 INT;
-- Docs에서 Column은 10개 초과로는 추가 안됨을 확인
ALTER TABLE SAMPLE_TEST2 ADD test_c3 INT;
ALTER TABLE SAMPLE_TEST2 DROP COLUMN test_c2;

SELECT * FROM SAMPLE_TEST2;
TRUNCATE TABLE SAMPLE_TEST2;


-- INSERT TEST2
INSERT INTO SAMPLE_TEST2 (C_CUSTKEY, C_NAME, C_ADDRESS, C_NATIONKEY, C_PHONE, C_ACCTBAL, C_MKTSEGMENT, C_COMMENT, TEST_C1, TEST_C3)
VALUES(1, 'a', 'b', 2, 'c', 3, 'd', 'dsadas', 9991, 9929);
INSERT INTO SAMPLE_TEST2 (C_CUSTKEY, C_NAME, C_ADDRESS, C_NATIONKEY, C_PHONE, C_ACCTBAL, C_MKTSEGMENT, C_COMMENT, TEST_C1, TEST_C3)
VALUES(1, 'a', 'b', 2, 'c', 3, 'd', 'dsadas', 99, 939);

SELECT * FROM SAMPLE_TEST2;



COPY INTO temp2
  FROM @SNOW_TO_S3_PAR
  FILE_FORMAT = my_parquet_format
  MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE;