# 상품META VIEW 생성 로직입니다.
CREATE OR REPLACE VIEW DW_PB."상품META"
(
    "판매상품코드",
    "판매상품명",
    "생성년도",
    "단품코드",
    "브랜드코드",
    "브랜드명",
    "인터넷브랜드명",
    "상품대분류코드",
    "상품중분류코드",
    "상품소분류코드",
    "상품세분류코드",
    "상품대분류명",
    "상품중분류명",
    "상품소분류명",
    "상품세분류명",
    "상품분류사용여부",
    "상품판매구분코드",
    "상품판매구분명",
    "협력사코드",
    "협력사명",
    "협력사등록일",
    "활성상태구분코드",
    "활성상태구분명",
    "최초MD계약담당자ID",
    "최초MD계약담당자명",
    "제조사코드",
    "제조사명",
    "원산지명",
    "원산지코드",
    "주원료원산지코드",
    "주요원료국가명",
    "주요원료명",
    "무이자할부개월수",
    "무이자할부여부",
    "인터넷전시여부",
    "매입방법구분코드",
    "매입방법구분명",
    "선지급구분_YN",
    "정율정액구분코드",
    "정율정액구분명",
    "상품타입코드",
    "상품타입명",
    "무형상품결제여부",
    "상품QA결과구분코드",
    "상품QA결과구분명",
    "매입가격",
    "판매가격",
    "협력사코드_2차",
    "협력사명_2차",
    "백화점펀칭코드",
    "백화점펀칭명",
    "협력사상품코드",
    "성인상품여부",
    "후환불여부",
    "무형상품구분코드",
    "무형상품구분명",
    "판매상품승인구분코드",
    "판매상품승인구분명",
    "심의상태구분코드",
    "심의상태구분명",
    "HMALL상품검색제외",
    "HMALL포장훼손불가여부",
    "HMALL배송희망일지정여부",
    "변심불만택배비회수방법명",
    "변심교환배송비",
    "교환회수방법구분명",
    "변심반품배송비",
    "반품상품회수방법명",
    "과세여부",
    "HS코드",
    "영문상품명",
    "상품중량",
    "상품가로길이",
    "상품세로길이",
    "상품높이길이",
    "설치상품여부",
    "상시딜여부",
    "TC할인노출여부",
    "SCM휴일제외여부",
    "항공배송여부",
    "수수료HMALL노출여부",
    "당일출고안내여부",
    "육류이력여부",
    "최저구매수량",
    "프리미엄배송여부",
    "지정시간회수여부",
    "백화점협력사OP코드",
    "딜상품여부",
    "옵션상품여부",
    "비편성상품여부",
    "등록자구분명",
    "판매희망상태구분코드",
    "EBAY판매구분명",
    "가격비교쿠폰할인여부",
    "상품과세구분코드",
    "상품과세구분명",
    "MD코드",
    "소싱MD코드",
    "배송형태심사여부",
    "전환률심사완료여부",
    "리퍼브상품여부",
    "자녀상품여부_YN",
    "안전관리대상여부",
    "병행수입여부",
    "제휴카드할인여부",
    "청구할인제외여부",
    "주문제작여부",
    "스토어픽가능여부",
    "십일번가제휴상품코드",
    "옥션제휴상품코드",
    "쿠팡제휴상품코드",
    "이지웰제휴상품코드",
    "G마켓글로벌제휴상품코드",
    "G마켓제휴상품코드",
    "KB제휴상품코드",
    "농업협동조합제휴상품코드",
    "네이버제휴상품코드",
    "웰몰제휴상품코드",
    "위메프W제휴상품코드",
    "위메프제휴상품코드",
    "공헌이익액",
    "배송비용",
    "물류인건비",
    "포장부담비용",
    "콜인건비",
    "무료콜비용",
    "적립금",
    "사은품비용",
    "경품비용",
    "카드가맹점수수료",
    "무이자할부수수료",
    "CMS수수료",
    "상품권수수료",
    "부여적립금",
    "보석감정비용",
    "ARS자사부담금액",
    "공헌이익비율",
    "백화점OP코드",
    "매입부가세",
    "판매부가세",
    "마진금액",
    "마진비율",
    "새벽배송여부",
    "편의점배송여부",
    "지하철배송여부",
    "QA번호",
    "QA의뢰자ID",
    "검수자ID",
    "QA결과구분코드",
    "의뢰일자",
    "사전QA접수일시",
    "검사일자",
    "안전인증기관구분코드",
    "안전인증항목구분코드",
    "최종변경일시",
    "등록자ID",
    "ETL일시"
)
AS
SELECT 
 SLITM_CD                             판매상품코드                      
,SLITM_NM                             판매상품명              
,ITEM_REG_YR                          생성년도            
,PLU_CD                               단품코드                
,BRND_CD                              브랜드코드              
,BRND_NM                              브랜드명                
,EXPS_BRND_NM                         인터넷브랜드명            
,ITEM_L_CSF_CD                        상품대분류코드          
,ITEM_M_CSF_CD                        상품중분류코드          
,ITEM_S_CSF_CD                        상품소분류코드          
,ITEM_D_CSF_CD                        상품세분류코드          
,ITEM_L_CSF_NM                        상품대분류명            
,ITEM_M_CSF_NM                        상품중분류명            
,ITEM_S_CSF_NM                        상품소분류명            
,ITEM_D_CSF_NM                        상품세분류명            
,ITEM_D_CSF_USE_YN                    상품분류사용여부      
,ITEM_SELL_GBCD                       상품판매구분코드        
,ITEM_SELL_GB_NM                      상품판매구분명          
,VEN_CD                               협력사코드              
,VEN_NM                               협력사명                
,VEN_REG_DT                  협력사등록일         
,VTLT_STAT_GBCD                       활성상태구분코드        
,VTLT_STAT_GB_NM                      활성상태구분명          
,FRST_MD_CONT_ASGNR_ID                최초MD계약담당자ID      
,FRST_MD_CONT_ASGNR_NM                최초MD계약담당자명      
,MKCO_CD                              제조사코드              
,MKCO_NM                              제조사명                
,OCTY_NM                              원산지명                
,OCTY_CNRY_GBCD                       원산지코드
,PRMR_ORG_CNRY_GBCD                   주원료원산지코드    
,PRMR_ORG_CNRY_NM                     주요원료국가명          
,PRMR_ORG_NM                          주요원료명              
,WINT_INSM_MTHS                       무이자할부개월수        
,WINT_INSM_SETUP_APLY_YN              무이자할부여부  
,ITNT_DISP_YN                         인터넷전시여부          
,PRCH_MTHD_GBCD                       매입방법구분코드        
,PRCH_MTHD_GB_NM                      매입방법구분명          
,PREV_PAY_TRGT_YN                     선지급구분_YN        
,CMIS_GBCD                            정율정액구분코드          
,CMIS_GB_NM                           정율정액구분명            
,ITEM_GBCD                            상품타입코드            
,ITEM_GB_NM                           상품타입명              
,INTG_ITEM_STLM_YN                    무형상품결제여부        
,ITEM_QA_RST_GBCD                     상품QA결과구분코드
,ITEM_QA_RST_GB_NM                    상품QA결과구분명        
,PRCH_PRC                             매입가격                
,SELL_PRC                             판매가격                
,VEN2_CD                              협력사코드_2차           
,VEN2_NM                              협력사명_2차             
,DPTS_PCH_CD                          백화점펀칭코드          
,DPTS_PCH_NM                          백화점펀칭명            
,VEN_ITEM_CD                          협력사상품코드          
,ADLT_ITEM_YN                         성인상품여부            
,LRPY_YN                              후환불여부              
,INTG_ITEM_GBCD                       무형상품구분코드        
,INTG_ITEM_GB_NM                      무형상품구분명          
,SLITM_APRVL_GBCD                     판매상품승인구분코드    
,SLITM_APRVL_GB_NM                    판매상품승인구분명      
,HMALL_DLBR_STAT_GBCD                 심의상태구분코드   
,HMALL_DLBR_STAT_GB_NM                심의상태구분명     
,HMALL_ITEM_SRCH_EXCLD_YN             HMALL상품검색제외
,PACK_OPEN_RTP_NDMT_YN                HMALL포장훼손불가여부    
,DLV_HOPE_DT_DSNT_YN                  HMALL배송희망일지정여부
,CUST_DLVC_WDMT_GB_NM                 변심불만택배비회수방법명
,EXCH_DSRV_COST                       변심교환배송비             
,EXCH_WDMT_GB_NM                      교환회수방법구분명      
,RTP_DSRV_COST                        변심반품배송비             
,RTP_WDMT_GB_NM                       반품상품회수방법명      
,ITEM_TAXN_YN                         과세여부            
,HSCD                                 HS코드                  
,ENG_ITEM_NM                          영문상품명              
,ITEM_WGT                             상품중량                
,ITEM_WDTH_LEN                        상품가로길이            
,ITEM_HGHT_LEN                        상품세로길이            
,ITEM_HGH_LEN                         상품높이길이            
,INSL_ITEM_YN                         설치상품여부            
,ODTM_DEAL_YN                         상시딜여부              
,TC_DC_EXPS_YN                        TC할인노출여부          
,SCM_HLDY_EXCLD_YN                    SCM휴일제외여부         
,AIR_DLV_YN                           항공배송여부            
,CMIS_HMALL_EXPS_YN                   수수료HMALL노출여부     
,THDY_OSHP_GD_YN                      당일출고안내여부        
,MEAT_HIS_YN                          육류이력여부            
,LWST_BUY_QTY                         최저구매수량            
,PREM_DLV_YN                          프리미엄배송여부        
,DSNT_TIME_WTDW_YN                    지정시간회수여부        
,DPTS_VEN_OP_CD                       백화점협력사OP코드      
,DEAL_ITEM_YN                         딜상품여부              
,TRNDH_EXCL_TAG_EXPS_YN               옵션상품여부 
,ONAIR_POSS_YN                        비편성상품여부      
,USER_GB_NM                           등록자구분명            
,SELL_HOPE_STAT_GBCD                  판매희망상태구분코드    
,SELL_HOPE_STAT_GB_NM                 ebay판매구분명      
,PRC_COMP_COPN_DC_YN                  가격비교쿠폰할인여부    
,ITEM_TAXN_GBCD                       상품과세구분코드        
,ITEM_TAXN_GB_NM                      상품과세구분명          
,MD_CD                                MD코드                  
,SRCN_MD_CD                           소싱MD코드              
,DLV_FORM_JDGM_YN                     배송형태심사여부        
,MRGN_JDGM_CMPT_YN                    전환률심사완료여부        
,REIT_YN                              리퍼브상품여부          
,CHILD_ITEM_YN                        자녀상품여부_YN            
,SAFE_MNG_TRGT_YN                     안전관리대상여부        
,PARL_IMPR_YN                         병행수입여부            
,ALLI_CRD_DC_YN                       제휴카드할인여부        
,DMND_DC_EXCLD_YN                     청구할인제외여부        
,ORD_MAKE_YN                          주문제작여부            
,STPIC_POSS_YN                        스토어픽가능여부        
,ST11_ALLI_ITEM_CD                    십일번가제휴상품코드      
,AUCT_ALLI_ITEM_CD                    옥션제휴상품코드        
,CPG_ALLI_ITEM_CD                     쿠팡제휴상품코드        
,EZW_ALLI_ITEM_CD                     이지웰제휴상품코드      
,GMKT_GLOB_ALLI_ITEM_CD               G마켓글로벌제휴상품코드 
,GMKT_ALLI_ITEM_CD                    G마켓제휴상품코드       
,KB_ALLI_ITEM_CD                      KB제휴상품코드          
,NACF_ALLI_ITEM_CD                    농업협동조합제휴상품코드
,NAVER_ALLI_ITEM_CD                   네이버제휴상품코드      
,WLML_ALLI_ITEM_CD                    웰몰제휴상품코드        
,WMPW_ALLI_ITEM_CD                    위메프W제휴상품코드     
,WMP_ALLI_ITEM_CD                     위메프제휴상품코드      
,CTPF_AMT                             공헌이익액            
,DLV_COST                             배송비용                
,PHDS_LACO                            물류인건비              
,PACK_CHRG_COST                       포장부담비용            
,CALL_LACO                            콜인건비                
,NCHG_CALL_COST                       무료콜비용              
,SVMT                                 적립금                  
,GIFT_COST                            사은품비용              
,PRMP_COST                            경품비용                
,CRD_FRCS_CMIS                        카드가맹점수수료        
,WINT_INSM_CMIS                       무이자할부수수료        
,CMS_CMIS                             CMS수수료               
,GC_CMIS                              상품권수수료            
,GRNT_SVMT                            부여적립금              
,JWL_JGMT_COST                        보석감정비용            
,ARS_OWCO_CHRG_AMT                    ARS자사부담금액         
,CTPF_RATE                            공헌이익비율            
,DPTS_OP_CD                           백화점OP코드            
,PRCH_VAT                             매입부가세              
,SELL_VAT                             판매부가세              
,MRGN_AMT                             마진금액                
,MRGN_RATE                            마진비율                
,DAWN_DLV_YN                          새벽배송여부            
,CVST_DLV_YN                          편의점배송여부          
,RLF_DLV_YN                           지하철배송여부            
,QA_NO                                QA번호                  
,QA_CLNT_ID                           QA의뢰자ID              
,PQA_ASGNR_ID                         검수자ID          
,QA_RST_GBCD                          QA결과구분코드          
,QA_ASK_DTM                           의뢰일자              
,PQA_ACPT_DTM                         사전QA접수일시          
,PQA_ASGNR_CMPT_DTM                   검사일자    
,SAFE_CRTI_GBCD                       안전인증기관구분코드    
,SAFE_CERT_CLAS_GBCD                  안전인증항목구분코드    
,LAST_CHG_DTM                         최종변경일시            
,RGST_ID                              등록자ID                
,ETL_DTM                              ETL일시                 
FROM DW_RM.RIA_ITEM_ANAL_FCT;

--

CREATE OR REPLACE VIEW DW_PB."상품META"
(
    "판매상품코드",
    "판매상품명",
    "생성년도",
    "단품코드",
    "브랜드코드",
    "브랜드명",
    "인터넷브랜드명",
    "상품대분류코드",
    "상품중분류코드",
    "상품소분류코드",
    "상품세분류코드",
    "상품대분류명",
    "상품중분류명",
    "상품소분류명",
    "상품세분류명",
    "상품분류사용여부",
    "상품판매구분코드",
    "상품판매구분명",
    "협력사코드",
    "협력사명",
    "협력사등록일",
    "활성상태구분코드",
    "활성상태구분명",
    "최초MD계약담당자ID",
    "최초MD계약담당자명",
    "제조사코드",
    "제조사명",
    "원산지명",
    "원산지코드",
    "주원료원산지코드",
    "주요원료국가명",
    "주요원료명",
    "무이자할부개월수",
    "무이자할부여부",
    "인터넷전시여부",
    "매입방법구분코드",
    "매입방법구분명",
    "선지급구분_YN",
    "정율정액구분코드",
    "정율정액구분명",
    "상품타입코드",
    "상품타입명",
    "무형상품결제여부",
    "상품QA결과구분코드",
    "상품QA결과구분명",
    "매입가격",
    "판매가격",
    "협력사코드_2차",
    "협력사명_2차",
    "백화점펀칭코드",
    "백화점펀칭명",
    "협력사상품코드",
    "성인상품여부",
    "후환불여부",
    "무형상품구분코드",
    "무형상품구분명",
    "판매상품승인구분코드",
    "판매상품승인구분명",
    "심의상태구분코드",
    "심의상태구분명",
    "HMALL상품검색제외",
    "HMALL포장훼손불가여부",
    "HMALL배송희망일지정여부",
    "변심불만택배비회수방법명",
    "변심교환배송비",
    "교환회수방법구분명",
    "변심반품배송비",
    "반품상품회수방법명",
    "과세여부",
    "HS코드",
    "영문상품명",
    "상품중량",
    "상품가로길이",
    "상품세로길이",
    "상품높이길이",
    "설치상품여부",
    "상시딜여부",
    "TC할인노출여부",
    "SCM휴일제외여부",
    "항공배송여부",
    "수수료HMALL노출여부",
    "당일출고안내여부",
    "육류이력여부",
    "최저구매수량",
    "프리미엄배송여부",
    "지정시간회수여부",
    "백화점협력사OP코드",
    "딜상품여부",
    "옵션상품여부",
    "비편성상품여부",
    "등록자구분명",
    "판매희망상태구분코드",
    "EBAY판매구분명",
    "가격비교쿠폰할인여부",
    "상품과세구분코드",
    "상품과세구분명",
    "MD코드",
    "소싱MD코드",
    "배송형태심사여부",
    "전환률심사완료여부",
    "리퍼브상품여부",
    "자녀상품여부_YN",
    "안전관리대상여부",
    "병행수입여부",
    "제휴카드할인여부",
    "청구할인제외여부",
    "주문제작여부",
    "스토어픽가능여부",
    "십일번가제휴상품코드",
    "옥션제휴상품코드",
    "쿠팡제휴상품코드",
    "이지웰제휴상품코드",
    "G마켓글로벌제휴상품코드",
    "G마켓제휴상품코드",
    "KB제휴상품코드",
    "농업협동조합제휴상품코드",
    "네이버제휴상품코드",
    "웰몰제휴상품코드",
    "위메프W제휴상품코드",
    "위메프제휴상품코드",
    "공헌이익액",
    "배송비용",
    "물류인건비",
    "포장부담비용",
    "콜인건비",
    "무료콜비용",
    "적립금",
    "사은품비용",
    "경품비용",
    "카드가맹점수수료",
    "무이자할부수수료",
    "CMS수수료",
    "상품권수수료",
    "부여적립금",
    "보석감정비용",
    "ARS자사부담금액",
    "공헌이익비율",
    "백화점OP코드",
    "매입부가세",
    "판매부가세",
    "마진금액",
    "마진비율",
    "새벽배송여부",
    "편의점배송여부",
    "지하철배송여부",
    "QA번호",
    "QA의뢰자ID",
    "검수자ID",
    "QA결과구분코드",
    "의뢰일자",
    "사전QA접수일시",
    "검사일자",
    "안전인증기관구분코드",
    "안전인증항목구분코드",
    "최종변경일시",
    "등록자ID",
    "ETL일시"
)
AS
SELECT 
 SLITM_CD                                                   
,SLITM_NM                                           
,ITEM_REG_YR                                      
,PLU_CD                                               
,BRND_CD                                            
,BRND_NM                                              
,EXPS_BRND_NM                                     
,ITEM_L_CSF_CD                                  
,ITEM_M_CSF_CD                                  
,ITEM_S_CSF_CD                                  
,ITEM_D_CSF_CD                                  
,ITEM_L_CSF_NM                                    
,ITEM_M_CSF_NM                                    
,ITEM_S_CSF_NM                                    
,ITEM_D_CSF_NM                                    
,ITEM_D_CSF_USE_YN                          
,ITEM_SELL_GBCD                               
,ITEM_SELL_GB_NM                                
,VEN_CD                                             
,VEN_NM                                               
,VEN_REG_DT                           
,VTLT_STAT_GBCD                               
,VTLT_STAT_GB_NM                                
,FRST_MD_CONT_ASGNR_ID                      
,FRST_MD_CONT_ASGNR_NM                      
,MKCO_CD                                            
,MKCO_NM                                              
,OCTY_NM                                              
,OCTY_CNRY_GBCD                       
,PRMR_ORG_CNRY_GBCD                       
,PRMR_ORG_CNRY_NM                               
,PRMR_ORG_NM                                        
,WINT_INSM_MTHS                               
,WINT_INSM_SETUP_APLY_YN                
,ITNT_DISP_YN                                   
,PRCH_MTHD_GBCD                               
,PRCH_MTHD_GB_NM                                
,PREV_PAY_TRGT_YN                             
,CMIS_GBCD                                      
,CMIS_GB_NM                                       
,ITEM_GBCD                                        
,ITEM_GB_NM                                         
,INTG_ITEM_STLM_YN                            
,ITEM_QA_RST_GBCD                     
,ITEM_QA_RST_GB_NM                            
,PRCH_PRC                                             
,SELL_PRC                                             
,VEN2_CD                                         
,VEN2_NM                                           
,DPTS_PCH_CD                                    
,DPTS_PCH_NM                                      
,VEN_ITEM_CD                                    
,ADLT_ITEM_YN                                     
,LRPY_YN                                            
,INTG_ITEM_GBCD                               
,INTG_ITEM_GB_NM                                
,SLITM_APRVL_GBCD                         
,SLITM_APRVL_GB_NM                          
,HMALL_DLBR_STAT_GBCD                    
,HMALL_DLBR_STAT_GB_NM                     
,HMALL_ITEM_SRCH_EXCLD_YN             
,PACK_OPEN_RTP_NDMT_YN                    
,DLV_HOPE_DT_DSNT_YN                  
,CUST_DLVC_WDMT_GB_NM                 
,EXCH_DSRV_COST                                    
,EXCH_WDMT_GB_NM                            
,RTP_DSRV_COST                                     
,RTP_WDMT_GB_NM                             
,ITEM_TAXN_YN                                     
,HSCD                                                   
,ENG_ITEM_NM                                        
,ITEM_WGT                                             
,ITEM_WDTH_LEN                                    
,ITEM_HGHT_LEN                                    
,ITEM_HGH_LEN                                     
,INSL_ITEM_YN                                     
,ODTM_DEAL_YN                                       
,TC_DC_EXPS_YN                                  
,SCM_HLDY_EXCLD_YN                             
,AIR_DLV_YN                                       
,CMIS_HMALL_EXPS_YN                        
,THDY_OSHP_GD_YN                              
,MEAT_HIS_YN                                      
,LWST_BUY_QTY                                     
,PREM_DLV_YN                                  
,DSNT_TIME_WTDW_YN                            
,DPTS_VEN_OP_CD                             
,DEAL_ITEM_YN                                       
,TRNDH_EXCL_TAG_EXPS_YN                
,ONAIR_POSS_YN                              
,USER_GB_NM                                       
,SELL_HOPE_STAT_GBCD                      
,SELL_HOPE_STAT_GB_NM                       
,PRC_COMP_COPN_DC_YN                      
,ITEM_TAXN_GBCD                               
,ITEM_TAXN_GB_NM                                
,MD_CD                                                  
,SRCN_MD_CD                                         
,DLV_FORM_JDGM_YN                             
,MRGN_JDGM_CMPT_YN                            
,REIT_YN                                        
,CHILD_ITEM_YN                                    
,SAFE_MNG_TRGT_YN                             
,PARL_IMPR_YN                                     
,ALLI_CRD_DC_YN                               
,DMND_DC_EXCLD_YN                             
,ORD_MAKE_YN                                      
,STPIC_POSS_YN                                
,ST11_ALLI_ITEM_CD                          
,AUCT_ALLI_ITEM_CD                            
,CPG_ALLI_ITEM_CD                             
,EZW_ALLI_ITEM_CD                           
,GMKT_GLOB_ALLI_ITEM_CD                
,GMKT_ALLI_ITEM_CD                           
,KB_ALLI_ITEM_CD                                
,NACF_ALLI_ITEM_CD                    
,NAVER_ALLI_ITEM_CD                         
,WLML_ALLI_ITEM_CD                            
,WMPW_ALLI_ITEM_CD                         
,WMP_ALLI_ITEM_CD                           
,CTPF_AMT                                         
,DLV_COST                                             
,PHDS_LACO                                          
,PACK_CHRG_COST                                   
,CALL_LACO                                            
,NCHG_CALL_COST                                     
,SVMT                                                   
,GIFT_COST                                          
,PRMP_COST                                            
,CRD_FRCS_CMIS                                
,WINT_INSM_CMIS                               
,CMS_CMIS                                            
,GC_CMIS                                          
,GRNT_SVMT                                          
,JWL_JGMT_COST                                    
,ARS_OWCO_CHRG_AMT                             
,CTPF_RATE                                        
,DPTS_OP_CD                                       
,PRCH_VAT                                           
,SELL_VAT                                           
,MRGN_AMT                                             
,MRGN_RATE                                            
,DAWN_DLV_YN                                      
,CVST_DLV_YN                                    
,RLF_DLV_YN                                       
,QA_NO                                                  
,QA_CLNT_ID                                         
,PQA_ASGNR_ID                                   
,QA_RST_GBCD                                    
,QA_ASK_DTM                                         
,PQA_ACPT_DTM                                   
,PQA_ASGNR_CMPT_DTM                       
,SAFE_CRTI_GBCD                           
,SAFE_CERT_CLAS_GBCD                      
,LAST_CHG_DTM                                     
,RGST_ID                                              
,ETL_DTM                                               
FROM DW_RM.RIA_ITEM_ANAL_FCT;