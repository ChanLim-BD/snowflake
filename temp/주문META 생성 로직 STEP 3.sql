# 주문META VIEW 생성 로직입니다.
CREATE OR REPLACE VIEW DW_PB."주문META"
(
    "기준일자",
    "주문번호",
    "주문상세순번",
    "주문일자",
    "주문일시",
    "주문출처구분코드",
    "접수일자",
    "접수일시",
    "취소일자",
    "반품접수일자",
    "반품완료일자",
    "환불일자",
    "불만상담일자",
    "출고일자",
    "고객번호",
    "배송지순번",
    "판매매체구분코드",
    "판매매체구분명",
    "판매매체번호",
    "판매매체명",
    "판매매체대분류코드",
    "판매매체대분류명",
    "판매매체중분류코드",
    "판매매체중분류명",
    "판매매체소분류코드",
    "판매매체소분류명",
    "판매매체대분류명_관리",
    "판매상품코드",
    "판매상품명",
    "상품타입코드",
    "브랜드코드",
    "브랜드명",
    "매입방법구분코드",
    "매입방법구분명",
    "정액정률구분코드",
    "정액정률구분명",
    "상품분류1차",
    "상품분류2차",
    "무형상품결제여부",
    "세트상품여부",
    "세트주문상세순번",
    "세트판매상품코드",
    "상품속성코드",
    "상품가격적용일자",
    "MD코드",
    "MD명",
    "사업부코드",
    "사업부명",
    "팀코드",
    "팀명",
    "파트코드",
    "파트명",
    "소싱MD코드",
    "소싱MD명",
    "방송MD코드",
    "HMALLMD코드",
    "매장ID",
    "유입채널코드",
    "유입채널명",
    "유입채널대분류명",
    "유입채널중분류명",
    "TC코드",
    "협력사코드",
    "협력사명",
    "매체교차실적분석구분코드",
    "매체교차실적분석구분명",
    "제휴검색어번호",
    "방송편성번호",
    "PGM코드",
    "PGM명",
    "웹정보노출구분코드",
    "웹정보노출구분명",
    "주문유형구분코드",
    "불만상담분류코드",
    "최종주문상태구분코드",
    "최종주문상태구분명",
    "취소상담분류코드",
    "주문상품구분코드",
    "이전접수주문상세순번",
    "최초접수주문상세순번",
    "구성본품주문상세순번",
    "교환묶음주문상세순번",
    "접수채널구분코드",
    "접수채널구분명",
    "최초등록매입매체구분코드",
    "최초등록매입매체구분명",
    "상품매체구분코드",
    "상품매체구분명",
    "방송매체구분코드",
    "방송매체구분명",
    "관리창고번호",
    "배송주체구분코드",
    "배송사코드",
    "후환불여부",
    "사은품프로모션번호",
    "판매단가",
    "주문수량",
    "취소수량",
    "반품수량",
    "반품취소수량",
    "교환수량",
    "주문기타수량",
    "접수수량",
    "잔여수량",
    "순주문수량",
    "사은품주문수량",
    "사은품순주문수량",
    "사은품취소수량",
    "사은품반품수량",
    "사은품반품취소수량",
    "할인비율",
    "부가세비율",
    "과세심사여부",
    "주문기타금액",
    "예상공헌이익금액",
    "이익금액",
    "할인금액",
    "마진금액",
    "거래금액",
    "GMV금액",
    "주문금액_VAT포함",
    "취소금액_VAT포함",
    "반품금액_VAT포함",
    "반품취소금액_VAT포함",
    "매입가격",
    "매입부가세",
    "판매가격",
    "판매부가세",
    "마진비율",
    "예상전환율적용일자",
    "예상전환율",
    "실전환율",
    "예상공헌이익비율",
    "배송형태구분코드",
    "협력사부담금액",
    "온라인전용상품전환여부",
    "판매시점구분코드",
    "생방송대분류명",
    "생방송중분류명",
    "정기배송여부",
    "정기배송신청번호",
    "결제1차지불수단구분코드",
    "결제1차지불수단구분명",
    "결제1차금융기관코드",
    "결제1차카드사명",
    "결제1차할부개월수",
    "결제1차무이자여부",
    "결제1차무이자수수료",
    "결제1차지불수단가중비율",
    "결제1차카드사수수료비율",
    "결제1차할부수수료비율",
    "결제1차카드사수수료",
    "결제1차할부수수료",
    "결제1차결제수단별금액",
    "결제1차합계수수료",
    "결제1차현금결제경로구분코드",
    "결제1차VAN구분코드",
    "결제1차환불가능금액",
    "결제1차현대카드CLCC여부",
    "결제상태구분코드",
    "결제상태구분명",
    "무이자수수료",
    "카드사수수료",
    "할부수수료",
    "합계수수료",
    "환불가능금액",
    "결제금액",
    "복합결제여부",
    "결제2차지불수단구분코드",
    "결제2차지불수단구분명",
    "결제2차금융기관코드",
    "결제2차카드사명",
    "결제2차할부개월수",
    "결제2차무이자여부",
    "결제2차무이자수수료",
    "결제2차지불수단가중비율",
    "결제2차카드사수수료비율",
    "결제2차할부수수료비율",
    "결제2차카드사수수료",
    "결제2차할부수수료",
    "결제2차결제수단별금액",
    "결제2차합계수수료",
    "결제2차현금결제경로구분코드",
    "결제2차VAN구분코드",
    "결제2차환불가능금액",
    "결제2차현대카드CLCC여부",
    "결제3차지불수단구분코드",
    "결제3차지불수단구분명",
    "결제3차금융기관코드",
    "결제3차카드사명",
    "결제3차할부개월수",
    "결제3차무이자여부",
    "결제3차무이자수수료",
    "결제3차지불수단가중비율",
    "결제3차카드사수수료비율",
    "결제3차할부수수료비율",
    "결제3차카드사수수료",
    "결제3차할부수수료",
    "결제3차결제수단별금액",
    "결제3차합계수수료",
    "결제3차현금결제경로구분코드",
    "결제3차VAN구분코드",
    "결제3차환불가능금액",
    "결제3차현대카드CLCC여부",
    "협력사체결등록자ID",
    "렌탈MD확정일자",
    "렌탈MD확정자ID",
    "렌탈취급고금액",
    "렌탈체결수량",
    "무형상품실적금액",
    "ARS할인금액_VAT포함",
    "일시불할인금액_VAT포함",
    "쿠폰할인금액_VAT포함",
    "직원할인금액_VAT포함",
    "기타할인금액_VAT포함",
    "B2E할인금액_VAT포함",
    "카드프로모션할인금액_VAT포함",
    "적립금선할인금액_VAT포함",
    "T커머스할인금액_VAT포함",
    "깜짝할인금액_VAT포함",
    "프로모션할인금액_VAT포함",
    "바로사용쿠폰할인금액_VAT포함",
    "대량구매할인금액_VAT포함",
    "해외배송비금액_VAT포함",
    "반품택배비용_VAT포함",
    "도서산간배송비금액_VAT포함",
    "사은품할인금액_VAT포함",
    "제휴사할인금액_VAT포함",
    "무료배송쿠폰할인금액_VAT포함",
    "추가배송비금액_VAT포함",
    "교환택배비용_VAT포함",
    "합포장사은품금액_VAT포함",
    "ARS할인적용비율",
    "일시불할인적용비율",
    "쿠폰할인적용비율",
    "직원할인비율",
    "기타할인비율",
    "B2E할인적용비율",
    "카드프로모션할인비율",
    "적립금선할인비율",
    "T커머스할인비율",
    "깜짝할인비율",
    "프로모션할인비율",
    "바로사용쿠폰할인비율",
    "대량구매할인비율",
    "배송비비율",
    "해외배송비비율",
    "반품택배비용비율",
    "도서산간배송비비율",
    "사은품할인비율",
    "제휴사할인비율",
    "무료배송쿠폰할인비율",
    "추가배송비비율",
    "교환택배비용비율",
    "합포장사은품비율",
    "결제수단할인비율",
    "결제금액할인쿠폰비율",
    "카드즉시할인비율",
    "분담가능할인금액",
    "매출총이익_카드즉시할인포함",
    "ARS할인금액",
    "일시불할인금액",
    "쿠폰할인금액",
    "직원할인금액",
    "기타할인금액",
    "B2E할인금액",
    "카드프로모션할인금액",
    "적립금선할인금액",
    "T커머스할인금액",
    "깜짝할인금액",
    "프로모션할인금액",
    "바로사용쿠폰할인금액",
    "대량구매할인금액",
    "배송할인비용",
    "해외배송비금액",
    "반품택배비용",
    "도서산간배송비금액",
    "사은품할인금액",
    "제휴사할인금액",
    "무료배송쿠폰할인금액",
    "추가배송비금액",
    "교환택배비용",
    "합포장사은품금액",
    "협력사분담금액",
    "결제수단할인금액",
    "결제금액할인쿠폰금액",
    "카드즉시할인금액",
    "실매출금액",
    "순주문금액",
    "주문금액",
    "취소금액",
    "반품금액",
    "반품취소금액",
    "교환금액",
    "매출이익금액",
    "변동비금액",
    "공헌이익금액",
    "수신자부담전화비용",
    "카드가맹점수수료",
    "무이자할부수수료",
    "CMS수수료",
    "상품권수수료",
    "제휴사판매수수료",
    "배송비용",
    "포장비용",
    "콜인건비",
    "물류인건비",
    "MD부여H포인트",
    "경품자사분담비용",
    "브랜드수수료",
    "보석감정비용",
    "카드청구할인금액",
    "일시불할인협력사분담금액",
    "SMS전송비용",
    "ARS할인협력사부담금액",
    "당사적립금액",
    "PGM가맹점수수료",
    "PGM무이자할부수수료",
    "PGM사은품비용",
    "방송MD부여H포인트",
    "방송리워드H포인트",
    "무형상품매출이익금액",
    "무형상품매출이익수량",
    "무형상품매출이익할인금액",
    "직매입손실금액",
    "기본적립H포인트",
    "렌탈정률수수료",
    "카카오주문수수료",
    "PGM구성상품사은품구분코드",
    "PGM프로모션사은품제공수량",
    "PGMCMS결제건수",
    "상품평가사은품비용",
    "상품평가사은품배송비용",
    "상품평가사은품물류인건비",
    "사후변동비금액",
    "깜짝할인분담금액",
    "바로사용쿠폰협력사분담금액",
    "리워드H포인트",
    "즉시할인카드사분담금액",
    "무이자할부수수료협력사분담금액",
    "사은품비용",
    "사은품경품비용",
    "변동비요약금액",
    "수수료제외변동비금액",
    "카드즉시할인포함변동비금액",
    "카드할인금액",
    "카드즉시할인자사분담금액",
    "전체리워드금액",
    "전체할인협력사분담금액",
    "제휴몰주문번호",
    "제휴몰코드",
    "제휴몰명",
    "제휴몰상품코드",
    "제휴몰상품명",
    "제휴몰전체할인금액",
    "제휴몰할인금액",
    "제휴몰주문일시",
    "제휴몰판매구분코드",
    "제휴몰판매구분명",
    "요일명",
    "휴일여부",
    "월기준주차",
    "월기준주차명",
    "2001년기준주차",
    "추천인사번",
    "추천인명",
    "배송지유형구분코드",
    "배송지유형구분명",
    "상품대분류명",
    "상품중분류명",
    "상품소분류명",
    "상품세분류명",
    "상품대분류코드",
    "상품중분류코드",
    "상품소분류코드",
    "상품세분류코드",
    "등록자ID",
    "ETL일시"
)
AS
SELECT 
     BSIC_DT    AS    "기준일자"
,    ORD_NO    AS    "주문번호"
,    ORD_PTC_SEQ    AS    "주문상세순번"
,    ORD_DT    AS    "주문일자"
,    ORD_DTM    AS    "주문일시"
,    ORD_SRC_GBCD    AS    "주문출처구분코드"
,    ACPT_DT    AS    "접수일자"
,    ACPT_DTM    AS    "접수일시"
,    CNCL_DT    AS    "취소일자"
,    RTP_ACPT_DT    AS    "반품접수일자"
,    RTP_CMPT_DT    AS    "반품완료일자"
,    REPY_DT    AS    "환불일자"
,    DSTF_CNSL_DT    AS    "불만상담일자"
,    OSHP_DT    AS    "출고일자"
,    CUST_NO    AS    "고객번호"
,    DSTN_SEQ    AS    "배송지순번"
,    SELL_MDA_GBCD    AS    "판매매체구분코드"
,    SELL_MDA_GB_NM    AS    "판매매체구분명"
,    SELL_MDA_NO    AS    "판매매체번호"
,    SELL_MDA_NM    AS    "판매매체명"
,    SELL_MDA_L_CSF_CD    AS    "판매매체대분류코드"
,    SELL_MDA_L_CSF_NM    AS    "판매매체대분류명"
,    SELL_MDA_M_CSF_CD    AS    "판매매체중분류코드"
,    SELL_MDA_M_CSF_NM    AS    "판매매체중분류명"
,    SELL_MDA_S_CSF_CD    AS    "판매매체소분류코드"
,    SELL_MDA_S_CSF_NM    AS    "판매매체소분류명"
,    SELL_MDA_L_CSF_CD_BIZ_STRG    AS    "판매매체대분류명_관리"
,    SLITM_CD    AS    "판매상품코드"
,    SLITM_NM    AS    "판매상품명"
,    ITEM_GBCD    AS    "상품타입코드"
,    BRND_CD    AS    "브랜드코드"
,    BRND_NM    AS    "브랜드명"
,    PRCH_MTHD_GBCD    AS    "매입방법구분코드"
,    PRCH_MTHD_GB_NM    AS    "매입방법구분명"
,    FAMT_FXRT_GBCD    AS    "정액정률구분코드"
,    FAMT_FXRT_GB_NM    AS    "정액정률구분명"
,    PRM_ITEM_CSF    AS    "상품분류1차"
,    SCDR_ITEM_CSF    AS    "상품분류2차"
,    INTG_ITEM_STLM_YN    AS    "무형상품결제여부"
,    SET_ITEM_YN    AS    "세트상품여부"
,    SET_ORD_PTC_SEQ    AS    "세트주문상세순번"
,    SET_SLITM_CD    AS    "세트판매상품코드"
,    UITM_CD    AS    "상품속성코드"
,    ITEM_PRC_APLY_DT    AS    "상품가격적용일자"
,    MD_CD    AS    "MD코드"
,    MD_NM    AS    "MD명"
,    DVSN_CD    AS    "사업부코드"
,    DVSN_NM    AS    "사업부명"
,    TEAM_CD    AS    "팀코드"
,    TEAM_NM    AS    "팀명"
,    PART_CD    AS    "파트코드"
,    PART_NM    AS    "파트명"
,    SRCN_MD_CD    AS    "소싱MD코드"
,    SRCN_MD_NM    AS    "소싱MD명"
,    BROD_MD_CD    AS    "방송MD코드"
,    HMALL_MD_CD    AS    "HMALLMD코드"
,    TO_CHAR(SECT_ID)    AS    "매장ID"
,    INFW_CH_CD    AS    "유입채널코드"
,    INFW_CH_NM    AS    "유입채널명"
,    INFW_CH_L_CSF_NM    AS    "유입채널대분류명"
,    INFW_CH_M_CSF_NM    AS    "유입채널중분류명"
,    TC_CD    AS    "TC코드"
,    VEN_CD    AS    "협력사코드"
,    VEN_NM    AS    "협력사명"
,    MDA_CROS_ARLT_ANAL_GBCD    AS    "매체교차실적분석구분코드"
,    MDA_CROS_ARLT_ANAL_GB_NM    AS    "매체교차실적분석구분명"
,    ALSW_NO    AS    "제휴검색어번호"
,    BFMT_NO    AS    "방송편성번호"
,    PGM_CD    AS    "PGM코드"
,    PGM_NM    AS    "PGM명"
,    WEB_INF_EXPS_GBCD    AS    "웹정보노출구분코드"
,    WEB_INF_EXPS_GB_NM    AS    "웹정보노출구분명"
,    ORD_TYPE_GBCD    AS    "주문유형구분코드"
,    DSTF_CNSL_CSF_CD    AS    "불만상담분류코드"
,    LAST_ORD_STAT_GBCD    AS    "최종주문상태구분코드"
,    LAST_ORD_STAT_GB_NM    AS    "최종주문상태구분명"
,    CNCL_CNSL_CSF_CD    AS    "취소상담분류코드"
,    ORD_ITEM_GBCD    AS    "주문상품구분코드"
,    BEF_ACPT_ORD_PTC_SEQ    AS    "이전접수주문상세순번"
,    FRST_ACPT_ORD_PTC_SEQ    AS    "최초접수주문상세순번"
,    CMPS_ORPD_ORD_PTC_SEQ    AS    "구성본품주문상세순번"
,    EXCH_BNDL_ORD_PTC_SEQ    AS    "교환묶음주문상세순번"
,    ACPT_CH_GBCD    AS    "접수채널구분코드"
,    ACPT_CH_GB_NM    AS    "접수채널구분명"
,    FRST_REG_PRCH_MDA_GBCD    AS    "최초등록매입매체구분코드"
,    FRST_REG_PRCH_MDA_GB_NM    AS    "최초등록매입매체구분명"
,    ITEM_MDA_GBCD    AS    "상품매체구분코드"
,    ITEM_MDA_GB_NM    AS    "상품매체구분명"
,    BROD_MDA_GBCD    AS    "방송매체구분코드"
,    BROD_MDA_GB_NM    AS    "방송매체구분명"
,    MNG_WH_NO    AS    "관리창고번호"
,    DLV_MAGN_GBCD    AS    "배송주체구분코드"
,    DLVCO_CD    AS    "배송사코드"
,    LRPY_YN    AS    "후환불여부"
,    GIFT_PRMO_NO    AS    "사은품프로모션번호"
,    SELL_UPRC    AS    "판매단가"
,    ORD_QTY    AS    "주문수량"
,    CNCL_QTY    AS    "취소수량"
,    RTP_QTY    AS    "반품수량"
,    RTP_CNCL_QTY    AS    "반품취소수량"
,    EXCH_QTY    AS    "교환수량"
,    ORD_ETC_QTY    AS    "주문기타수량"
,    ACPT_QTY    AS    "접수수량"
,    RMND_QTY    AS    "잔여수량"
,    RORD_QTY    AS    "순주문수량"
,    GIFT_ORD_QTY    AS    "사은품주문수량"
,    GIFT_RORD_QTY    AS    "사은품순주문수량"
,    GIFT_CNCL_QTY    AS    "사은품취소수량"
,    GIFT_RTP_QTY    AS    "사은품반품수량"
,    GIFT_RTP_CNCL_QTY    AS    "사은품반품취소수량"
,    DC_RATE    AS    "할인비율"
,    VAT_RATE    AS    "부가세비율"
,    TAXN_JDGM_YN    AS    "과세심사여부"
,    ORD_ETC_AMT    AS    "주문기타금액"
,    EXP_CTPF_AMT    AS    "예상공헌이익금액"
,    PRFT_AMT    AS    "이익금액"
,    DC_AMT    AS    "할인금액"
,    MRGN_AMT    AS    "마진금액"
,    TRD_AMT    AS    "거래금액"
,    GMV_AMT    AS    "GMV금액"
,    ORD_AMT_VAT    AS    "주문금액_VAT포함"
,    CNCL_AMT_VAT    AS    "취소금액_VAT포함"
,    RTP_AMT_VAT    AS    "반품금액_VAT포함"
,    RTP_CNCL_AMT_VAT    AS    "반품취소금액_VAT포함"
,    PRCH_PRC    AS    "매입가격"
,    PRCH_VAT    AS    "매입부가세"
,    SELL_PRC    AS    "판매가격"
,    SELL_VAT    AS    "판매부가세"
,    MRGN_RATE    AS    "마진비율"
,    EXP_SWRT_APLY_DT    AS    "예상전환율적용일자"
,    EXP_SWRT    AS    "예상전환율"
,    REAL_SWRT    AS    "실전환율"
,    EXP_CTPF_RATE    AS    "예상공헌이익비율"
,    DLV_FORM_GBCD    AS    "배송형태구분코드"
,    VEN_CHRG_AMT    AS    "협력사부담금액"
,    ONLN_EXCL_ITEM_SWTC_YN    AS    "온라인전용상품전환여부"
,    SELL_PNTM_GBCD    AS    "판매시점구분코드"
,    LBRD_L_CSF_NM    AS    "생방송대분류명"
,    LBRD_M_CSF_NM    AS    "생방송중분류명"
,    FXTM_DLV_YN    AS    "정기배송여부"
,    FXTM_DLV_REQ_NO    AS    "정기배송신청번호"
,    STLM_PRM_PAY_WAY_GBCD    AS    "결제1차지불수단구분코드"
,    STLM_PRM_PAY_WAY_GB_NM    AS    "결제1차지불수단구분명"
,    STLM_PRM_FNC_ISTN_CD    AS    "결제1차금융기관코드"
,    STLM_PRM_CRDC_NM    AS    "결제1차카드사명"
,    STLM_PRM_INSM_MTHS    AS    "결제1차할부개월수"
,    STLM_PRM_WINT_YN    AS    "결제1차무이자여부"
,    STLM_PRM_WINT_CMIS    AS    "결제1차무이자수수료"
,    STLM_PRM_PAY_WAY_ADT_RATE    AS    "결제1차지불수단가중비율"
,    STLM_PRM_CRDC_CMIS_RATE    AS    "결제1차카드사수수료비율"
,    STLM_PRM_INSM_CMIS_RATE    AS    "결제1차할부수수료비율"
,    STLM_PRM_CRDC_CMIS    AS    "결제1차카드사수수료"
,    STLM_PRM_INSM_CMIS    AS    "결제1차할부수수료"
,    STLM_PRM_STLM_WAY_C_AMT    AS    "결제1차결제수단별금액"
,    STLM_PRM_SUM_CMIS    AS    "결제1차합계수수료"
,    STLM_PRM_CPAY_PATH_GBCD    AS    "결제1차현금결제경로구분코드"
,    STLM_PRM_VAN_GBCD    AS    "결제1차VAN구분코드"
,    STLM_PRM_REPY_POSS_AMT    AS    "결제1차환불가능금액"
,    STLM_PRM_HDCRD_CLCC_YN    AS    "결제1차현대카드CLCC여부"
,    STLM_STAT_GBCD    AS    "결제상태구분코드"
,    STLM_STAT_GB_NM    AS    "결제상태구분명"
,    WINT_CMIS    AS    "무이자수수료"
,    CRDC_CMIS    AS    "카드사수수료"
,    INSM_CMIS    AS    "할부수수료"
,    SUM_CMIS    AS    "합계수수료"
,    REPY_POSS_AMT    AS    "환불가능금액"
,    STLM_AMT    AS    "결제금액"
,    CMPX_STLM_YN    AS    "복합결제여부"
,    STLM_SCDR_PAY_WAY_GBCD    AS    "결제2차지불수단구분코드"
,    STLM_SCDR_PAY_WAY_GB_NM    AS    "결제2차지불수단구분명"
,    STLM_SCDR_FNC_ISTN_CD    AS    "결제2차금융기관코드"
,    STLM_SCDR_CRDC_NM    AS    "결제2차카드사명"
,    STLM_SCDR_INSM_MTHS    AS    "결제2차할부개월수"
,    STLM_SCDR_WINT_YN    AS    "결제2차무이자여부"
,    STLM_SCDR_WINT_CMIS    AS    "결제2차무이자수수료"
,    STLM_SCDR_PAY_WAY_ADT_RATE    AS    "결제2차지불수단가중비율"
,    STLM_SCDR_CRDC_CMIS_RATE    AS    "결제2차카드사수수료비율"
,    STLM_SCDR_INSM_CMIS_RATE    AS    "결제2차할부수수료비율"
,    STLM_SCDR_CRDC_CMIS    AS    "결제2차카드사수수료"
,    STLM_SCDR_INSM_CMIS    AS    "결제2차할부수수료"
,    STLM_SCDR_STLM_WAY_C_AMT    AS    "결제2차결제수단별금액"
,    STLM_SCDR_SUM_CMIS    AS    "결제2차합계수수료"
,    STLM_SCDR_CPAY_PATH_GBCD    AS    "결제2차현금결제경로구분코드"
,    STLM_SCDR_VAN_GBCD    AS    "결제2차VAN구분코드"
,    STLM_SCDR_REPY_POSS_AMT    AS    "결제2차환불가능금액"
,    STLM_SCDR_HDCRD_CLCC_YN    AS    "결제2차현대카드CLCC여부"
,    STLM_THRD_PAY_WAY_GBCD    AS    "결제3차지불수단구분코드"
,    STLM_THRD_PAY_WAY_GB_NM    AS    "결제3차지불수단구분명"
,    STLM_THRD_FNC_ISTN_CD    AS    "결제3차금융기관코드"
,    STLM_THRD_CRDC_NM    AS    "결제3차카드사명"
,    STLM_THRD_INSM_MTHS    AS    "결제3차할부개월수"
,    STLM_THRD_WINT_YN    AS    "결제3차무이자여부"
,    STLM_THRD_WINT_CMIS    AS    "결제3차무이자수수료"
,    STLM_THRD_PAY_WAY_ADT_RATE    AS    "결제3차지불수단가중비율"
,    STLM_THRD_CRDC_CMIS_RATE    AS    "결제3차카드사수수료비율"
,    STLM_THRD_INSM_CMIS_RATE    AS    "결제3차할부수수료비율"
,    STLM_THRD_CRDC_CMIS    AS    "결제3차카드사수수료"
,    STLM_THRD_INSM_CMIS    AS    "결제3차할부수수료"
,    STLM_THRD_STLM_WAY_C_AMT    AS    "결제3차결제수단별금액"
,    STLM_THRD_SUM_CMIS    AS    "결제3차합계수수료"
,    STLM_THRD_CPAY_PATH_GBCD    AS    "결제3차현금결제경로구분코드"
,    STLM_THRD_VAN_GBCD    AS    "결제3차VAN구분코드"
,    STLM_THRD_REPY_POSS_AMT    AS    "결제3차환불가능금액"
,    STLM_THRD_HDCRD_CLCC_YN    AS    "결제3차현대카드CLCC여부"
,    VEN_CNCS_RGST_ID    AS    "협력사체결등록자ID"
,    RNTL_MD_CNFM_DT    AS    "렌탈MD확정일자"
,    RNTL_MD_CNFR_ID    AS    "렌탈MD확정자ID"
,    RNTL_HNDLV_AMT    AS    "렌탈취급고금액"
,    RNTL_CNCS_QTY    AS    "렌탈체결수량"
,    INTG_ITEM_ARLT_AMT    AS    "무형상품실적금액"
,    ARS_DC_AMT_VAT    AS    "ARS할인금액_VAT포함"
,    SPYM_DC_AMT_VAT    AS    "일시불할인금액_VAT포함"
,    COPN_DC_AMT_VAT    AS    "쿠폰할인금액_VAT포함"
,    EMP_DC_AMT_VAT    AS    "직원할인금액_VAT포함"
,    ETC_DC_AMT_VAT    AS    "기타할인금액_VAT포함"
,    B2E_DC_AMT_VAT    AS    "B2E할인금액_VAT포함"
,    CRD_PRMO_DC_AMT_VAT    AS    "카드프로모션할인금액_VAT포함"
,    SVMT_PRDC_AMT_VAT    AS    "적립금선할인금액_VAT포함"
,    TCOMM_DC_AMT_VAT    AS    "T커머스할인금액_VAT포함"
,    SPDC_AMT_VAT    AS    "깜짝할인금액_VAT포함"
,    PRMO_DC_AMT_VAT    AS    "프로모션할인금액_VAT포함"
,    SOON_USE_COPN_DC_AMT_VAT    AS    "바로사용쿠폰할인금액_VAT포함"
,    MASS_BUY_DC_AMT_VAT    AS    "대량구매할인금액_VAT포함"
,    FRGN_DLVC_AMT_VAT    AS    "해외배송비금액_VAT포함"
,    RTP_DSRV_COST_VAT    AS    "반품택배비용_VAT포함"
,    IRGN_MNTR_DLVC_AMT_VAT    AS    "도서산간배송비금액_VAT포함"
,    GIFT_DC_AMT_VAT    AS    "사은품할인금액_VAT포함"
,    AFCR_DC_AMT_VAT    AS    "제휴사할인금액_VAT포함"
,    NCHG_DLV_COPN_DC_AMT_VAT    AS    "무료배송쿠폰할인금액_VAT포함"
,    ADD_DLVC_AMT_VAT    AS    "추가배송비금액_VAT포함"
,    EXCH_DSRV_COST_VAT    AS    "교환택배비용_VAT포함"
,    MXPK_GIFT_AMT_VAT    AS    "합포장사은품금액_VAT포함"
,    ARS_DC_APLY_RATE    AS    "ARS할인적용비율"
,    SPYM_DC_APLY_RATE    AS    "일시불할인적용비율"
,    COPN_DC_APLY_RATE    AS    "쿠폰할인적용비율"
,    EMP_DC_RATE    AS    "직원할인비율"
,    ETC_DC_RATE    AS    "기타할인비율"
,    B2E_DC_APLY_RATE    AS    "B2E할인적용비율"
,    CRD_PRMO_DC_RATE    AS    "카드프로모션할인비율"
,    SVMT_PRDC_RATE    AS    "적립금선할인비율"
,    TCOMM_DC_RATE    AS    "T커머스할인비율"
,    SPDC_RATE    AS    "깜짝할인비율"
,    PRMO_DC_RATE    AS    "프로모션할인비율"
,    SOON_USE_COPN_DC_RATE    AS    "바로사용쿠폰할인비율"
,    MASS_BUY_DC_RATE    AS    "대량구매할인비율"
,    DLVC_RATE    AS    "배송비비율"
,    FRGN_DLVC_RATE    AS    "해외배송비비율"
,    RTP_DSRV_COST_RATE    AS    "반품택배비용비율"
,    IRGN_MNTR_DLVC_RATE    AS    "도서산간배송비비율"
,    GIFT_DC_RATE    AS    "사은품할인비율"
,    AFCR_DC_RATE    AS    "제휴사할인비율"
,    NCHG_DLV_COPN_DC_RATE    AS    "무료배송쿠폰할인비율"
,    ADD_DLVC_RATE    AS    "추가배송비비율"
,    EXCH_DSRV_COST_RATE    AS    "교환택배비용비율"
,    MXPK_GIFT_RATE    AS    "합포장사은품비율"
,    STLM_WAY_DC_RATE    AS    "결제수단할인비율"
,    STLM_AMT_DC_COPN_RATE    AS    "결제금액할인쿠폰비율"
,    CRD_IMDC_RATE    AS    "카드즉시할인비율"
,    DVLB_POSS_DC_AMT    AS    "분담가능할인금액"
,    SALE_PRFT_CRD_IMDC_INCL    AS    "매출총이익_카드즉시할인포함"
,    ARS_DC_AMT    AS    "ARS할인금액"
,    SPYM_DC_AMT    AS    "일시불할인금액"
,    COPN_DC_AMT    AS    "쿠폰할인금액"
,    EMP_DC_AMT    AS    "직원할인금액"
,    ETC_DC_AMT    AS    "기타할인금액"
,    B2E_DC_AMT    AS    "B2E할인금액"
,    CRD_PRMO_DC_AMT    AS    "카드프로모션할인금액"
,    SVMT_PRDC_AMT    AS    "적립금선할인금액"
,    TCOMM_DC_AMT    AS    "T커머스할인금액"
,    SPDC_AMT    AS    "깜짝할인금액"
,    PRMO_DC_AMT    AS    "프로모션할인금액"
,    SOON_USE_COPN_DC_AMT    AS    "바로사용쿠폰할인금액"
,    MASS_BUY_DC_AMT    AS    "대량구매할인금액"
,    DLV_DC_COST    AS    "배송할인비용"
,    FRGN_DLVC_AMT    AS    "해외배송비금액"
,    RTP_DSRV_COST    AS    "반품택배비용"
,    IRGN_MNTR_DLVC_AMT    AS    "도서산간배송비금액"
,    GIFT_DC_AMT    AS    "사은품할인금액"
,    AFCR_DC_AMT    AS    "제휴사할인금액"
,    NCHG_DLV_COPN_DC_AMT    AS    "무료배송쿠폰할인금액"
,    ADD_DLVC_AMT    AS    "추가배송비금액"
,    EXCH_DSRV_COST    AS    "교환택배비용"
,    MXPK_GIFT_AMT    AS    "합포장사은품금액"
,    VEN_DVLB_AMT    AS    "협력사분담금액"
,    STLM_WAY_DC_AMT    AS    "결제수단할인금액"
,    STLM_AMT_DC_COPN_AMT    AS    "결제금액할인쿠폰금액"
,    CRD_IMDC_AMT    AS    "카드즉시할인금액"
,    REAL_SALE_AMT    AS    "실매출금액"
,    RORD_AMT    AS    "순주문금액"
,    ORD_AMT    AS    "주문금액"
,    CNCL_AMT    AS    "취소금액"
,    RTP_AMT    AS    "반품금액"
,    RTP_CNCL_AMT    AS    "반품취소금액"
,    EXCH_AMT    AS    "교환금액"
,    SALE_PRFT_AMT    AS    "매출이익금액"
,    VACO_AMT    AS    "변동비금액"
,    CTPF_AMT    AS    "공헌이익금액"
,    FRPHSE_COST    AS    "수신자부담전화비용"
,    CRD_FRCS_CMIS    AS    "카드가맹점수수료"
,    WINT_INSM_CMIS    AS    "무이자할부수수료"
,    CMS_CMIS    AS    "CMS수수료"
,    GC_CMIS    AS    "상품권수수료"
,    AFCR_SELL_CMIS    AS    "제휴사판매수수료"
,    DLV_COST    AS    "배송비용"
,    PACK_COST    AS    "포장비용"
,    CALL_LACO    AS    "콜인건비"
,    PHDS_LACO    AS    "물류인건비"
,    MD_GRNT_HPNT    AS    "MD부여H포인트"
,    PRMP_OWCO_DVLB_COST    AS    "경품자사분담비용"
,    BRCM    AS    "브랜드수수료"
,    JWL_JGMT_COST    AS    "보석감정비용"
,    CRD_DMND_DC_AMT    AS    "카드청구할인금액"
,    SPYM_DC_VEN_DVLB_AMT    AS    "일시불할인협력사분담금액"
,    SMS_SEND_COST    AS    "SMS전송비용"
,    ARS_DC_VEN_CHRG_AMT    AS    "ARS할인협력사부담금액"
,    PER_CO_SVMT    AS    "당사적립금액"
,    PGM_FRCS_CMIS    AS    "PGM가맹점수수료"
,    PGM_WINT_INSM_CMIS    AS    "PGM무이자할부수수료"
,    PGM_GIFT_COST    AS    "PGM사은품비용"
,    BROD_MD_GRNT_HPNT    AS    "방송MD부여H포인트"
,    BROD_RWD_HPNT    AS    "방송리워드H포인트"
,    INTG_ITEM_SALE_PRFT_AMT    AS    "무형상품매출이익금액"
,    INTG_ITEM_SALE_PRFT_QTY    AS    "무형상품매출이익수량"
,    INTG_ITEM_SALE_PRFT_DC_AMT    AS    "무형상품매출이익할인금액"
,    DPRCH_LOSS_AMT    AS    "직매입손실금액"
,    BASE_ACM_HPNT    AS    "기본적립H포인트"
,    RNTL_FXRT_CMIS    AS    "렌탈정률수수료"
,    KAKAO_ORD_CMIS    AS    "카카오주문수수료"
,    PGM_CMPS_ITEM_GIFT_GBCD    AS    "PGM구성상품사은품구분코드"
,    PGM_PRMO_GIFT_OFFR_QTY    AS    "PGM프로모션사은품제공수량"
,    PGM_CMS_STLM_CNT    AS    "PGMCMS결제건수"
,    ITEM_EVAL_GIFT_COST    AS    "상품평가사은품비용"
,    ITEM_EVAL_GIFT_DLV_COST    AS    "상품평가사은품배송비용"
,    ITEM_EVAL_GIFT_PHDS_LACO    AS    "상품평가사은품물류인건비"
,    AFF_VACO_AMT    AS    "사후변동비금액"
,    SPDC_DVLB_AMT    AS    "깜짝할인분담금액"
,    SOON_USE_COPN_VEN_DVLB_AMT    AS    "바로사용쿠폰협력사분담금액"
,    RWD_HPNT    AS    "리워드H포인트"
,    IMDC_CRDC_DVLB_AMT    AS    "즉시할인카드사분담금액"
,    WINT_INSM_CMIS_VEN_DVLB_AMT    AS    "무이자할부수수료협력사분담금액"
,    GIFT_COST    AS    "사은품비용"
,    GIFT_PRMP_COST    AS    "사은품경품비용"
,    VACO_SMRY_AMT    AS    "변동비요약금액"
,    CMIS_EXCLD_VACO_AMT    AS    "수수료제외변동비금액"
,    CRD_IMDC_INCL_VACO_AMT    AS    "카드즉시할인포함변동비금액"
,    CRD_DC_AMT    AS    "카드할인금액"
,    CRD_IMDC_OWCO_DVLB_AMT    AS    "카드즉시할인자사분담금액"
,    TOT_RWD_AMT    AS    "전체리워드금액"
,    TOT_DC_VEN_DVLB_AMT    AS    "전체할인협력사분담금액"
,    ALML_ORD_NO    AS    "제휴몰주문번호"
,    ALML_CD    AS    "제휴몰코드"
,    ALML_NM    AS    "제휴몰명"
,    ALML_ITEM_CD    AS    "제휴몰상품코드"
,    ALML_ITEM_NM    AS    "제휴몰상품명"
,    ALML_TOT_DC_AMT    AS    "제휴몰전체할인금액"
,    ALML_DC_AMT    AS    "제휴몰할인금액"
,    ALML_ORD_DTM    AS    "제휴몰주문일시"
,    ALML_SELL_GBCD    AS    "제휴몰판매구분코드"
,    ALML_SELL_GB_NM    AS    "제휴몰판매구분명"
,    WDAY_NM    AS    "요일명"
,    HLDY_YN    AS    "휴일여부"
,    MM_BSIC_WKNO    AS    "월기준주차"
,    MM_BSIC_WKNO_NM    AS    "월기준주차명"
,    Y2001_BSIC_WKNO    AS    "2001년기준주차"
,    REMP_EMNO    AS    "추천인사번"
,    REMP_NM    AS    "추천인명"
,    DSTN_TYPE_GBCD   AS "배송지유형구분코드"
,    DSTN_TYPE_GB_NM   AS "배송지유형구분명"
,    ITEM_L_CSF_NM   AS  "상품대분류명"
,    ITEM_M_CSF_NM   AS  "상품중분류명"
,    ITEM_S_CSF_NM   AS  "상품소분류명"
,    ITEM_D_CSF_NM   AS  "상품세분류명"
,    ITEM_L_CSF_CD   AS  "상품대분류코드"
,    ITEM_M_CSF_CD   AS  "상품중분류코드"
,    ITEM_S_CSF_CD   AS  "상품소분류코드"
,    ITEM_D_CSF_CD   AS  "상품세분류코드"
,    RGST_ID    AS    "등록자ID"
,    ETL_DTM    AS    "ETL일시"
FROM DW_PB.POD_ORD_ANAL_DLU_FCT;