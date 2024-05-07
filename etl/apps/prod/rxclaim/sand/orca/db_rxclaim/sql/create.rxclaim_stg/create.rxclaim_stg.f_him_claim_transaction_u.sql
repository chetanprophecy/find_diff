DROP TABLE ${STAGING_SCHEMA}.f_him_claim_transaction_u;

CREATE TABLE ${STAGING_SCHEMA}.f_him_claim_transaction_u
( claim_nbr                        BIGINT
, claim_seq_nbr                    INTEGER
, claim_stat_id                    CHAR(1)
, rec_seq_nbr                      INTEGER
, carrier_sk                       BIGINT
, carrier_acct_sk                  BIGINT
, cag_sk                           BIGINT
, mbr_sk                           BIGINT
, sbm_dt_sk                        BIGINT
, phr_sk                           BIGINT
, prod_sk                          BIGINT
, ntwk_sk                          BIGINT
, pbr_sk                           BIGINT
, final_pln_sk                     BIGINT
, cob_ind_sk                       BIGINT
, gpi_sk                           BIGINT
, gnrc_mdspn_ind_sk                BIGINT
, claim_stat_sk                    BIGINT
, days_of_supply_sk                BIGINT
, reprcs_claim_seq_nbr             INTEGER
, submd_claim_dttm                 TIMESTAMP
, grp_pln_cd                       VARCHAR(10)
, grp_pln_eff_dt                   DATE
, sbm_srvc_dt                      DATE
, qhp_id                           VARCHAR(14)
, issuer_id                        VARCHAR(5)
, st_cd_sk                         BIGINT
, prod_nbr                         VARCHAR(3)
, std_compnt                       VARCHAR(14)
, him_seq_nbr                      INTEGER
, him_eff_dt                       DATE
, him_thru_dt                      DATE
, him_stat_cd                      VARCHAR(14)
, csr_lvl                          VARCHAR(2)
, pln_metal_ind                    VARCHAR(1)
, aptc_ind                         VARCHAR(1)
, ethnicity                        VARCHAR(2)
, grace_perd_ind                   VARCHAR(2)
, grace_perd_start_dt              DATE
, grace_perd_end_dt                DATE
, probation_perd_days_no           INTEGER
, after_probn_perd_ind             VARCHAR(1)
, msg_cd                           VARCHAR(10)
, msg_type_cd                      VARCHAR(1)
, mbr_alcohol_cd                   VARCHAR(1)
, mbr_smoking_cd                   VARCHAR(1)
, mbr_pregnant_cd                  VARCHAR(1)
, void_replace_ind                 VARCHAR(1)
, subsidy_amt                      DECIMAL(9,2)
, tcd_rbl_ingrd_cost_amt           DECIMAL(9,2)
, tcd_rbl_dispensing_fee           DECIMAL(9,2)
, tcd_rbl_pct_sls_tax_amt          DECIMAL(9,2)
, tcd_rbl_flat_sls_tax_amt         DECIMAL(9,2)
, tcd_rbl_patient_pay_amt          DECIMAL(9,2)
, tcd_rbl_total_amt                DECIMAL(9,2)
, tcd_app_ingrd_cost_amt           DECIMAL(9,2)
, tcd_app_dispensing_fee           DECIMAL(9,2)
, tcd_app_pct_sls_tax_amt          DECIMAL(9,2)
, tcd_app_flat_sls_tax_amt         DECIMAL(9,2)
, tcd_app_patient_pay_amt          DECIMAL(9,2)
, tcd_app_total_amt                DECIMAL(9,2)
, prod_key                         INTEGER
, prod_id                          VARCHAR(20)
, gpi_id                           VARCHAR(14)
, sbm_disp_qty                     DECIMAL(11,3)
, sbm_days_supply_no               INTEGER
, sbm_rx_nbr                       VARCHAR(12)
, sbm_fill_nbr                     VARCHAR(2)
, sbm_disp_stat_cd                 VARCHAR(1)
, sbm_compound_cd                  VARCHAR(1)
, cob_claim_ind                    VARCHAR(2)
, cob_price_type_cd                VARCHAR(2)
, clm_origin_flg                   VARCHAR(1)
, generic_ind                      VARCHAR(1)
, network_id                       VARCHAR(6)
, srv_prov_id_qlfr_cd              VARCHAR(2)
, srv_prov_id                      VARCHAR(15)
, pbr_id_qlfr_cd                   VARCHAR(2)
, pbr_id                           VARCHAR(15)
, sbm_oth_covrg_cd                 VARCHAR(2)
, pdt_oth_pyr_recog_amt            DECIMAL(9,2)
, fnl_pln_cd                       VARCHAR(10)
, fnl_pln_eff_dt                   DATE
, orig_clm_rcvd_dt                 DATE
, prior_auth_rsn_cd                VARCHAR(2)
, prior_auth_nbr                   VARCHAR(11)
, patient_rssidence_cd             VARCHAR(2)
, sbm_place_of_svc_cd              VARCHAR(2)
, contng_thrpy_flag                VARCHAR(1)
, contng_thrpy_sched_id            VARCHAR(20)
, pdh_app_appl_per_ded_amt         DECIMAL(9,2)
, pdh_app_attrb_proc_fee_amt       DECIMAL(9,2)
, pdh_app_attrb_sls_tax_amt        DECIMAL(9,2)
, pdh_app_attrb_prod_sel_amt       DECIMAL(9,2)
, pdh_app_copay_amt                DECIMAL(9,2)
, pdh_app_copay_flat_amt           DECIMAL(9,2)
, pdh_app_copay_pct_amt            DECIMAL(9,2)
, pdh_app_dispensing_fee           DECIMAL(9,2)
, pdh_app_due_amt                  DECIMAL(9,2)
, pdh_app_exc_per_bft_amt          DECIMAL(9,2)
, pdh_app_flat_sls_tax_amt         DECIMAL(9,2)
, pdh_app_pct_sls_tax_amt          DECIMAL(9,2)
, pdh_app_incentive_amt            DECIMAL(9,2)
, pdh_app_ingrd_cost_amt           DECIMAL(9,2)
, pdh_app_oth_pyr_recog_amt        DECIMAL(9,2)
, pdh_app_patient_pay_amt          DECIMAL(9,2)
, pdh_app_tot_oth_amt              DECIMAL(9,2)
, pdh_app_withhold_amt             DECIMAL(9,2)
, pdh_app_attrb_ntwk_sel_amt       DECIMAL(9,2)
, pdh_app_pln_fnd_asst_amt         DECIMAL(9,2)
, pdh_cal_pct_sls_tax_amt          DECIMAL(9,2)
, pdh_cal_appl_per_ded_amt         DECIMAL(9,2)
, pdh_cal_attrb_proc_fee_amt       DECIMAL(9,2)
, pdh_cal_attrb_sls_tax_amt        DECIMAL(9,2)
, pdh_cal_attrb_prod_sel_amt       DECIMAL(9,2)
, pdh_cal_copay_amt                DECIMAL(9,2)
, pdh_cal_copay_flat_amt           DECIMAL(9,2)
, pdh_cal_copay_pct_amt            DECIMAL(9,2)
, pdh_cal_dispensing_fee           DECIMAL(9,2)
, pdh_cal_exc_per_bft_amt          DECIMAL(9,2)
, pdh_cal_flat_sls_tax_amt         DECIMAL(9,2)
, pdh_cal_incentive_amt            DECIMAL(9,2)
, pdh_cal_ingrd_cost_amt           DECIMAL(9,2)
, pdh_cal_oth_pyr_recog_amt        DECIMAL(9,2)
, pdh_cal_patient_pay_amt          DECIMAL(9,2)
, pdh_cal_total_amt                DECIMAL(9,2)
, pdh_cal_tot_oth_amt              DECIMAL(9,2)
, pdh_cal_withhold_amt             DECIMAL(9,2)
, pdh_cal_attrb_ntwk_sel_amt       DECIMAL(9,2)
, pdh_cal_pln_fnd_asst_amt         DECIMAL(9,2)
, pdh_rbl_pct_sls_tax_amt          DECIMAL(9,2)
, pdh_rbl_appl_per_ded_amt         DECIMAL(9,2)
, pdh_rbl_attrb_proc_fee_amt       DECIMAL(9,2)
, pdh_rbl_attrb_sls_tax_amt        DECIMAL(9,2)
, pdh_rbl_attrb_prod_sel_amt       DECIMAL(9,2)
, pdh_rbl_copay_amt                DECIMAL(9,2)
, pdh_rbl_copay_flat_amt           DECIMAL(9,2)
, pdh_rbl_copay_pct_amt            DECIMAL(9,2)
, pdh_rbl_dispensing_fee           DECIMAL(9,2)
, pdh_rbl_due_amt                  DECIMAL(9,2)
, pdh_rbl_exc_per_bft_amt          DECIMAL(9,2)
, pdh_rbl_flat_sls_tax_amt         DECIMAL(9,2)
, pdh_rbl_incentive_amt            DECIMAL(9,2)
, pdh_rbl_ingrd_cost_amt           DECIMAL(9,2)
, pdh_rbl_oth_pyr_recog_amt        DECIMAL(9,2)
, pdh_rbl_patient_pay_amt          DECIMAL(9,2)
, pdh_rbl_tot_oth_amt              DECIMAL(9,2)
, pdh_rbl_withhold_amt             DECIMAL(9,2)
, pdh_rbl_attrb_ntwk_sel_amt       DECIMAL(9,2)
, pdh_rbl_pln_fnd_asst_amt         DECIMAL(9,2)
, reprocess_dttm                   TIMESTAMP
, src_env_sk                       BIGINT NOT NULL
, insert_ts                        TIMESTAMP NOT NULL
, update_ts                        TIMESTAMP NOT NULL
, insert_uid                       VARCHAR(20)
, update_uid                       VARCHAR(20)
, run_id                           BIGINT
, rec_stat_cd                      BYTEINT
);

