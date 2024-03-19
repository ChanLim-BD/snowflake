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


-- FILE FORMAT 생성 (CSV)
CREATE OR REPLACE FILE FORMAT my_csv_unload_format
  TYPE = 'CSV'
  FIELD_DELIMITER = '|';


-----------------------------------------------
--                                           --
--         S3와 연결을 위한  STAGE 생성         --
--                                           --
-----------------------------------------------

  
-- External Stage 생성 (CSV)
CREATE OR REPLACE STAGE SNOW_TO_S3_csv
    STORAGE_INTEGRATION = PENTA_INTEGRATION
    URL = 's3://jaeyeong-hyundai/snowflake_sample/chan/csv/'
    FILE_FORMAT = my_csv_unload_format;


-----------------------------------------------
--                                           --
--              S3로 데이터 Unload            --
--                                           --
-----------------------------------------------

-- S3로 데이터 Unload
COPY INTO @SNOW_TO_S3_CSV FROM SAMPLE_TEST HEADER = TRUE;


-- STAGE 데이터 확인하기
LIST @SNOW_TO_S3_csv;


-----------------------------------------------
--                                           --
--   데이터 Load하기 위한 FILE_FORMAT 생성      --
--                                           --
-----------------------------------------------

CREATE OR REPLACE FILE FORMAT my_csv_load_format
TYPE = 'CSV'
COMPRESSION = 'GZIP'
FIELD_DELIMITER = '|'
PARSE_HEADER = TRUE
ERROR_ON_COLUMN_COUNT_MISMATCH = FALSE;


------------------------------------------------
--                                            --
--  INFER_SCHEMA를 통해 S3의 파일 메타데이터 인식 --
--                                            --
------------------------------------------------

-- INFER_SCHEMA test csv
SELECT *
  FROM TABLE(
    INFER_SCHEMA(
      LOCATION=>'@SNOW_TO_S3_CSV/'
      , FILE_FORMAT=>'my_csv_load_format'
      )
    );


------------------------------------------------
--                                            --
--                 Table 생성                  --
--                                            --
------------------------------------------------


-- CSV Table 생성
CREATE OR REPLACE TABLE 
USING TEMPLATE (
    SELECT ARRAY_AGG(object_construct(*))
      FROM TABLE(
        INFER_SCHEMA(
          LOCATION=>'@SNOW_TO_S3_CSV/'
          , FILE_FORMAT=>'my_csv_load_format'
          )
      ));

-- Table 생성 확인      
SELECT * FROM S3TOSNOWCSV;

------------------------------------------------
--                                            --
--     Table에 S3에 적재된 데이터 COPY INTO      --
--                                            --
------------------------------------------------


COPY INTO S3TOSNOWCSV
  FROM @SNOW_TO_S3_csv
  FILE_FORMAT = my_csvgz_format
  MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE;


------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------



------ Table Schema Evolution Process 시작.  ----

-- 해당 Table은 기존 Table에 두 개의 Column이 추가된 Table로 생성할 예정 --

-----------------------------------------------
--                                           --
--              Test Table 2 생성             --
--                                           --
-----------------------------------------------

-- SAMPLE DATA TABLE 복사 2
CREATE TABLE PENTA_DB.CH_SCHEMA.SAMPLE_TEST2 AS
SELECT * FROM SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER;

-- Test Table 2 생성 확인
SELECT * FROM SAMPLE_TEST2;

-----------------------------------------------
--                                           --
--       Test Table 2에 Column 추가           --
--                                           --
-----------------------------------------------

ALTER TABLE SAMPLE_TEST2 ADD test_c1 INT;
ALTER TABLE SAMPLE_TEST2 ADD test_c2 INT;

-- Column 추가 확인
SELECT * FROM SAMPLE_TEST2;


-----------------------------------------------
--                                           --
--        Test Table 2에 Data 삽입            --
--                                           --
-----------------------------------------------

INSERT INTO SAMPLE_TEST2 (C_CUSTKEY, C_NAME, C_ADDRESS, C_NATIONKEY, C_PHONE, C_ACCTBAL, C_MKTSEGMENT, C_COMMENT, TEST_C1, TEST_C3)
VALUES(1, 'a', 'b', 2, 'c', 3, 'd', 'dsadas', 9991, 9929);
INSERT INTO SAMPLE_TEST2 (C_CUSTKEY, C_NAME, C_ADDRESS, C_NATIONKEY, C_PHONE, C_ACCTBAL, C_MKTSEGMENT, C_COMMENT, TEST_C1, TEST_C3)
VALUES(1, 'a', 'b', 2, 'c', 3, 'd', 'dsadas', 99, 939);

-- Table에 데이터 삽입 확인
SELECT * FROM SAMPLE_TEST2;


-----------------------------------------------
--                                           --
--        S3로 SAMPLE_TEST2 Unload           --
--                                           --
-----------------------------------------------


COPY INTO @SNOW_TO_S3_CSV FROM SAMPLE_TEST2 HEADER = TRUE;


-----------------------------------------------
--                                           --
--       COPY INTO로 Schema Evolution 확인    --
--                                           --
-----------------------------------------------

-- SCHEMA EVOLUTION 활성화를 위한 파라미터 설정
ALTER TABLE S3TOSNOWCSV SET ENABLE_SCHEMA_EVOLUTION = TRUE;


-- COPY INTO 실행하여 Table Column 추가 확인 
COPY INTO S3TOSNOWCSV
  FROM @SNOW_TO_S3_csv
  FILE_FORMAT = my_csvgz_format
  MATCH_BY_COLUMN_NAME = CASE_INSENSITIVE;

  
