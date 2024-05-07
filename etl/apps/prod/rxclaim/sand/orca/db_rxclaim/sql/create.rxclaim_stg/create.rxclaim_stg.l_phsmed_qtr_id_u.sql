DROP TABLE ${STAGING_SCHEMA}.l_phsmed_qtr_id_u;

CREATE TABLE ${STAGING_SCHEMA}.l_phsmed_qtr_id_u
( starting_quarter_id              INTEGER
, ending_quarter_id                INTEGER
, src_env_sk                       BIGINT NOT NULL
, insert_ts                        TIMESTAMP NOT NULL
, update_ts                        TIMESTAMP NOT NULL
, insert_uid                       VARCHAR(20)
, update_uid                       VARCHAR(20)
, run_id                           BIGINT
, rec_stat_cd                      BYTEINT
);
