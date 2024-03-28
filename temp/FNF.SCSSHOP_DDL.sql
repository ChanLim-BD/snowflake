/************************************
	1. Target Table 생성
*************************************/
CREATE TABLE IF NOT EXISTS FNF.SCSSHOP
(			
	  BRAND             VARCHAR(6)    NOT NULL  COMMENT	'브랜드'
	, SHOPCODE          VARCHAR(24)   NOT NULL  COMMENT	'매장'
	, SEASON            VARCHAR(12)   NOT NULL  COMMENT	'시즌'
	, PARTCODE          VARCHAR(54)   NOT NULL  COMMENT	'스타일'
	, COLOR             VARCHAR(15)   NOT NULL  COMMENT	'칼라'
	, SIZ               VARCHAR(9)    NOT NULL  COMMENT	'사이즈'
	, TAKEOUT_QTY       INTEGER   	            COMMENT	'출고수량-정상'
	, TAKEOUT_CQTY      INTEGER   	            COMMENT	'출고수량-반품'
	, SALE_QTY          INTEGER   	            COMMENT	'판매수량-정상'
	, SALE_CQTY         INTEGER   	            COMMENT	'판매수량-반품'
	, RTSEND_QTY        INTEGER   	            COMMENT	'RT보냄수량'
	, RTRECV_QTY        INTEGER   	            COMMENT	'RT받음수량'
	, ORDER_QTY         INTEGER   	            COMMENT	'주문수량'
	, ALLOCATE_QTY      INTEGER   	            COMMENT	'승인수량'
	, PICK_QTY          INTEGER   	            COMMENT	'검출수량'
	, INVOICE_QTY       INTEGER   	            COMMENT	'대기수량'
	, STOCK_QTY         INTEGER   	            COMMENT	'재고수량'
	, TAKEOUTCOST_AMT   NUMERIC(15,2)           COMMENT	'출고공급-정상'
	, TAKEOUTCOST_CAMT  NUMERIC(15,2)   	    COMMENT	'출고공급-반품'
	, TAKEOUTSELL_AMT   NUMERIC(15,2)   	    COMMENT	'출고매가-정상'
	, TAKEOUTSELL_CAMT  NUMERIC(15,2)   	    COMMENT	'출고매가-반품'
	, SALE_AMT          NUMERIC(15,2)   	    COMMENT	'판매금액-정상'
	, SALE_CAMT         NUMERIC(15,2)   	    COMMENT	'판매금액-반품'
	, RTSEND_AMT        NUMERIC(15,2)   	    COMMENT	'RT금액-보냄'
	, RTRECV_AMT        NUMERIC(15,2)   	    COMMENT	'RT금액-받음'
	, TAKEOUTDATE_FIRST VARCHAR(30)   	        COMMENT	'출고일자-최초'
	, SALEDATE_FIRST    VARCHAR(30)   	        COMMENT	'판매일자_최초'
	, SALEDATE_LAST     VARCHAR(30)   	        COMMENT	'판매일자-최종'
	, RTSENDHQ_QTY      INTEGER   	            COMMENT	'RT보냄처리중-수량'
	, RTRECVHQ_QTY      INTEGER   	            COMMENT	'RT받음처리중_수량'
	, ADJUST_QTY        INTEGER   	            COMMENT	'조정수량-정상'
	, ADJUST_CQTY       INTEGER   	            COMMENT	'조정수량-반품'
	, ADJUSTSELL_AMT    NUMERIC(15,2)   	    COMMENT	'조정매가-정상'
	, ADJUSTSELL_CAMT   NUMERIC(15,2)   	    COMMENT	'조정매가-반품'
	, ADJUSTCOST_AMT    NUMERIC(15,2)   	    COMMENT	'조정공급-정상'
	, ADJUSTCOST_CAMT   NUMERIC(15,2)   	    COMMENT	'조정공급-반품'
	, RETURN_QTY        INTEGER   	            COMMENT	''
	, AST_ORDR_QTY      INTEGER   	            COMMENT	''
	, AST_ALCT_QTY      INTEGER   	            COMMENT	''
	, AST_PICK_QTY      INTEGER   	            COMMENT	''
	, AST_INVC_QTY      INTEGER   	            COMMENT	''
	, O2OP_RSV_QTY      INTEGER   	            COMMENT	''
	, REPAIR_QTY        INTEGER   	            COMMENT	''
	, PRIMARY KEY (BRAND, SHOPCODE, SEASON, PARTCODE, COLOR, SIZ)		
)
COMMENT = '집계-SCSSHOP'
;


/************************************
	2. External Table 생성
*************************************/
CREATE EXTERNAL TABLE IF NOT EXISTS FNF.SCSSHOP_EXT		
(		
	  TRANSACTIONS      VARCHAR       AS (VALUE:Op::STRING)
	, TRANSACTION_ID    VARCHAR       AS (VALUE:transact_id::VARCHAR)
	, FILE_NAME         VARCHAR       AS METADATA$FILENAME
	, ROW_NUM           NUMBER        AS METADATA$FILE_ROW_NUMBER
	, BRAND             VARCHAR(6)    AS (VALUE:brand::VARCHAR(6))
	, SHOPCODE          VARCHAR(24)   AS (VALUE:shopcode::VARCHAR(24))
	, SEASON            VARCHAR(12)   AS (VALUE:season::VARCHAR(12))
	, PARTCODE          VARCHAR(54)   AS (VALUE:partcode::VARCHAR(54))
	, COLOR             VARCHAR(15)   AS (VALUE:color::VARCHAR(15))
	, SIZ               VARCHAR(9)    AS (VALUE:siz::VARCHAR(9))
	, TAKEOUT_QTY       INTEGER   	  AS (VALUE:takeout_qty::INTEGER)
	, TAKEOUT_CQTY      INTEGER   	  AS (VALUE:takeout_cqty::INTEGER)
	, SALE_QTY          INTEGER   	  AS (VALUE:sale_qty::INTEGER)
	, SALE_CQTY         INTEGER   	  AS (VALUE:sale_cqty::INTEGER)
	, RTSEND_QTY        INTEGER   	  AS (VALUE:rtsend_qty::INTEGER)
	, RTRECV_QTY        INTEGER   	  AS (VALUE:rtrecv_qty::INTEGER)
	, ORDER_QTY         INTEGER   	  AS (VALUE:order_qty::INTEGER)
	, ALLOCATE_QTY      INTEGER   	  AS (VALUE:allocate_qty::INTEGER)
	, PICK_QTY          INTEGER   	  AS (VALUE:pick_qty::INTEGER)
	, INVOICE_QTY       INTEGER   	  AS (VALUE:invoice_qty::INTEGER)
	, STOCK_QTY         INTEGER   	  AS (VALUE:stock_qty::INTEGER)
	, TAKEOUTCOST_AMT   NUMERIC(15,2) AS (VALUE:takeoutcost_amt::NUMERIC(15,2))
	, TAKEOUTCOST_CAMT  NUMERIC(15,2) AS (VALUE:takeoutcost_camt::NUMERIC(15,2))
	, TAKEOUTSELL_AMT   NUMERIC(15,2) AS (VALUE:takeoutsell_amt::NUMERIC(15,2))
	, TAKEOUTSELL_CAMT  NUMERIC(15,2) AS (VALUE:takeoutsell_camt::NUMERIC(15,2))
	, SALE_AMT          NUMERIC(15,2) AS (VALUE:sale_amt::NUMERIC(15,2))
	, SALE_CAMT         NUMERIC(15,2) AS (VALUE:sale_camt::NUMERIC(15,2))
	, RTSEND_AMT        NUMERIC(15,2) AS (VALUE:rtsend_amt::NUMERIC(15,2))
	, RTRECV_AMT        NUMERIC(15,2) AS (VALUE:rtrecv_amt::NUMERIC(15,2))
	, TAKEOUTDATE_FIRST VARCHAR(30)   AS (VALUE:takeoutdate_first::VARCHAR(30))
	, SALEDATE_FIRST    VARCHAR(30)   AS (VALUE:saledate_first::VARCHAR(30))
	, SALEDATE_LAST     VARCHAR(30)   AS (VALUE:saledate_last::VARCHAR(30))
	, RTSENDHQ_QTY      INTEGER   	  AS (VALUE:rtsendhq_qty::INTEGER)
	, RTRECVHQ_QTY      INTEGER   	  AS (VALUE:rtrecvhq_qty::INTEGER)
	, ADJUST_QTY        INTEGER   	  AS (VALUE:adjust_qty::INTEGER)
	, ADJUST_CQTY       INTEGER   	  AS (VALUE:adjust_cqty::INTEGER)
	, ADJUSTSELL_AMT    NUMERIC(15,2) AS (VALUE:adjustsell_amt::NUMERIC(15,2))
	, ADJUSTSELL_CAMT   NUMERIC(15,2) AS (VALUE:adjustsell_camt::NUMERIC(15,2))
	, ADJUSTCOST_AMT    NUMERIC(15,2) AS (VALUE:adjustcost_amt::NUMERIC(15,2))
	, ADJUSTCOST_CAMT   NUMERIC(15,2) AS (VALUE:adjustcost_camt::NUMERIC(15,2))
	, RETURN_QTY        INTEGER   	  AS (VALUE:return_qty::INTEGER)
	, AST_ORDR_QTY      INTEGER   	  AS (VALUE:ast_ordr_qty::INTEGER)
	, AST_ALCT_QTY      INTEGER   	  AS (VALUE:ast_alct_qty::INTEGER)
	, AST_PICK_QTY      INTEGER   	  AS (VALUE:ast_pick_qty::INTEGER)
	, AST_INVC_QTY      INTEGER   	  AS (VALUE:ast_invc_qty::INTEGER)
	, O2OP_RSV_QTY      INTEGER   	  AS (VALUE:o2op_rsv_qty::INTEGER)
	, REPAIR_QTY        INTEGER   	  AS (VALUE:repair_qty::INTEGER)	
)
LOCATION          = @FNF_OBJ.EXTR_STA_DMS_CDC/fnf/scsshop/
AUTO_REFRESH      = FALSE
REFRESH_ON_CREATE = FALSE
FILE_FORMAT       = FNF_OBJ.FILE_FMT_PARQUET
;


/************************************
	3. Stream 생성
*************************************/
CREATE STREAM IF NOT EXISTS FNF.SCSSHOP_EXT_STREAM
	ON EXTERNAL TABLE FNF.SCSSHOP_EXT	
	INSERT_ONLY = TRUE
;

/************************************
	4. Refresh 후, 초기 및 변경분 데이터 적재
*************************************/
ALTER EXTERNAL TABLE FNF.SCSSHOP_EXT REFRESH;

MERGE
 INTO FNF.SCSSHOP T
USING (
	   SELECT T2.*
	     FROM (
			   SELECT T1.*
			        , ROW_NUMBER() OVER(PARTITION BY T1.BRAND
					                               , T1.SHOPCODE
												   , T1.SEASON
												   , T1.PARTCODE
												   , T1.COLOR
												   , T1.SIZ
										    ORDER BY T1.TRANSACTION_ID DESC) AS RNUM
				 FROM FNF.SCSSHOP_EXT_STREAM T1
			   ) T2
		WHERE T2.RNUM = 1
	   ) S
   ON T.BRAND    = S.BRAND   
  AND T.SHOPCODE = S.SHOPCODE
  AND T.SEASON   = S.SEASON  
  AND T.PARTCODE = S.PARTCODE
  AND T.COLOR    = S.COLOR   
  AND T.SIZ      = S.SIZ     
 WHEN MATCHED AND (S.TRANSACTIONS = 'I' OR S.TRANSACTIONS = 'U') THEN
	UPDATE SET T.BRAND             = S.BRAND            
	         , T.SHOPCODE          = S.SHOPCODE         
	         , T.SEASON            = S.SEASON           
	         , T.PARTCODE          = S.PARTCODE         
	         , T.COLOR             = S.COLOR            
	         , T.SIZ               = S.SIZ              
	         , T.TAKEOUT_QTY       = S.TAKEOUT_QTY      
	         , T.TAKEOUT_CQTY      = S.TAKEOUT_CQTY     
	         , T.SALE_QTY          = S.SALE_QTY         
	         , T.SALE_CQTY         = S.SALE_CQTY        
	         , T.RTSEND_QTY        = S.RTSEND_QTY       
	         , T.RTRECV_QTY        = S.RTRECV_QTY       
	         , T.ORDER_QTY         = S.ORDER_QTY        
	         , T.ALLOCATE_QTY      = S.ALLOCATE_QTY     
	         , T.PICK_QTY          = S.PICK_QTY         
	         , T.INVOICE_QTY       = S.INVOICE_QTY      
	         , T.STOCK_QTY         = S.STOCK_QTY        
	         , T.TAKEOUTCOST_AMT   = S.TAKEOUTCOST_AMT  
	         , T.TAKEOUTCOST_CAMT  = S.TAKEOUTCOST_CAMT 
	         , T.TAKEOUTSELL_AMT   = S.TAKEOUTSELL_AMT  
	         , T.TAKEOUTSELL_CAMT  = S.TAKEOUTSELL_CAMT 
	         , T.SALE_AMT          = S.SALE_AMT         
	         , T.SALE_CAMT         = S.SALE_CAMT        
	         , T.RTSEND_AMT        = S.RTSEND_AMT       
	         , T.RTRECV_AMT        = S.RTRECV_AMT       
	         , T.TAKEOUTDATE_FIRST = S.TAKEOUTDATE_FIRST
	         , T.SALEDATE_FIRST    = S.SALEDATE_FIRST   
	         , T.SALEDATE_LAST     = S.SALEDATE_LAST    
	         , T.RTSENDHQ_QTY      = S.RTSENDHQ_QTY     
	         , T.RTRECVHQ_QTY      = S.RTRECVHQ_QTY     
	         , T.ADJUST_QTY        = S.ADJUST_QTY       
	         , T.ADJUST_CQTY       = S.ADJUST_CQTY      
	         , T.ADJUSTSELL_AMT    = S.ADJUSTSELL_AMT   
	         , T.ADJUSTSELL_CAMT   = S.ADJUSTSELL_CAMT  
	         , T.ADJUSTCOST_AMT    = S.ADJUSTCOST_AMT   
	         , T.ADJUSTCOST_CAMT   = S.ADJUSTCOST_CAMT  
	         , T.RETURN_QTY        = S.RETURN_QTY       
	         , T.AST_ORDR_QTY      = S.AST_ORDR_QTY     
	         , T.AST_ALCT_QTY      = S.AST_ALCT_QTY     
	         , T.AST_PICK_QTY      = S.AST_PICK_QTY     
	         , T.AST_INVC_QTY      = S.AST_INVC_QTY     
	         , T.O2OP_RSV_QTY      = S.O2OP_RSV_QTY     
	         , T.REPAIR_QTY        = S.REPAIR_QTY
 WHEN MATCHED AND S.TRANSACTIONS = 'D' THEN
	DELETE
 WHEN NOT MATCHED AND (S.TRANSACTIONS = 'I' OR S.TRANSACTIONS = 'U')THEN
	INSERT (
		      BRAND            
	        , SHOPCODE         
	        , SEASON           
	        , PARTCODE         
	        , COLOR            
	        , SIZ              
	        , TAKEOUT_QTY      
	        , TAKEOUT_CQTY     
	        , SALE_QTY         
	        , SALE_CQTY        
	        , RTSEND_QTY       
	        , RTRECV_QTY       
	        , ORDER_QTY        
	        , ALLOCATE_QTY     
	        , PICK_QTY         
	        , INVOICE_QTY      
	        , STOCK_QTY        
	        , TAKEOUTCOST_AMT  
	        , TAKEOUTCOST_CAMT 
	        , TAKEOUTSELL_AMT  
	        , TAKEOUTSELL_CAMT 
	        , SALE_AMT         
	        , SALE_CAMT        
	        , RTSEND_AMT       
	        , RTRECV_AMT       
	        , TAKEOUTDATE_FIRST
	        , SALEDATE_FIRST   
	        , SALEDATE_LAST    
	        , RTSENDHQ_QTY     
	        , RTRECVHQ_QTY     
	        , ADJUST_QTY       
	        , ADJUST_CQTY      
	        , ADJUSTSELL_AMT   
	        , ADJUSTSELL_CAMT  
	        , ADJUSTCOST_AMT   
	        , ADJUSTCOST_CAMT  
	        , RETURN_QTY       
	        , AST_ORDR_QTY     
	        , AST_ALCT_QTY     
	        , AST_PICK_QTY     
	        , AST_INVC_QTY     
	        , O2OP_RSV_QTY     
	        , REPAIR_QTY
		    )
	VALUES (
			  S.BRAND            
			, S.SHOPCODE         
			, S.SEASON           
			, S.PARTCODE         
			, S.COLOR            
			, S.SIZ              
			, S.TAKEOUT_QTY      
			, S.TAKEOUT_CQTY     
			, S.SALE_QTY         
			, S.SALE_CQTY        
			, S.RTSEND_QTY       
			, S.RTRECV_QTY       
			, S.ORDER_QTY        
			, S.ALLOCATE_QTY     
			, S.PICK_QTY         
			, S.INVOICE_QTY      
			, S.STOCK_QTY        
			, S.TAKEOUTCOST_AMT  
			, S.TAKEOUTCOST_CAMT 
			, S.TAKEOUTSELL_AMT  
			, S.TAKEOUTSELL_CAMT 
			, S.SALE_AMT         
			, S.SALE_CAMT        
			, S.RTSEND_AMT       
			, S.RTRECV_AMT       
			, S.TAKEOUTDATE_FIRST
			, S.SALEDATE_FIRST   
			, S.SALEDATE_LAST    
			, S.RTSENDHQ_QTY     
			, S.RTRECVHQ_QTY     
			, S.ADJUST_QTY       
			, S.ADJUST_CQTY      
			, S.ADJUSTSELL_AMT   
			, S.ADJUSTSELL_CAMT  
			, S.ADJUSTCOST_AMT   
			, S.ADJUSTCOST_CAMT  
			, S.RETURN_QTY       
			, S.AST_ORDR_QTY     
			, S.AST_ALCT_QTY     
			, S.AST_PICK_QTY     
			, S.AST_INVC_QTY     
			, S.O2OP_RSV_QTY     
			, S.REPAIR_QTY
		    )
;