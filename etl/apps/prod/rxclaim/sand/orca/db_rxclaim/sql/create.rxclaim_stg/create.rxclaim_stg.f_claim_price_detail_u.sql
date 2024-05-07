DROP TABLE ${STAGING_SCHEMA}.f_claim_price_detail_u;

CREATE TABLE ${STAGING_SCHEMA}.f_claim_price_detail_u
( claim_nbr                        BIGINT NOT NULL
, claim_seq_nbr                    INTEGER NOT NULL
, mbr_sk                           BIGINT NOT NULL
, cag_sk                           BIGINT NOT NULL
, carrier_sk                       BIGINT NOT NULL
, sbm_dt_sk                        BIGINT NOT NULL
, sbm_dt                           DATE NOT NULL
, filled_dt_sk                     BIGINT NOT NULL
, filled_dt                        DATE NOT NULL
, calc_ingrd_cost                  DECIMAL(9,2)
, calc_dispns_fee_amt              DECIMAL(9,2)
, calc_flat_sale_tax_amt           DECIMAL(9,2)
, calc_patient_pay_amt             DECIMAL(9,2)
, calc_tot_amt                     DECIMAL(9,2)
, calc_with_hold_amt               DECIMAL(9,2)
, calc_copay_amt                   DECIMAL(9,2)
, calc_copay_flat_dol_amt          DECIMAL(9,2)
, calc_copay_perct_dol_amt         DECIMAL(9,2)
, calc_attrb_to_prod_sel_amt       DECIMAL(9,2)
, calc_attrb_to_prod_sel_tax_amt   DECIMAL(9,2)
, calc_exce_period_benft_amt       DECIMAL(9,2)
, calc_incntve_fee_amt             DECIMAL(9,2)
, calc_appl_period_ded_amt         DECIMAL(9,2)
, calc_cost_src_cd                 CHAR(1)
, calc_tot_othr_amt                DECIMAL(9,2)
, calc_perct_sale_tax_paid_amt     DECIMAL(9,2)
, calc_perct_sale_tax_rte_paid_amt DECIMAL(7,4)
, calc_sale_tax_bas_paid_cd        VARCHAR(2)
, calc_prfl_srvc_fee_paid_amt      DECIMAL(9,2)
, calc_othr_payr_rcgn_amt          DECIMAL(9,2)
, calc_bas_dispns_fee              VARCHAR(2)
, calc_bas_copay                   VARCHAR(2)
, calc_bas_flat_tax                VARCHAR(2)
, calc_bas_perct_tax               VARCHAR(2)
, calc_attrb_proc_fee_amt          DECIMAL(9,2)
, calc_bas_co_insu                 VARCHAR(2)
, calc_health_plan_fund_asgn_amt   DECIMAL(9,2)
, calc_attrb_prov_ntwk_sel_amt     DECIMAL(9,2)
, calc_attrb_prod_si_brand_drug_amt DECIMAL(9,2)
, calc_attrb_prod_sin_pref_frm_amt DECIMAL(9,2)
, calc_attrb_prov_si_brand_npf_amt DECIMAL(9,2)
, calc_attrb_cov_gap_amt           DECIMAL(9,2)
, app_cost_src_cd                  CHAR(1)
, app_cost_typ_cd                  VARCHAR(10)
, app_price_typ                    VARCHAR(10)
, app_perct_sale_tax_rte_paid_amt  DECIMAL(7,4)
, app_perct_sale_tax_bas_paid      VARCHAR(2)
, app_profsnl_srvc_fee_paid_amt    DECIMAL(9,2)
, app_othr_payr_rcgn_amt           DECIMAL(9,2)
, app_bas_calc_dispns_fee          VARCHAR(2)
, app_bas_calc_copay               VARCHAR(2)
, app_bas_calc_flat_tax            VARCHAR(2)
, app_bas_calc_perct_tax           VARCHAR(2)
, app_bas_calc_co_insu             VARCHAR(2)
, re_bill_cost_src_cd              CHAR(1)
, re_bill_cost_typ_cd              VARCHAR(10)
, re_bill_cost_typ_unit_cost_amt   DECIMAL(13,5)
, re_bill_price_typ                VARCHAR(10)
, re_bill_price_sched_nm           VARCHAR(10)
, re_bill_price_sched_step         INTEGER
, re_bill_price_tbl_nm             VARCHAR(13)
, re_bill_fee_sched_nm             VARCHAR(10)
, re_bill_fee_sched_step           INTEGER
, re_bill_tax_sched_nm             VARCHAR(6)
, re_bill_tax_sched_step           INTEGER
, re_bill_patient_sched_nm         VARCHAR(10)
, re_bill_patient_sched_tbl        VARCHAR(13)
, re_bill_patient_pay_seq_nbr      INTEGER
, re_bill_perct_sale_tax_paid_amt  DECIMAL(9,2)
, re_bill_perct_sale_tax_paid_rate DECIMAL(7,4)
, re_bill_perct_sale_tax_bas_paid  VARCHAR(2)
, re_bill_profsnl_srvc_fee_paid_amt DECIMAL(9,2)
, re_bill_othr_payr_rcgn_amt       DECIMAL(9,2)
, re_bill_bas_calc_dispns_fee      VARCHAR(2)
, re_bill_bas_calc_copay           VARCHAR(2)
, re_bill_bas_calc_flat_tax        VARCHAR(2)
, re_bill_bas_calc_perct_tax       VARCHAR(2)
, re_bill_bas_calc_co_insu         VARCHAR(2)
, re_bill_incntve_fee_sched_nm     VARCHAR(10)
, re_bill_incntve_fee_sched_step   INTEGER
, re_bill_contrib_amt              DECIMAL(9,2)
, re_bill_drug_cost_sched_cd       VARCHAR(13)
, re_bill_drug_cost_sched_seq_nbr  INTEGER
, re_bill_drug_cost_cmpnd_sched    VARCHAR(14)
, re_bill_drug_cost_cmpnd_sched_seq_nbr INTEGER
, re_bill_drug_cost_perct          DECIMAL(5,2)
, awp_unit_cost                    DECIMAL(13,5)
, indvdl_accum_ded_pdt_amt         DECIMAL(9,2)
, indvdl_accum_oop_max_pdt_amt     DECIMAL(9,2)
, indvdl_accum_benft_pdt_amt       DECIMAL(9,2)
, indvdl_accum_life_tm_benft       DECIMAL(9,2)
, fam_accum_ded_period_to_dt       DECIMAL(9,2)
, fam_accum_oop_max_period_to_dt   DECIMAL(9,2)
, fam_accum_benft_period_to_dt     DECIMAL(9,2)
, fam_accum_life_tm_benft          DECIMAL(9,2)
, remain_oop_max_amt               DECIMAL(9,2)
, remain_life_tm_benft             DECIMAL(9,2)
, oop_appl_amt                     DECIMAL(9,2)
, pmt_nbr                          INTEGER
, pmt_chk_nbr                      VARCHAR(9)
, pmt_chk_dt_sk                    BIGINT
, pmt_chk_dt                       DATE
, phr_price_sched_cd               VARCHAR(10)
, phr_price_sched_step             INTEGER
, phr_fee_sched_nm                 VARCHAR(10)
, phr_fee_sched_step               INTEGER
, phr_tax_sched_nm                 VARCHAR(6)
, phr_tax_sched_step               INTEGER
, phr_patient_sched_nm             VARCHAR(10)
, phr_patient_pay_seq_nbr          INTEGER
, phr_patient_pay_tbl              VARCHAR(13)
, phr_cost_typ_unit_cost           DECIMAL(13,5)
, phr_incntv_fee_sched_cd          VARCHAR(10)
, phr_incntv_fee_sched_step        INTEGER
, phr_drug_cost_sched              VARCHAR(13)
, phr_drug_cost_sched_seq_nbr      INTEGER
, phr_drug_cost_cmpnd_sched        VARCHAR(14)
, phr_drug_cost_cmpnd_sched_seq_nbr INTEGER
, phr_drug_cost_perct              DECIMAL(5,2)
, rsp_plan_id                      VARCHAR(8)
, rsp_patient_pay_amt              DECIMAL(9,2)
, rsp_ingrd_cost_paid              DECIMAL(9,2)
, rsp_dispns_fee_paid              DECIMAL(9,2)
, rsp_flat_sale_tax_paid_amt       DECIMAL(9,2)
, rsp_copay_paid_amt               DECIMAL(9,2)
, rsp_copay_flat_dol_amt           DECIMAL(9,2)
, rsp_copay_perct_dol_amt          DECIMAL(9,2)
, rsp_tot_paid_amt                 DECIMAL(9,2)
, rsp_acc_ded_paid_amt             DECIMAL(9,2)
, rsp_remain_ded_amt               DECIMAL(9,2)
, rsp_remain_benft_paid            DECIMAL(9,2)
, rsp_appl_to_period_ded_amt       DECIMAL(9,2)
, rsp_attrb_to_prod_sel_amt        DECIMAL(9,2)
, rsp_exce_period_benft            DECIMAL(9,2)
, rsp_attrb_sale_tax_amt           DECIMAL(9,2)
, rsp_incntve_fee_paid             DECIMAL(9,2)
, rsp_bas_reimb_dtrmntn            VARCHAR(2)
, rsp_perct_sale_tax_paid_amt      DECIMAL(9,2)
, rsp_perct_sale_tax_rate_paid_amt DECIMAL(7,4)
, rsp_perct_sale_tax_bas_paid      VARCHAR(2)
, rsp_prfl_fee_paid_amt            DECIMAL(9,2)
, rsp_othr_payr_rcgn_amt           DECIMAL(9,2)
, rsp_bas_calc_dispns_fee          VARCHAR(2)
, rsp_bas_calc_copay               VARCHAR(2)
, rsp_bas_calc_flat_sale_tax       VARCHAR(2)
, rsp_bas_calc_perct_tax           VARCHAR(2)
, rsp_tot_othr_amt                 DECIMAL(9,2)
, rsp_attrb_proc_fee_amt           DECIMAL(9,2)
, rsp_patient_sale_tax_amt         DECIMAL(9,2)
, rsp_plan_sale_tax_amt            DECIMAL(9,2)
, rsp_bas_calc_co_insu             VARCHAR(2)
, rsp_est_genric_savng_amt         DECIMAL(9,2)
, rsp_spend_acct_remain_amt        DECIMAL(9,2)
, rsp_health_plan_fund_asgn_amt    DECIMAL(9,2)
, rsp_attrb_prov_ntwk_sel_amt      DECIMAL(9,2)
, rsp_attrb_prod_brand_drug_amt    DECIMAL(9,2)
, rsp_attrb_prod_sin_profsnl_frm_amt DECIMAL(9,2)
, rsp_attrb_prod_si_brand_npf_amt  DECIMAL(9,2)
, rsp_attrb_cov_gap_amt            DECIMAL(9,2)
, rsp_ingrd_cost_contract_amt      DECIMAL(9,2)
, rsp_dispns_fee_contract_amt      DECIMAL(9,2)
, othr_amt_paid_cnt                INTEGER
, tax_exempt_ind                   CHAR(1)
, addtl_patient_pay_sched_1        VARCHAR(10)
, addtl_patient_pay_step_1         INTEGER
, calc_addtl_patient_pay_amt_1     DECIMAL(9,2)
, rsp_addtl_patient_pay_amt_1      DECIMAL(9,2)
, addtl_patient_pay_sched_2        VARCHAR(10)
, addtl_patient_pay_step_2         INTEGER
, calc_addtl_patient_pay_amt_2     DECIMAL(9,2)
, rsp_addtl_patient_pay_amt_2      DECIMAL(9,2)
, future_use_cde_1                 VARCHAR(10)
, future_use_step_1                INTEGER
, future_use_cde_2                 VARCHAR(10)
, future_use_step_2                INTEGER
, rsp_over_copay_max_amt           DECIMAL(9,2)
, future_use_prc_2                 DECIMAL(9,2)
, future_use_prc_3                 DECIMAL(9,2)
, future_use_prc_4                 DECIMAL(9,2)
, future_use_sts_1                 CHAR(1)
, future_use_sts_2                 CHAR(1)
, src_env_sk                       BIGINT NOT NULL
, insert_ts                        TIMESTAMP NOT NULL
, update_ts                        TIMESTAMP NOT NULL
, insert_uid                       VARCHAR(20)
, update_uid                       VARCHAR(20)
, run_id                           BIGINT
, rec_stat_cd                      BYTEINT
)
DISTRIBUTE ON (MBR_SK);
