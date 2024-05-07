DROP TABLE ${STAGING_SCHEMA}.D_PLAN_FRMLRY_PGM_NDC_LIST_I;

CREATE TABLE ${STAGING_SCHEMA}.D_PLAN_FRMLRY_PGM_NDC_LIST_I
(
	PLN_FRMLRY_PGM_NDC_LIST_SK BIGINT NOT NULL,
	PLN_SK BIGINT NOT NULL,
	PLN_CD CHARACTER VARYING(10) NOT NULL,
	PLN_EFF_DT DATE NOT NULL,
	FPN_NDC_LIST_NM CHARACTER VARYING(10),
	FPN_SEQ_NBR INTEGER,
	FPN_FROM_DT DATE,
	FPN_THRU_DT DATE,
	FPN_LIST_TYPE CHARACTER(1),
	FPN_STS CHARACTER(1),
	FPN_SEQ_SRCH INTEGER,
	FPN_LVL CHARACTER(1),
	FPN_MSG_CD CHARACTER VARYING(10),
	FPN_MSG_TYPE CHARACTER VARYING(1),
	FPN_IFR_FILL_LMT INTEGER,
	FPN_IFR_EFF_QLFR CHARACTER(1),
	FPN_IFR_FROM_DT DATE,
	FPN_IFR_MAX_DAYS_SPPLY INTEGER,
	FPN_PFR_DT_SRC CHARACTER(1),
	FPN_PFR_SRC_FROM_DT DATE,
	FPN_PFR_FILLS_TYPE CHARACTER(1),
	FPN_PFR_FILLS_DAYS INTEGER,
	FPN_PFR_FILLS_MAX INTEGER,
	FPN_DISCNT_TBL_ID CHARACTER VARYING(10),
	FPN_PHR_PAT_PAY CHARACTER VARYING(10),
	FPN_CLT_PAT_PAY CHARACTER VARYING(10),
	FPN_PHR_NW_ID CHARACTER VARYING(6),
	FPN_PHN_SEQ_NBR INTEGER,
	FPN_PHR_NW_IE CHARACTER(1),
	FPN_SUPER_NW_ID CHARACTER VARYING(6),
	FPN_SNH_SEQ_NBR INTEGER,
	FPN_SUPER_NW_IE CHARACTER(1),
	SRC_ENV_SK BIGINT NOT NULL,
	INSERT_TS TIMESTAMP NOT NULL,
	UPDATE_TS TIMESTAMP NOT NULL,
	INSERT_UID CHARACTER VARYING(20),
	UPDATE_UID CHARACTER VARYING(20),
	RUN_ID BIGINT,
	REC_STAT_CD BYTEINT
)
DISTRIBUTE ON (PLN_SK);
