DROP TABLE ${STAGING_SCHEMA}.f_claim_transaction_u;

CREATE TABLE ${STAGING_SCHEMA}.f_claim_transaction_u
( claim_nbr                        BIGINT
, claim_seq_nbr                    INTEGER
, claim_stat_id                    CHAR(1)
, carrier_sk                       BIGINT
, carrier_acct_sk                  BIGINT
, cag_sk                           BIGINT
, mbr_sk                           BIGINT
, sbm_dt_sk                        BIGINT
, pbr_spclty_sk                    BIGINT
, pcp_sk                           BIGINT
, custom_client_ind_sk             BIGINT
, phr_sk                           BIGINT
, gender_sk                        BIGINT
, drug_sk                          BIGINT
, age_band_sk                      BIGINT
, phr_state_cd_sk                  BIGINT
, relationship_cd_sk               BIGINT
, fmly_type_sk                     BIGINT
, phr_pmt_cntr_sk                  BIGINT
, prod_sk                          BIGINT
, ntwk_sk                          BIGINT
, hm_dlvry_ind_sk                  BIGINT
, pbr_sk                           BIGINT
, phr_afflt_sk                     BIGINT
, ahfs_cd_sk                       BIGINT
, cost_basis_sk                    BIGINT
, cost_type_cd_sk                  BIGINT
, drug_rx_otc_ind_sk               BIGINT
, drug_maint_cd_sk                 BIGINT
, final_pln_sk                     BIGINT
, prior_auth_reason_cd             VARCHAR(2)
, admin_rte_sk                     BIGINT
, cob_ind_sk                       BIGINT
, gpi_sk                           BIGINT
, gnrc_mdspn_ind_sk                BIGINT
, gnrc_ind_sk                      BIGINT
, location_sk                      BIGINT
, client_benefit_cd_sk             BIGINT
, clt_prc_typ_sk                   BIGINT
, dea_cd_sk                        BIGINT
, daw_cd_sk                        BIGINT
, claim_stat_sk                    BIGINT
, compound_sk                      BIGINT
, dsg_frm_sk                       BIGINT
, days_of_supply_sk                BIGINT
, pln_drg_stat_sk                  BIGINT
, rej_cd1_sk                       BIGINT
, rej_cd2_sk                       BIGINT
, rej_cd3_sk                       BIGINT
, orig_carrier_sk                  BIGINT
, orig_mbr_sk                      BIGINT
, orig_cag_sk                      BIGINT
, orig_carrier_id                  VARCHAR(30)
, orig_account_id                  VARCHAR(40)
, orig_employer_group_id           VARCHAR(30)
, orig_member_id                   VARCHAR(20)
, claim_seq_nbr_src                INTEGER
, claim_cntr                       SMALLINT
, sbm_dt                           DATE
, sbm_mn_id                        INTEGER
, hm_dlvry_ind                     CHAR(1)
, mbr_age                          SMALLINT
, refill_nbr                       VARCHAR(2)
, daw_cd                           CHAR(1)
, days_sply                        SMALLINT
, drg_qty                          DECIMAL(11,3)
, filled_dt                        DATE
, rx_written_dt                    DATE
, rx_nbr                           VARCHAR(12)
, awp_unit_cost                    DECIMAL(24,8)
, extd_awp_cost                    DECIMAL(13,5)
, wac_unit_cost                    DECIMAL(13,5)
, geap_unit_cost                   DECIMAL(13,5)
, cost_type_unit_cost              DECIMAL(13,5)
, clt_cost_type_unit_cost          DECIMAL(13,5)
, clt_cost_type_code               VARCHAR(10)
, grp_pln_cd                       VARCHAR(10)
, app_ingred_cost_paid             DECIMAL(9,2)
, app_dispensing_fee               DECIMAL(9,2)
, app_sales_tax_paid               DECIMAL(9,2)
, app_patient_pay_amt              DECIMAL(9,2)
, app_due_amt                      DECIMAL(9,2)
, app_copay_amt                    DECIMAL(9,2)
, app_attrib_prod_sel_amt          DECIMAL(9,2)
, app_other_payer_amt              DECIMAL(9,2)
, app_incentive_amt                DECIMAL(9,2)
, app_attrib_to_ded_amt            DECIMAL(9,2)
, app_exe_per_bft_amt              DECIMAL(9,2)
, clt_ingred_cost_paid             DECIMAL(9,2)
, clt_dispensing_fee               DECIMAL(9,2)
, clt_sales_tax_paid               DECIMAL(9,2)
, clt_patient_pay_amt              DECIMAL(9,2)
, clt_due_amt                      DECIMAL(9,2)
, clt_copay_amt                    DECIMAL(9,2)
, clt_attrib_prod_sel_amt          DECIMAL(9,2)
, clt_other_payer_amt              DECIMAL(9,2)
, clt_incentive_amt                DECIMAL(9,2)
, clt_attrib_to_ded_amt            DECIMAL(9,2)
, clt_exe_per_bft_amt              DECIMAL(9,2)
, sbm_ingred_cost_paid             DECIMAL(9,2)
, sbm_dispensing_fee               DECIMAL(9,2)
, sbm_sales_tax_paid               DECIMAL(9,2)
, sbm_patient_pay_amt              DECIMAL(9,2)
, sbm_due_amt                      DECIMAL(9,2)
, sbm_usual_customary_amt          DECIMAL(9,2)
, cal_ingred_cost_paid             DECIMAL(9,2)
, cal_dispensing_fee               DECIMAL(9,2)
, cal_sales_tax_paid               DECIMAL(9,2)
, cal_patient_pay_amt              DECIMAL(9,2)
, cal_due_amt                      DECIMAL(9,2)
, cal_attrib_prod_sel_amt          DECIMAL(9,2)
, pst_ingred_cost_paid             DECIMAL(9,2)
, pst_dispensing_fee               DECIMAL(9,2)
, pst_sales_tax_paid               DECIMAL(9,2)
, pst_patient_pay_amt              DECIMAL(9,2)
, pst_due_amt                      DECIMAL(9,2)
, pst_copay_amt                    DECIMAL(9,2)
, pst_attrib_prod_sel_amt          DECIMAL(9,2)
, pst_other_payer_amt              DECIMAL(9,2)
, pst_incentive_amt                DECIMAL(9,2)
, pst_attrib_to_ded_amt            DECIMAL(9,2)
, pst_exe_per_bft_amt              DECIMAL(9,2)
, rsp_ingred_cost_paid             DECIMAL(9,2)
, rsp_dispensing_fee               DECIMAL(9,2)
, rsp_sales_tax_paid               DECIMAL(9,2)
, rsp_patient_pay_amt              DECIMAL(9,2)
, rsp_due_amt                      DECIMAL(9,2)
, rsp_copay_amt                    DECIMAL(9,2)
, rsp_attrib_prod_sel_amt          DECIMAL(9,2)
, rsp_other_payer_amt              DECIMAL(9,2)
, rsp_incentive_amt                DECIMAL(9,2)
, rsp_attrib_to_ded_amt            DECIMAL(9,2)
, rsp_exe_per_bft_amt              DECIMAL(9,2)
, family_deductible_amt            DECIMAL(9,2)
, individual_deductible_amt        DECIMAL(9,2)
, ded_flg                          CHAR(1)
, ben_max_flag                     CHAR(1)
, rebate_claims_flg                CHAR(1)
, prior_auth_nbr                   VARCHAR(11)
, refill_max                       SMALLINT
, bin_nbr                          VARCHAR(6)
, processor_cntrl_nbr              VARCHAR(10)
, grp_nbr_submd                    VARCHAR(15)
, brnd_trade_nm_flag               CHAR(1)
, prc_qty                          DECIMAL(13,3)
, gen_cntr                         BYTEINT
, formulary_cntr                   BYTEINT
, tier_level                       INTEGER
, grp_clt_ben_cd                   VARCHAR(10)
, cust_loc                         VARCHAR(2)
, clt_prc_typ                      VARCHAR(10)
, phr_prc_typ                      VARCHAR(10)
, pbr_id_qlfr                      VARCHAR(2)
, sbm_prof_svc_fee                 DECIMAL(9,2)
, cal_prof_svc_fee                 DECIMAL(9,2)
, app_prof_svc_fee                 DECIMAL(9,2)
, pst_prof_svc_fee                 DECIMAL(9,2)
, clt_prof_svc_fee                 DECIMAL(9,2)
, rsp_prof_svc_fee                 DECIMAL(9,2)
, dx_cd                            VARCHAR(15)
, dx_cd_qlfr                       VARCHAR(2)
, cms_pbp_id                       VARCHAR(3)
, cms_contract_id                  VARCHAR(5)
, rej_cnt                          SMALLINT
, rsp_msg_1                        VARCHAR(50)
, rsp_msg_2                        VARCHAR(50)
, rsp_msg_3                        VARCHAR(50)
, adj_rxcount_stnd_days_sply       INTEGER
, adj_rxcount_rxsol_mail_srvc      INTEGER
, rsp_acct_ded_amt                 DECIMAL(9,2)
, ben_ded_accum_cd                 VARCHAR(10)
, begin_benefit_phase_sk           BIGINT
, end_benefit_phase_sk             BIGINT
, rx_origin_cd_sk                  BIGINT
, nda_flg                          CHAR(1)
, anda_flg                         CHAR(1)
, tot_covered_drg_cost_amt         DECIMAL(9,2)
, tot_troop_amt                    DECIMAL(9,2)
, sbm_tm                           TIME
, ajc_code_key                     BIGINT
, inn_max_out_of_pocket_amt        DECIMAL(9,2)
, phr_price_src_sk                 BIGINT
, clt_price_src_sk                 BIGINT
, awp_unit_adjustment              DECIMAL(13,5)
, awp_unit_published               DECIMAL(13,5)
, payee_id                         VARCHAR(12)
, contract_pbp_sk                  BIGINT
, drug_category_code               CHAR(1)
, generic_mnftr_cnt                SMALLINT
, co_insurance_amt                 DECIMAL(9,2)
, non_prf_drug_patient_pay_amt     DECIMAL(9,2)
, brand_prf_patient_pay_amt        DECIMAL(9,2)
, cob_carrier_subm_amt             DECIMAL(9,2)
, cob_primary_claim_type_ind       CHAR(1)
, cob_primary_payer_id             VARCHAR(10)
, cob_primary_payer_paid_amt       DECIMAL(9,2)
, client_cost_tier_amt             VARCHAR(2)
, specialty_drug_prg_ind           BYTEINT
, specialty_drug_prg_mbr_ind       CHAR(1)
, specialty_drug_prg_pharm_ind     BYTEINT
, adherence_incnt_prg_ind          CHAR(1)
, adherence_incnt_reduction_ind    BYTEINT
, adherence_incnt_reduction_amt    DECIMAL(9,2)
, drug_reserved_elg_ind            BYTEINT
, drug_reserved_member_elg_ind     CHAR(1)
, plan_sponsor_base_share_amt      DECIMAL(7,2)
, plan_sponsor_supl_share_amt      DECIMAL(7,2)
, supl_consumer_num                DECIMAL(7,2)
, min_copay_amt                    DECIMAL(7,2)
, consumer_directed_health_ind     CHAR(1)
, specialty_network_prg_ind        CHAR(1)
, ingredient_cost_code             VARCHAR(10)
, compund_ingredient_comp_cnt      INTEGER
, patient_age                      SMALLINT
, ndc_diff_price_amt               DECIMAL(9,2)
, insulin_plan_ind                 CHAR(1)
, cob_second_payer_id              VARCHAR(10)
, cob_second_payer_paid_amt        DECIMAL(9,2)
, ncpdp_reject_version_code        VARCHAR(2)
, low_day_supl_ind                 CHAR(1)
, zero_balance_ind                 CHAR(1)
, nat_drg_cd_mfr_sk                BIGINT
, subm_clfctn_cd                   VARCHAR(4)
, mbr_carrier_uid                  BIGINT
, residence_cd_sk                  BIGINT
, phr_rate                         DECIMAL(5,2)
, clt_rate                         DECIMAL(5,2)
, client_mac_id                    VARCHAR(10)
, pharmacy_mac_id                  VARCHAR(10)
, client_contract_dis_fee          DECIMAL(9,2)
, clawback_stat_sk                 BIGINT
, super_ntwk_sk                    BIGINT
, tot_publish_awp_amt              DECIMAL(24,8)
, clt_awp_discount_rate            DECIMAL(15,4)
, app_awp_discount_rate            DECIMAL(15,4)
, awp_unit_cost_ind                CHAR(1)
, awp_extended_cost_ind            CHAR(1)
, dmr_ind_sk                       BIGINT
, injectable_ind_sk                BIGINT
, injectable_ind                   CHAR(1)
, clt_formulary_sk                 BIGINT
, clt_formulary_flg                CHAR(1)
, formulary_flg                    CHAR(1)
, risk_pool_sk                     BIGINT
, risk_pool_id                     CHAR(1)
, prior_auth_sk                    BIGINT
, prior_auth_id                    CHAR(1)
, rxsol_formulary_sk               BIGINT
, rxsol_formulary_id               CHAR(1)
, claim_origination_code_sk        BIGINT
, claim_origin_cd                  CHAR(1)
, coverage_lvl_ind                 CHAR(1)
, reversal_ind                     VARCHAR(1)
, recent_clm_flg                   VARCHAR(1)
, ntpn_ind                         CHAR(1)
, origin_cd                        CHAR(1)
, reported_gap_discount_amt        DECIMAL(9,2)
, clt_id                           VARCHAR(50)
, cag_adjud_sk                     BIGINT
, mbr_adjud_sk                     BIGINT
, mbr_eligty_sk                    BIGINT
, mbr_eligty_adjud_sk              BIGINT
, ln_of_buss                       CHAR(1)
, filled_dt_sk                     BIGINT
, mbr_dt_of_brth_sk                BIGINT
, phr_adjud_sk                     BIGINT
, phr_svc_typ_submd                VARCHAR(2)
, ben_max_accum_cd                 VARCHAR(10)
, ben_ded_sched                    VARCHAR(10)
, care_ntwrk_id                    VARCHAR(10)
, care_ntwrk_qlfr                  VARCHAR(10)
, clt_copay_sched_nm               VARCHAR(10)
, clt_copay_sched_step_nbr         SMALLINT
, clt_drg_cost_sched_seq           SMALLINT
, clt_drg_cost_sched_id            VARCHAR(13)
, clt_drg_cost_comp_sched_seq      SMALLINT
, clt_drg_cost_comp_sched          VARCHAR(14)
, clt_pat_sched_nm                 VARCHAR(10)
, clt_pat_sched_tbl                VARCHAR(13)
, clt_prc_sched_nm                 VARCHAR(13)
, clt_prc_sched_step               SMALLINT
, clt_prc_sched_tbl                VARCHAR(13)
, cntngnt_thrpc_flag               CHAR(1)
, cntngnt_thrpy_sched              VARCHAR(20)
, dur_flg                          CHAR(1)
, dur_key                          VARCHAR(18)
, elig_clfctn_cd                   CHAR(1)
, fam_acc_life_benefit_amt         DECIMAL(9,2)
, fam_acc_benefit_ptd_amt          DECIMAL(9,2)
, frm_mgmt_svcs_tier               VARCHAR(2)
, formulary_prtcol_flg             CHAR(1)
, group_sic                        VARCHAR(4)
, hsa_extrct_flg                   CHAR(1)
, ind_benefit_max_ptd_amt          DECIMAL(9,2)
, ind_acc_life_benefit_amt         DECIMAL(9,2)
, accum_oop                        DECIMAL(9,2)
, ind_life_ben_max_rem_amt         DECIMAL(9,2)
, ind_oop_rem_amt                  DECIMAL(9,2)
, maint_gpi_list                   CHAR(1)
, med_ffp_ind_ms_stat              CHAR(1)
, med_ffp_ind_px_stat              CHAR(1)
, med_ffp_ind_rm_stat              CHAR(1)
, ndc_list_qlfr                    VARCHAR(10)
, out_of_perd_rvrsl_flg            CHAR(1)
, out_of_pocket_max_flag           CHAR(1)
, phr_copay_sched_nm               VARCHAR(10)
, phr_copay_sched_step_nbr         SMALLINT
, phr_drg_cost_sched_id            VARCHAR(13)
, phr_drg_cost_sched_seq           SMALLINT
, phr_drg_cost_comp_sched_seq      SMALLINT
, phr_drg_cost_comp_sched          VARCHAR(14)
, phr_ntwrk_gpi_list               VARCHAR(10)
, phr_ntwrk_ndc_list               VARCHAR(10)
, phr_pat_sched_tbl                VARCHAR(13)
, phr_pat_sched_nm                 VARCHAR(10)
, phr_prc_tbl_sched                VARCHAR(13)
, pln_adjud_sk                     BIGINT
, pln_fnl_prc_sched                VARCHAR(10)
, pref_prod_sched_id               VARCHAR(10)
, prc_bsis_sched                   VARCHAR(10)
, prod_remb_ind                    CHAR(1)
, prv_lock_id                      VARCHAR(15)
, prv_lock_qlfr                    CHAR(1)
, rgnl_dsstr_ovrd                  VARCHAR(10)
, trn_ben_ovrd_sched               VARCHAR(10)
, pbr_adjud_sk                     BIGINT
, submd_rph_id                     VARCHAR(16)
, submd_rph_qlfr                   VARCHAR(2)
, adj_medspn_prod_flg              CHAR(1)
, anda_ovrd_flg                    CHAR(1)
, bla_flg                          CHAR(1)
, bla_ovrd_flg                     CHAR(1)
, cmpd_typ_submd                   VARCHAR(2)
, fda_flg                          CHAR(1)
, kdc                              BIGINT
, medspn_carr_prod_ovrd            CHAR(1)
, nda_ovrd_flg                     CHAR(1)
, prod_adjud_sk                    BIGINT
, tran_add_user_id                 VARCHAR(10)
, adjtd_claim_stat                 CHAR(1)
, chg_dttm_tcd                     TIMESTAMP
, chg_usr_nm                       VARCHAR(10)
, claim_ref_id                     VARCHAR(30)
, claim_resp_stat_cd               CHAR(1)
, submd_claim_dttm                 TIMESTAMP
, injury_dt                        DATE
, orig_pmt_dt                      DATE
, sub_reversal_dt                  DATE
, delay_rsn_cd                     CHAR(1)
, dispng_stat                      CHAR(1)
, dmr_usr_id                       VARCHAR(10)
, extr_txn_cntl_nbr                VARCHAR(30)
, incdnt_id                        VARCHAR(25)
, manl_claim_trk_dt_sk             BIGINT
, manl_claim_trk_nbr               VARCHAR(14)
, agcy_nbr                         VARCHAR(15)
, medcd_id                         VARCHAR(20)
, medcd_ind                        VARCHAR(2)
, sbrogtn_tcn                      VARCHAR(20)
, pmt_txn_nbr                      VARCHAR(6)
, pl_of_svc_submd                  VARCHAR(2)
, pror_qty                         DECIMAL(11,3)
, rx_nbr_qlfr                      CHAR(1)
, srvc_lvl_of_effrt                VARCHAR(2)
, srvc_lvl_typ                     VARCHAR(2)
, subm_clfctn_cd2                  VARCHAR(2)
, subm_clfctn_cd3                  VARCHAR(2)
, txn_cd_submd                     VARCHAR(2)
, u_c_flag                         CHAR(1)
, vers_nbr                         VARCHAR(2)
, clt_defd_fld1                    VARCHAR(10)
, clt_defd_fld2                    VARCHAR(10)
, clt_defd_fld3                    VARCHAR(10)
, sxc_defd_fld1                    VARCHAR(15)
, sxc_defd_fld2                    VARCHAR(15)
, sxc_defd_fld3                    VARCHAR(15)
, rdc_ingrd_cost_flag              BYTEINT
, zro_bal_claims_flag              BYTEINT
, estd_gen_sav                     DECIMAL(9,2)
, basis_of_cost_cd                 VARCHAR(2)
, basis_of_reim_cd                 VARCHAR(2)
, cal_atr_ded_amt                  DECIMAL(9,2)
, cal_co_pay_amt                   DECIMAL(9,2)
, cal_incentive_fee_amt            DECIMAL(9,2)
, cal_other_pmt_amt                DECIMAL(9,2)
, cal_psc_brnp_amt                 DECIMAL(9,2)
, cal_withhold_amt                 DECIMAL(9,2)
, cal_cob_amt                      DECIMAL(9,2)
, client_pricing_flg               CHAR(1)
, clt_pct_copay_amt                DECIMAL(9,2)
, clt_amt_covrg_gap                DECIMAL(9,2)
, clt_attrd_sls_tax                DECIMAL(9,2)
, clt_flat_copay_amt               DECIMAL(9,2)
, clt_oth_amt                      DECIMAL(9,2)
, spclty_phr_corp_ind              CHAR(1)
, clt_tot_cob_amt                  DECIMAL(9,2)
, spclty_phr_rptg_ind              CHAR(1)
, clt_wthd_amt                     DECIMAL(9,2)
, clt_ppay_amt_psc_brnd_npf        DECIMAL(9,2)
, mail_ordr_corp_ind               CHAR(1)
, retl_90_corp_ind                 CHAR(1)
, mail_ordr_rptg_ind               CHAR(1)
, phr_amt_sls_tax                  DECIMAL(9,2)
, phr_amt_covrg_gap                DECIMAL(9,2)
, phr_copay_flat_dllr_amt          DECIMAL(9,2)
, phr_copay_pct_dllr_amt           DECIMAL(9,2)
, phr_oth_amt                      DECIMAL(9,2)
, phr_prc_sched_nm                 VARCHAR(10)
, phr_tot_cob_amt                  DECIMAL(9,2)
, phr_wthd_amt                     DECIMAL(9,2)
, phr_ppay_amt_psc_brnd_npf        DECIMAL(9,2)
, mail_ordr_cntr                   BYTEINT
, retl_90_rptg_ind                 CHAR(1)
, post_adjud_pat_sls_tax_amt       DECIMAL(9,2)
, post_adjud_pln_sls_tax_amt       DECIMAL(9,2)
, subm_yr                          SMALLINT
, care_fac_adjud_sk                BIGINT
, subm_yr_mnth                     INTEGER
, subm_qtr                         VARCHAR(8)
, filled_yr_mnth                   INTEGER
, filled_qtr                       VARCHAR(8)
, rvrsl_incent_amt                 DECIMAL(9,2)
, rsp_amt_covrg_gap                DECIMAL(9,2)
, rsp_attrd_sls_tax                DECIMAL(9,2)
, rsp_oth_amt                      DECIMAL(9,2)
, rsp_pat_sls_tax_amt              DECIMAL(9,2)
, rsp_pln_sls_tax_amt              DECIMAL(9,2)
, rsp_remn_ben                     DECIMAL(9,2)
, rsp_remn_ded                     DECIMAL(9,2)
, rsp_ingrd_cost_cntrctd_remb      DECIMAL(9,2)
, rsp_ppay_amt_psc_brnd            DECIMAL(9,2)
, rsp_ppay_amt_psc_brnd_npf        DECIMAL(9,2)
, subm_incent_amt                  DECIMAL(9,2)
, subm_mcd_pd_amt                  DECIMAL(9,2)
, subm_oth_amt                     DECIMAL(9,2)
, subm_oth_covrg_cd                VARCHAR(2)
, subm_oth_payr_amt                DECIMAL(9,2)
, cmpo_last_seq                    BIGINT
, corp_chnl_type_nm                VARCHAR(9)
, rptg_chnl_type_nm                VARCHAR(9)
, brnd_bsis_sk                     BIGINT
, rebill_cost_src                  CHAR(1)
, rebill_cost_typ                  VARCHAR(10)
, rebill_cost_typ_unit_cost        DECIMAL(13,5)
, rebill_dispng_fee                DECIMAL(9,2)
, rebill_drg_cost_comp_sched       VARCHAR(14)
, rebill_drg_cost_comp_sched_seq   SMALLINT
, rebill_drg_cost_sched_id         VARCHAR(13)
, rebill_drg_cost_sched_seq        SMALLINT
, rebill_incent_fee                DECIMAL(9,2)
, rebill_ingrd_cost_pd             DECIMAL(9,2)
, rebill_prc_sched_nm              VARCHAR(13)
, rebill_prc_sched_step            SMALLINT
, rebill_prc_typ                   VARCHAR(10)
, rebill_sls_tax_pd                DECIMAL(9,2)
, rebill_due_amt                   DECIMAL(9,2)
, rebill_oth_amt                   DECIMAL(9,2)
, msg_cd_1                         VARCHAR(10)
, msg_cd_2                         VARCHAR(10)
, msg_cd_3                         VARCHAR(10)
, rebill_drug_cost_percent         DECIMAL(5,2)
, acct_benefit_cd                  VARCHAR(10)
, benefit_max_sched_id             VARCHAR(10)
, birth_dt                         DATE
, cal_atr_sls_tax_amt              DECIMAL(9,2)
, cal_cost_src_cd                  CHAR(1)
, cal_cov_gap_amt                  DECIMAL(9,2)
, cal_dsp_fee_c_r_amt              DECIMAL(9,2)
, cal_exc_benefit_max_amt          DECIMAL(9,2)
, cal_flat_co_pay_amt              DECIMAL(9,2)
, cal_flat_sls_tax_amt             DECIMAL(9,2)
, cal_ingred_cost_con_reimb_amt    DECIMAL(9,2)
, cal_pat_sls_tax_amt              DECIMAL(9,2)
, cal_per_co_pay_amt               DECIMAL(9,2)
, cal_plan_sls_tax_amt             DECIMAL(9,2)
, cal_proc_fee_amt                 DECIMAL(9,2)
, cal_prv_ntw_sel_amt              DECIMAL(9,2)
, cal_psc_brnd_amt                 DECIMAL(9,2)
, cal_psc_np_amt                   DECIMAL(9,2)
, cal_perc_sls_tax_amt             DECIMAL(9,2)
, cal_tot_other_amt                DECIMAL(9,2)
, chg_date                         DATE
, chg_time                         TIME
, cfi_csg_client_seg_cd            VARCHAR(3)
, client_proc_fee_amt              DECIMAL(9,2)
, client_prv_ntw_sel_amt           DECIMAL(9,2)
, client_psc_brnd_amt              DECIMAL(9,2)
, client_psc_np_amt                DECIMAL(9,2)
, drug_conflict_1_cd               VARCHAR(2)
, drug_conflict_2_cd               VARCHAR(2)
, drug_conflict_3_cd               VARCHAR(2)
, prev_fill_1_dt                   DATE
, prev_fill_2_dt                   DATE
, prev_fill_3_dt                   DATE
, fam_benefit_max_rem_amt          DECIMAL(9,2)
, fam_deductible_rem_amt           DECIMAL(9,2)
, fam_life_ben_max_rem_amt         DECIMAL(9,2)
, fam_lbft_tran_max_amt            DECIMAL(9,2)
, fam_oop_rem_amt                  DECIMAL(9,2)
, ind_benefit_max_rem_amt          DECIMAL(9,2)
, ind_deductible_rem_amt           DECIMAL(9,2)
, ind_lbft_tran_max_amt            DECIMAL(9,2)
, life_benefit_max_acc_code        VARCHAR(10)
, life_benefit_max_flag            CHAR(1)
, life_benefit_max_sched_id        VARCHAR(10)
, oop_acc_code                     VARCHAR(10)
, oop_sched_used_id                VARCHAR(10)
, ptnt_first_nm                    VARCHAR(25)
, ptnt_last_nm                     VARCHAR(25)
, flat_sls_tax                     DECIMAL(9,2)
, pat_sls_tax_amt                  DECIMAL(9,2)
, price_tbl_nm                     VARCHAR(10)
, atr_proc_fee_amt                 DECIMAL(9,2)
, atr_priv_ntw_amt                 DECIMAL(9,2)
, atr_psc_brnd_amt                 DECIMAL(9,2)
, atr_psc_np_amt                   DECIMAL(9,2)
, pln_formulary                    CHAR(1)
, final_price_sched                VARCHAR(10)
, prior_auth_used_id               VARCHAR(10)
, prior_auth_from_dt               DATE
, prior_auth_thru_dt               DATE
, prev_fill_1_qty                  DECIMAL(11,3)
, prev_fill_2_qty                  DECIMAL(11,3)
, prev_fill_3_qty                  DECIMAL(11,3)
, rsp_atr_proc_fee_amt             DECIMAL(9,2)
, rsp_atr_priv_ntw_sel_amt         DECIMAL(9,2)
, rsp_atr_ppay_psc_np_amt          DECIMAL(9,2)
, reversal_dur_conflict_cd         VARCHAR(2)
, reversal_dur_intrv_cd            VARCHAR(2)
, reversal_dur_outcm_cd            VARCHAR(2)
, qual_serv_prov_id                VARCHAR(2)
, spend_acct_rem_amt               DECIMAL(9,2)
, mbr_pln                          VARCHAR(10)
, cob_extract_flg                  CHAR(1)
, sbm_unit_dose_ind                CHAR(1)
, tcd_sbm_perct_salestax_amt       DECIMAL(9,2)
, prim_pbr_first_nm                VARCHAR(15)
, prim_pbr_mid_init                CHAR(1)
, prim_pbr_last_nm                 VARCHAR(25)
, mbr_prim_pbr_id                  VARCHAR(15)
, prim_pbr_state                   VARCHAR(3)
, sbm_clarfctn_cd                  VARCHAR(2)
, cal_admin_fee                    DECIMAL(9,2)
, pst_cvg_gap_amt                  DECIMAL(9,2)
, pst_proc_fee                     DECIMAL(9,2)
, pst_dispensing_fee_cont          DECIMAL(9,2)
, pst_atr_sales_tax_amt            DECIMAL(9,2)
, pst_cost_source_cd               CHAR(1)
, pst_other_amt                    DECIMAL(9,2)
, pst_withhold_amt                 DECIMAL(9,2)
, pst_prvd_ntwk_sel_amt            DECIMAL(9,2)
, pst_psc_brand_patpay_amt         DECIMAL(9,2)
, pst_psc_npfm_patpay_amt          DECIMAL(9,2)
, pst_ingred_ctd_reim_amt          DECIMAL(9,2)
, pst_psc_brand_npfm_amt           DECIMAL(9,2)
, rsp_ctd_reim_dispensing_fee      DECIMAL(9,2)
, rsp_psc_brand_patpay_amt         DECIMAL(9,2)
, benchmrk_unit_cost               DECIMAL(13,5)
, prorated_days_supply             SMALLINT
, metric_nbr_qty                   DECIMAL(14,3)
, rej_cd4_sk                       BIGINT
, rej_cd5_sk                       BIGINT
, rej_cd6_sk                       BIGINT
, rej_cd7_sk                       BIGINT
, rej_cd8_sk                       BIGINT
, rej_cd9_sk                       BIGINT
, rej_cd10_sk                      BIGINT
, drg_coverage_stat_cd             CHAR(1)
, cpp_amt                          DECIMAL(9,2)
, prior_pbm_ind                    CHAR(1)
, non_rxclaim_adj_ind              CHAR(1)
, src_env_sk                       BIGINT
, insert_ts                        TIMESTAMP
, update_ts                        TIMESTAMP
, insert_uid                       VARCHAR(20)
, update_uid                       VARCHAR(20)
, run_id                           BIGINT
, rec_stat_cd                      BYTEINT
, orx_dispensed_ind                VARCHAR(1)
, dlvry_chanl                      VARCHAR(25)
, awp_flg                          VARCHAR(15)
, awp_intgr_unit_cost              DECIMAL(13,5)
, pdt_cost_type_unit_cost          DECIMAL(13,5)
, subm_prior_auth_reason_cd        VARCHAR(2)
, subm_prior_auth_nbr              VARCHAR(11)
, mbr_prior_auth_sk                BIGINT
, drg_spend_amt                    DECIMAL(11,2)
, troop_amt                        DECIMAL(11,2)
, oop_applied_amt                  DECIMAL(9,2)
, day_90_prog_type                 CHAR(1)
, day_90_retail_prog_ind           CHAR(1)
, copay_category_cd                CHAR(1)
, care_fac_sk                      BIGINT
);

