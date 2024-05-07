DROP TABLE ${STAGING_SCHEMA}.f_mpd_claim_trx_hist_mm_hist_i;

CREATE TABLE ${STAGING_SCHEMA}.f_mpd_claim_trx_hist_mm_hist_i
( claim_nbr                        BIGINT
, claim_seq_nbr                    INTEGER
, claim_stat_id                    CHAR(1)
, ex7_rec_seq_nbr                  INTEGER
, claim_stat_sk                    BIGINT
, sbm_dt_sk                        BIGINT
, carrier_sk                       BIGINT
, carrier_acct_sk                  BIGINT
, cag_sk                           BIGINT
, mbr_sk                           BIGINT
, final_pln_sk                     BIGINT
, phr_sk                           BIGINT
, ntwk_sk                          BIGINT
, pbr_sk                           BIGINT
, gpi_sk                           BIGINT
, prod_sk                          BIGINT
, compound_sk                      BIGINT
, gnrc_ind_sk                      BIGINT
, days_of_supply_sk                BIGINT
, filled_dt_sk                     BIGINT
, contract_pbp_sk                  BIGINT
, residence_cd_sk                  BIGINT
, claim_origination_code_sk        BIGINT
, begin_benefit_phase_sk           BIGINT
, end_benefit_phase_sk             BIGINT
, rx_origin_cd_sk                  BIGINT
, rej_reason1                      VARCHAR(5)
, rej_reason2                      VARCHAR(5)
, rej_reason3                      VARCHAR(5)
, tc4_carrier_id                   VARCHAR(30)
, tc4_account_id                   VARCHAR(40)
, tc4_employer_group_id            VARCHAR(30)
, tc4_plan_cd                      VARCHAR(10)
, tc4_plan_eff_dt                  DATE
, claim_cntr                       SMALLINT
, sbm_dt                           DATE
, subm_yr                          INTEGER
, subm_mnth                        INTEGER
, subm_yr_mnth                     INTEGER
, subm_qtr                         VARCHAR(8)
, filled_dt                        DATE
, filled_yr_mnth                   INTEGER
, filled_qtr                       VARCHAR(8)
, refill_nbr                       VARCHAR(2)
, days_sply                        SMALLINT
, drg_qty                          DECIMAL(11,3)
, rx_nbr                           VARCHAR(12)
, sbm_srv_dt                       DATE
, prod_key                         BIGINT
, prod_id                          VARCHAR(20)
, compound_cd                      VARCHAR(1)
, prod_sel_cd                      VARCHAR(2)
, cob_ind                          VARCHAR(2)
, dmr_ind                          VARCHAR(1)
, qual_serv_prov_id                VARCHAR(2)
, subm_oth_covrg_cd                VARCHAR(2)
, subm_clfctn_cd                   VARCHAR(4)
, tc3_srv_prov_id_qlfr_cd          VARCHAR(2)
, tc3_srv_prov_id                  VARCHAR(15)
, tc3_rx_origin_cd                 VARCHAR(1)
, tc3_phr_svc_type_cd              VARCHAR(2)
, contract_id                      VARCHAR(5)
, plan_benefit_pkg_cd              VARCHAR(3)
, troop_sched_id                   VARCHAR(10)
, drg_cov_stat_sched_id            VARCHAR(10)
, drg_cov_stat_cd                  VARCHAR(1)
, brand_generic_cd                 VARCHAR(1)
, accum_basis_cd                   VARCHAR(1)
, pdp_seq_no                       INTEGER
, cpp_amt                          DECIMAL(9,2)
, prior_troop_amt                  DECIMAL(9,2)
, lics_drg_spnd_ded_bal_amt        DECIMAL(11,2)
, lics_drg_spnd_ded_amt            DECIMAL(11,2)
, client_patient_pay_amt           DECIMAL(9,2)
, tot_drg_cst_acc_gross_amt        DECIMAL(9,2)
, true_oop_accum_amt               DECIMAL(9,2)
, true_disc_elig_amt               DECIMAL(11,2)
, gap_brnd_disc_amt                DECIMAL(9,2)
, egwp_ded_mbr_pay_amt             DECIMAL(11,2)
, egwp_ded_drg_spnd_amt            DECIMAL(11,2)
, egwp_cg_mbr_pay_amt              DECIMAL(11,2)
, egwp_cg_drg_spnd_amt             DECIMAL(11,2)
, egwp_cat_mbr_pay_amt             DECIMAL(11,2)
, egwp_cat_drg_spnd_amt            DECIMAL(11,2)
, egwp_icl_mbr_pay_amt             DECIMAL(11,2)
, egwp_icl_drg_spnd_amt            DECIMAL(11,2)
, dual_amt                         DECIMAL(9,2)
, moop_mbr_pay_amt                 DECIMAL(11,2)
, moop_drg_spnd_amt                DECIMAL(11,2)
, phr_ingred_cost_paid             DECIMAL(9,2)
, phr_dispensing_fee               DECIMAL(9,2)
, phr_sales_tax_paid               DECIMAL(9,2)
, phr_patient_pay_amt              DECIMAL(9,2)
, phr_due_amt                      DECIMAL(9,2)
, clt_ingred_cost_paid             DECIMAL(9,2)
, clt_dispensing_fee               DECIMAL(9,2)
, clt_sales_tax_paid               DECIMAL(9,2)
, clt_patient_pay_amt              DECIMAL(9,2)
, clt_due_amt                      DECIMAL(9,2)
, cat_cov_cd                       VARCHAR(1)
, plan_troop_sched_id              VARCHAR(10)
, lics_troop_sched_id              VARCHAR(10)
, lics_sched_step_no               SMALLINT
, lics_troop_nbr_steps_no          SMALLINT
, lics_amt                         DECIMAL(9,2)
, ded_lvl_drg_spnd_amt             DECIMAL(9,2)
, amt_twd_plan_ded_amt             DECIMAL(9,2)
, ded_lvl_troop_amt                DECIMAL(9,2)
, plan_gap_amt                     DECIMAL(9,2)
, amt_twd_plan_gap_amt             DECIMAL(9,2)
, plan_cat_amt                     DECIMAL(9,2)
, amt_twd_plan_cat_amt             DECIMAL(9,2)
, plan_init_cov_amt                DECIMAL(9,2)
, plan_pay_init_cov_lvl_amt        DECIMAL(9,2)
, mbr_amt_twd_ded_amt              DECIMAL(9,2)
, drg_spnd_twd_ded_amt             DECIMAL(9,2)
, mbr_amt_twd_gap_amt              DECIMAL(9,2)
, drg_spnd_twd_gap_amt             DECIMAL(9,2)
, mbr_amt_twd_cat_amt              DECIMAL(9,2)
, drg_spnd_twd_cat_amt             DECIMAL(9,2)
, mbr_amt_twd_init_cov_amt         DECIMAL(9,2)
, drg_spnd_twd_init_cov_amt        DECIMAL(9,2)
, gdca_amt                         DECIMAL(9,2)
, gdcb_amt                         DECIMAL(9,2)
, npp_amt                          DECIMAL(9,2)
, drg_spnd_amt                     DECIMAL(9,2)
, pds_rebate_est_amt               DECIMAL(9,2)
, clt_vacc_adm_fee_amt             DECIMAL(9,2)
, rbl_oth_pyr_recog_amt            DECIMAL(9,2)
, phr_vacc_adm_fee_amt             DECIMAL(9,2)
, phr_oth_pyr_recog_amt            DECIMAL(9,2)
, oth_pyr_paid_amt                 DECIMAL(9,2)
, subrogation_amt                  DECIMAL(9,2)
, report_gap_disc_amt              DECIMAL(9,2)
, medicaid_subrogation_ind         VARCHAR(1)
, shortcycle_prov_qlfr_cd          VARCHAR(1)
, shortcycle_prod_qlfr_cd          VARCHAR(1)
, shortcycle_claim_qlfr_cd         VARCHAR(1)
, dcs_daily_prorate_no             DECIMAL(11,4)
, prod_claim_no                    BIGINT
, prod_claim_seq_no                SMALLINT
, create_update_by_ind             VARCHAR(1)
, svc_claim_ind                    VARCHAR(1)
, out_of_netwk_cd                  VARCHAR(1)
, orig_claim_rcvd_dt               DATE
, adjud_beign_timestamp            VARCHAR(30)
, reprocess_claim_seq_no           DECIMAL(9,2)
, tier_ind                         VARCHAR(1)
, formulary_cd                     VARCHAR(1)
, gap_disc_pln_ovrd_cd             VARCHAR(1)
, prod_claim_prod_id               VARCHAR(20)
, prod_claim_prod_key              BIGINT
, prod_claim_gpi_nbr               VARCHAR(14)
, pbr_npi_id                       VARCHAR(10)
, created_by_version_nbr           VARCHAR(3)
, medicare_plan_type_cd            VARCHAR(1)
, dispensing_stat_cd               VARCHAR(1)
, copay_catgry_cd                  VARCHAR(1)
, subsidy_lvl_nbr                  VARCHAR(3)
, mbr_hicn_id                      VARCHAR(20)
, amendment_ind                    VARCHAR(1)
, amn_phr_svc_type_cd              VARCHAR(2)
, amn_pbr_id                       VARCHAR(15)
, amn_pbr_qlfr_cd                  VARCHAR(2)
, amn_rx_origin_cd                 VARCHAR(1)
, amn_pat_residence_cd             VARCHAR(2)
, amn_contract_id                  VARCHAR(5)
, amn_pbp_nbr                      VARCHAR(3)
, egwp_troop_sched_id              VARCHAR(10)
, egwp_troop_sched_step_no         SMALLINT
, egwp_dedlvl_drg_spnd_amt         DECIMAL(11,2)
, egwp_amt_twd_plan_ded_amt        DECIMAL(11,2)
, egwp_dedlvl_troop_amt            DECIMAL(11,2)
, egwp_plan_gap_amt                DECIMAL(11,2)
, egwp_amt_twd_plan_gap_amt        DECIMAL(11,2)
, egwp_plan_cat_amt                DECIMAL(11,2)
, egwp_amt_twd_plan_cat_amt        DECIMAL(11,2)
, egwp_plan_icl_amt                DECIMAL(11,2)
, egwp_plan_pay_icl_amt            DECIMAL(11,2)
, src_add_user_nm                  VARCHAR(10)
, src_add_dt                       DATE
, src_add_timestamp                TIMESTAMP
, pd7_adj_seq_nbr                  INTEGER
, dx_list_id                       VARCHAR(6)
, dx_list_qlfr                     VARCHAR(1)
, rsp_patient_pay_amt              DECIMAL(9,2)
, rsp_ingred_cost_paid             DECIMAL(9,2)
, rsp_dispensing_fee               DECIMAL(9,2)
, rsp_sales_tax_paid               DECIMAL(9,2)
, rsp_copay_amt_paid               DECIMAL(9,2)
, rsp_copay_flat_amt               DECIMAL(9,2)
, rsp_copay_pct_amt                DECIMAL(9,2)
, rsp_tot_amt_paid                 DECIMAL(9,2)
, rsp_atr_sls_tax_amt              DECIMAL(9,2)
, rsp_incentive_fee_paid           DECIMAL(9,2)
, rsp_prof_svc_fee_paid            DECIMAL(9,2)
, rsp_oth_pyr_recog_amt            DECIMAL(9,2)
, rsp_tot_oth_amt                  DECIMAL(9,2)
, rsp_atr_proc_fee_amt             DECIMAL(9,2)
, rsp_pat_sls_tax_amt              DECIMAL(9,2)
, rsp_pln_sls_tax_amt              DECIMAL(9,2)
, rsp_spnd_acc_remn_amt            DECIMAL(9,2)
, rsp_pln_fnd_asst_amt             DECIMAL(9,2)
, rsp_atr_prov_ntwk_sel_amt        DECIMAL(9,2)
, rsp_atr_prod_sel_amt_brnd        DECIMAL(9,2)
, rsp_atr_prod_sel_amt_npf         DECIMAL(9,2)
, rsp_atr_prdsel_amt_brndnpf       DECIMAL(9,2)
, rsp_atr_amt_covrg_gap            DECIMAL(9,2)
, rsp_ingred_cost_cont_amt         DECIMAL(9,2)
, rsp_dispensing_fee_cont_amt      DECIMAL(9,2)
, src_env_sk                       BIGINT NOT NULL
, insert_ts                        TIMESTAMP NOT NULL
, update_ts                        TIMESTAMP NOT NULL
, insert_uid                       VARCHAR(20)
, update_uid                       VARCHAR(20)
, run_id                           BIGINT
, rec_stat_cd                      BYTEINT
, mm_update_run_dt                 DATE
, mai_qlfr_ind                     BYTEINT
)
DISTRIBUTE ON (MBR_SK);

