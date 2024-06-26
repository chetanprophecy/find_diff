DROP TABLE ${STAGING_SCHEMA}.l_cdur_edit_type_u;

CREATE TABLE ${STAGING_SCHEMA}.l_cdur_edit_type_u
( edit_type_sk                     BIGINT NOT NULL
, edit_type_cd                     VARCHAR(8) NOT NULL
, edit_type_desc                   VARCHAR(50)
, src_env_sk                       BIGINT NOT NULL
, insert_ts                        TIMESTAMP NOT NULL
, update_ts                        TIMESTAMP NOT NULL
, insert_uid                       VARCHAR(20)
, update_uid                       VARCHAR(20)
, run_id                           BIGINT
, rec_stat_cd                      BYTEINT
);

