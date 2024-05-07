DROP TABLE ${STAGING_SCHEMA}.d_plan_benfit_deductible_history_i;

CREATE TABLE ${STAGING_SCHEMA}.d_plan_benfit_deductible_history_i
( plan_benfit_ded_hist_sk          BIGINT
, pln_sk                           BIGINT
, pln_cd                           VARCHAR(10)
, pln_eff_dt                       DATE
, pln_eff_dt_sk                    BIGINT
, ben_ded_flg                      CHAR(1)
, multi_src_ind                    CHAR(1)
, pbd_seq_nbr                      INTEGER
, ben_ded_status                   CHAR(1)
, ben_ded_eff_dt                   DATE
, ben_ded_thru_dt                  DATE
, ben_ded_accum_lvl                CHAR(1)
, ben_ded_mtch_dgt_nbr             SMALLINT
, ben_ded_accum_cd                 VARCHAR(10)
, ben_ded_accum_cd_list            VARCHAR(10)
, ben_ded_sched                    VARCHAR(10)
, sub_period_type_cd               CHAR(1)
, sub_period_carry_over_flg        CHAR(1)
, qtr_4_carry_over_flg             CHAR(1)
, msc_e_i_for_y_cd                 CHAR(1)
, msc_e_i_for_o_cd                 CHAR(1)
, msc_e_i_for_m_cd                 CHAR(1)
, msc_e_i_for_n_cd                 CHAR(1)
, msc_e_i_for_x_cd                 CHAR(1)
, msc_e_i_for_z_cd                 CHAR(1)
, src_genric_ind                   CHAR(1)
, respn_accum_cd                   CHAR(1)
, adj_rsn_cd_list                  VARCHAR(10)
, adj_rsn_cd_list_status           CHAR(1)
, qtr_4_adj_rsn_cd_list            VARCHAR(10)
, qtr_4_adj_rsn_cd_list_status     CHAR(1)
, accum_prod_wildcard              VARCHAR(2)
, accum_prod_type                  CHAR(1)
, group_sched_id                   VARCHAR(10)
, accum_ovrd_sched                 VARCHAR(15)
, mbr_adjd_accum_cd                CHAR(1)
, excld_tier_fld_1                 VARCHAR(2)
, excld_tier_fld_2                 VARCHAR(2)
, excld_tier_fld_3                 VARCHAR(2)
, excld_tier_fld_4                 VARCHAR(2)
, excld_tier_fld_5                 VARCHAR(2)
, excld_tier_fld_6                 VARCHAR(2)
, excld_tier_fld_7                 VARCHAR(2)
, excld_tier_fld_8                 VARCHAR(2)
, excld_tier_fld_9                 VARCHAR(2)
, excld_tier_fld_10                VARCHAR(2)
, excld_tier_fld_11                VARCHAR(2)
, excld_tier_fld_12                VARCHAR(2)
, excld_tier_fld_13                VARCHAR(2)
, excld_tier_fld_14                VARCHAR(2)
, excld_tier_fld_15                VARCHAR(2)
, excld_tier_fld_16                VARCHAR(2)
, excld_tier_fld_17                VARCHAR(2)
, excld_tier_fld_18                VARCHAR(2)
, excld_tier_fld_19                VARCHAR(2)
, excld_tier_fld_20                VARCHAR(2)
, excld_tier_fld_qual_1            CHAR(1)
, excld_tier_fld_qual_2            CHAR(1)
, excld_tier_fld_qual_3            CHAR(1)
, excld_tier_fld_qual_4            CHAR(1)
, excld_tier_fld_qual_5            CHAR(1)
, excld_tier_fld_qual_6            CHAR(1)
, excld_tier_fld_qual_7            CHAR(1)
, excld_tier_fld_qual_8            CHAR(1)
, excld_tier_fld_qual_9            CHAR(1)
, excld_tier_fld_qual_10           CHAR(1)
, excld_tier_fld_qual_11           CHAR(1)
, excld_tier_fld_qual_12           CHAR(1)
, excld_tier_fld_qual_13           CHAR(1)
, excld_tier_fld_qual_14           CHAR(1)
, excld_tier_fld_qual_15           CHAR(1)
, excld_tier_fld_qual_16           CHAR(1)
, excld_tier_fld_qual_17           CHAR(1)
, excld_tier_fld_qual_18           CHAR(1)
, excld_tier_fld_qual_19           CHAR(1)
, excld_tier_fld_qual_20           CHAR(1)
, src_env_sk                       BIGINT NOT NULL
, insert_ts                        TIMESTAMP NOT NULL
, update_ts                        TIMESTAMP NOT NULL
, insert_uid                       VARCHAR(20)
, update_uid                       VARCHAR(20)
, run_id                           BIGINT
, rec_stat_cd                      BYTEINT
)
DISTRIBUTE ON (PLAN_BENFIT_DED_HIST_SK);
