DROP TABLE ${STAGING_SCHEMA}.D_PLAN_PREF_FRMLRY_NDC_LIST_U;

CREATE TABLE ${STAGING_SCHEMA}.D_PLAN_PREF_FRMLRY_NDC_LIST_U
(
        PLN_PREF_FRMLRY_NDC_LIST_SK BIGINT NOT NULL
,       PLN_SK BIGINT NOT NULL
,       PLN_CD CHARACTER VARYING(10) NOT NULL
,       PLN_EFF_DT DATE NOT NULL
,       PFN_NDC_LIST_NM CHARACTER VARYING(10)
,       PFN_SEQ_NBR INTEGER
,       PFN_MSG_CD CHARACTER VARYING(10)
,       PFN_FROM_DT DATE
,       PFN_THRU_DT DATE
,       PFN_STS CHARACTER(1)
,       PFN_SEQ_SRCH INTEGER
,       PFN_CMP_CRTR CHARACTER(1)
,       PFN_PLN_DFLT_LIST CHARACTER VARYING(10)
,       SRC_ENV_SK BIGINT NOT NULL
,       INSERT_TS TIMESTAMP NOT NULL
,       UPDATE_TS TIMESTAMP NOT NULL
,       INSERT_UID CHARACTER VARYING(20)
,       UPDATE_UID CHARACTER VARYING(20)
,       RUN_ID BIGINT
,       REC_STAT_CD BYTEINT
)
DISTRIBUTE ON (PLN_SK);