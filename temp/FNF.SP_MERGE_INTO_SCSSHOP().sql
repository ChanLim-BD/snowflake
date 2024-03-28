CREATE OR REPLACE PROCEDURE FNF.SP_MERGE_INTO_SCSSHOP()
RETURNS VARCHAR
LANGUAGE SQL
EXECUTE AS CALLER
AS 
$$
	-- -----------------------------------------------------------------------------------
	-- VERSION    : 0.1
	-- CREATED AT : 2024.01.05
	-- LAST UPDATE: 2024.01.05	
	-- PURPOSE    : FNF.SCSSHOP
	-- 		        - MERGE INTO
	-- -----------------------------------------------------------------------------------
	-- ARGUMENTS  : 없음.
	-- -----------------------------------------------------------------------------------
	-- RETURNS    : 없음.
	-- -----------------------------------------------------------------------------------
	-- EXCEPTIONS : 없음.
	-- -----------------------------------------------------------------------------------
	-- TLOGIC : FUNCTION 변환 로직
	-- DLOGIC : 데이터 변환 로직 
	-- JOB COMMENT 
	-- 		>> 1. SOURCE : 
	-- 		>> 2. TARGET :
	--      >> 3. TLOGIC : 
	--      >> 4. DLOGIC : 
	-- -----------------------------------------------------------------------------------

BEGIN
	
	CALL FNF.FNF_LOG.LOGS_RAISE('FNF.SP_MERGE_INTO_SCSSHOP() START');
	
	ALTER EXTERNAL TABLE FNF.SCSSHOP_EXT REFRESH;
	
	CALL FNF.FNF_LOG.LOGS_RAISE('FNF.SP_MERGE_INTO_SCSSHOP() EXTERNAL TABLE REFRESH END');
	
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

	CALL FNF.FNF_LOG.LOGS_RAISE('FNF.SP_MERGE_INTO_SCSSHOP() MERGE INTO COMPLETE');
	
	CALL FNF.FNF_LOG.LOGS_RAISE('FNF.SP_MERGE_INTO_SCSSHOP() END');
	
	RETURN '정상종료';

EXCEPTION

  WHEN STATEMENT_ERROR THEN
    RETURN OBJECT_CONSTRUCT('ERROR TYPE', 'STATEMENT_ERROR',
                            'SQLCODE', SQLCODE,
                            'SQLERRM', SQLERRM,
                            'SQLSTATE', SQLSTATE);
  WHEN EXPRESSION_ERROR THEN
    RETURN OBJECT_CONSTRUCT('ERROR TYPE', 'EXPRESSION_ERROR',
                            'SQLCODE', SQLCODE,
                            'SQLERRM', SQLERRM,
                            'SQLSTATE', SQLSTATE);
  WHEN OTHER THEN
    RETURN OBJECT_CONSTRUCT('ERROR TYPE', 'OTHER ERROR',
                            'SQLCODE', SQLCODE,
                            'SQLERRM', SQLERRM,
                            'SQLSTATE', SQLSTATE);	

END;
$$
;