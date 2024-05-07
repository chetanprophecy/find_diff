DROP TABLE ${STAGING_SCHEMA}.a_cag_summary_u;

CREATE TABLE ${STAGING_SCHEMA}.a_cag_summary_u
( claim_stat_id                    CHAR(1)
, carrier_sk                       BIGINT
, carrier_acct_sk                  BIGINT
, cag_sk                           BIGINT
, claim_stat_sk                    BIGINT
, sbm_mn_id                        INTEGER
, gnrc_ind_sk                      BIGINT
, gnrc_mdspn_ind_sk                BIGINT
, hm_dlvry_ind_sk                  BIGINT
, drug_rx_otc_ind_sk               BIGINT
, drug_maint_cd_sk                 BIGINT
, cob_ind_sk                       BIGINT
, daw_cd_sk                        BIGINT
, dea_cd_sk                        BIGINT
, fmly_type_sk                     BIGINT
, cost_basis_sk                    BIGINT
, admin_rte_sk                     BIGINT
, compound_sk                      BIGINT
, clt_formulary_sk                 BIGINT
, dmr_ind_sk                       BIGINT
, injectable_ind_sk                BIGINT
, dsg_frm_sk                       BIGINT
, rxsol_formulary_sk               BIGINT
, specialty_drug_flg               CHAR(1)
, claim_cntr                       BIGINT
, drg_qty                          DECIMAL(15,3)
, drug_spend_amt                   DECIMAL(15,2)
, days_sply                        BIGINT
, tot_troop_amt                    DECIMAL(15,2)
, app_ingred_cost_paid             DECIMAL(15,2)
, app_dispensing_fee               DECIMAL(15,2)
, app_sales_tax_paid               DECIMAL(15,2)
, app_patient_pay_amt              DECIMAL(15,2)
, app_due_amt                      DECIMAL(15,2)
, app_copay_amt                    DECIMAL(15,2)
, app_prof_svc_fee                 DECIMAL(15,2)
, clt_ingred_cost_paid             DECIMAL(15,2)
, clt_dispensing_fee               DECIMAL(15,2)
, clt_sales_tax_paid               DECIMAL(15,2)
, clt_patient_pay_amt              DECIMAL(15,2)
, clt_due_amt                      DECIMAL(15,2)
, clt_copay_amt                    DECIMAL(15,2)
, clt_prof_svc_fee                 DECIMAL(15,2)
, sbm_ingred_cost_paid             DECIMAL(15,2)
, sbm_dispensing_fee               DECIMAL(15,2)
, sbm_sales_tax_paid               DECIMAL(15,2)
, sbm_patient_pay_amt              DECIMAL(15,2)
, sbm_due_amt                      DECIMAL(15,2)
, sbm_usual_customary_amt          DECIMAL(15,2)
, sbm_prof_svc_fee                 DECIMAL(15,2)
, cal_ingred_cost_paid             DECIMAL(15,2)
, cal_dispensing_fee               DECIMAL(15,2)
, cal_sales_tax_paid               DECIMAL(15,2)
, cal_patient_pay_amt              DECIMAL(15,2)
, cal_due_amt                      DECIMAL(15,2)
, cal_prof_svc_fee                 DECIMAL(15,2)
, pst_ingred_cost_paid             DECIMAL(15,2)
, pst_dispensing_fee               DECIMAL(15,2)
, pst_sales_tax_paid               DECIMAL(15,2)
, pst_patient_pay_amt              DECIMAL(15,2)
, pst_due_amt                      DECIMAL(15,2)
, pst_copay_amt                    DECIMAL(15,2)
, pst_prof_svc_fee                 DECIMAL(15,2)
, rsp_ingred_cost_paid             DECIMAL(15,2)
, rsp_dispensing_fee               DECIMAL(15,2)
, rsp_sales_tax_paid               DECIMAL(15,2)
, rsp_patient_pay_amt              DECIMAL(15,2)
, rsp_due_amt                      DECIMAL(15,2)
, rsp_copay_amt                    DECIMAL(15,2)
, rsp_prof_svc_fee                 DECIMAL(15,2)
, admin_fee                        DECIMAL(15,2)
, ancillary_amt                    DECIMAL(15,2)
, awp_amt                          DECIMAL(15,2)
, coins_amt                        DECIMAL(15,2)
, cov_gap_amt                      DECIMAL(15,2)
, ded_amt                          DECIMAL(15,2)
, disallowed_amt                   DECIMAL(15,2)
, gnrc_scripts_cnt                 DECIMAL(15,2)
, mac_amt                          DECIMAL(15,2)
, other_payer_paid_amt             DECIMAL(15,2)
, paid_amt                         DECIMAL(15,2)
, reduct_amt                       DECIMAL(15,2)
, zbl_amt                          DECIMAL(15,2)
, src_env_sk                       BIGINT NOT NULL
, insert_ts                        TIMESTAMP NOT NULL
, update_ts                        TIMESTAMP NOT NULL
, insert_uid                       VARCHAR(20)
, update_uid                       VARCHAR(20)
, run_id                           BIGINT
, rec_stat_cd                      BYTEINT
, troop_amt                        DECIMAL(15,2)
);

