DROP TABLE ${STAGING_SCHEMA}.f_rpt_sco_cal_98_u;

CREATE TABLE ${STAGING_SCHEMA}.f_rpt_sco_cal_98_u
( record_code                      BIGINT
, claim_no                         BIGINT
, trlr_code                        BIGINT
, detail_code                      BIGINT
, header_code                      BIGINT
, zip_code                         VARCHAR(9)
, payee_id                         VARCHAR(12)
, seq_no                           BIGINT
, line_no                          SMALLINT
, det_amt_ind                      CHAR(1)
, detail_ra_amt                    DECIMAL(15,2)
, filter                           VARCHAR(4)
, audit_data_start                 VARCHAR(9)
, claim_schedule_number            VARCHAR(8)
, claim_type                       VARCHAR(15)
, rxclmnbr                         BIGINT
, clmseqnbr                        SMALLINT
, reimbursmt                       CHAR(1)
, claimsts                         CHAR(1)
, payment_type                     CHAR(1)
, original_claim_schedule_number   VARCHAR(8)
, original_eft_trace_number        VARCHAR(15)
, original_warrant_issue_date      INTEGER
, original_warrant_number          INTEGER
, plan_type                        VARCHAR(30)
, carrierid                        VARCHAR(9)
, carrproc                         VARCHAR(20)
, clntid                           VARCHAR(3)
, clntsgmnt                        VARCHAR(3)
, clntregion                       VARCHAR(2)
, accountid                        VARCHAR(15)
, acctbencde                       VARCHAR(10)
, groupid                          VARCHAR(15)
, groupplan                        VARCHAR(10)
, grpclibenf                       VARCHAR(10)
, clmrespsts                       CHAR(1)
, memberid                         VARCHAR(20)
, mbrlstnme                        VARCHAR(25)
, mbrfstnme                        VARCHAR(15)
, mbrmdinit                        CHAR(1)
, socsecnbr                        VARCHAR(9)
, mbrzip                           VARCHAR(15)
, mbrprsncde                       VARCHAR(3)
, mbrrelcde                        CHAR(1)
, mbrsex                           CHAR(1)
, mbrbirth                         INTEGER
, mbrage                           SMALLINT
, mbrpcphys                        VARCHAR(15)
, pprsfstnme                       VARCHAR(15)
, pprslstnme                       VARCHAR(25)
, pprsmdinit                       CHAR(1)
, pprsspccde                       VARCHAR(6)
, pprstate                         VARCHAR(3)
, mbraltinfl                       CHAR(1)
, mbrmeddte                        INTEGER
, mbrmedtype                       CHAR(1)
, mbrhiccde                        VARCHAR(11)
, cardholder                       VARCHAR(20)
, hcin                             VARCHAR(9)
, patlastnme                       VARCHAR(15)
, patfrstnme                       VARCHAR(12)
, patsocsec                        VARCHAR(9)
, personcde                        VARCHAR(3)
, relationcd                       CHAR(1)
, sexcode                          CHAR(1)
, birthdte                         INTEGER
, eligclarif                       CHAR(1)
, prmcareprv                       VARCHAR(15)
, prmcareprq                       VARCHAR(2)
, facilityid                       VARCHAR(10)
, othcoverag                       VARCHAR(2)
, groupnbr                         VARCHAR(15)
, transcde                         VARCHAR(2)
, datesbm                          INTEGER
, timesbm                          INTEGER
, chgdate                          INTEGER
, chgtime                          INTEGER
, orgpdsbmdt                       INTEGER
, rvdatesbm                        INTEGER
, clmcounter                       SMALLINT
, genericctr                       SMALLINT
, formlryctr                       SMALLINT
, rxnumber                         VARCHAR(12)
, rxnumberql                       CHAR(1)
, refill                           VARCHAR(2)
, dispstatus                       CHAR(1)
, dtefilled                        INTEGER
, prodtypcde                       VARCHAR(2)
, productid                        VARCHAR(20)
, productkey                       BIGINT
, metricqty                        INTEGER
, decimalqty                       DECIMAL(15,3)
, dayssupply                       SMALLINT
, psc                              CHAR(1)
, writtendte                       INTEGER
, nbrflsauth                       SMALLINT
, origincde                        CHAR(1)
, denialclar                       VARCHAR(2)
, sbmclarcd2                       VARCHAR(2)
, sbmclarcd3                       VARCHAR(2)
, pamcnbr                          VARCHAR(11)
, pamccde                          VARCHAR(2)
, prauthnbr                        VARCHAR(11)
, prauthrsn                        VARCHAR(2)
, prauthfdte                       INTEGER
, prauthtdte                       INTEGER
, labelname                        VARCHAR(30)
, prodname                         VARCHAR(40)
, drugmfgrid                       VARCHAR(11)
, drugmfgr                         VARCHAR(10)
, gpinumber                        VARCHAR(14)
, genericnme                       VARCHAR(40)
, compoundcd                       CHAR(1)
, sbmcmpdtyp                       VARCHAR(2)
, prdpacuom                        VARCHAR(2)
, prdpacsize                       DECIMAL(15,3)
, ddid                             INTEGER
, gcn                              INTEGER
, gcnseq                           INTEGER
, kdc                              BIGINT
, ahfs                             VARCHAR(8)
, drugdeacod                       CHAR(1)
, rxotcind                         CHAR(1)
, multsrccde                       CHAR(1)
, genindover                       CHAR(1)
, prdreimind                       CHAR(1)
, brndtrdnme                       CHAR(1)
, fdatheraeq                       VARCHAR(2)
, metricstrg                       DECIMAL(15,3)
, drgstrguom                       VARCHAR(10)
, adminroute                       VARCHAR(2)
, adminrtesn                       VARCHAR(11)
, dosageform                       VARCHAR(4)
, mntdrugcde                       CHAR(1)
, mntsource                        CHAR(1)
, thrdpartyx                       CHAR(1)
, drgunitdos                       CHAR(1)
, sbmunitdos                       CHAR(1)
, altprodtyp                       CHAR(1)
, payee_name                       VARCHAR(30)
, srxnetwrk                        VARCHAR(6)
, srxnettype                       VARCHAR(2)
, rxnetwork                        VARCHAR(6)
, rxnetwrknm                       VARCHAR(25)
, paycntr                          VARCHAR(10)
, npiprov                          VARCHAR(10)
, prvncpdpid                       VARCHAR(12)
, sbmsrvprid                       VARCHAR(15)
, sbmsrvprql                       VARCHAR(2)
, srvprovnme                       VARCHAR(55)
, provlockql                       CHAR(1)
, storenbr                         VARCHAR(15)
, disprclass                       VARCHAR(3)
, disprother                       VARCHAR(3)
, pharmzip                         VARCHAR(10)
, prescriber                       VARCHAR(15)
, prescridql                       VARCHAR(2)
, npiprescr                        VARCHAR(10)
, cctreserv9                       VARCHAR(15)
, cctreserv1                       VARCHAR(2)
, fnlplancde                       VARCHAR(10)
, fnlplandte                       INTEGER
, plantype                         VARCHAR(8)
, planqual                         VARCHAR(10)
, plnndclist                       VARCHAR(10)
, lstqualndc                       VARCHAR(10)
, plngpilist                       VARCHAR(10)
, lstqualgpi                       VARCHAR(10)
, plandrugst                       CHAR(1)
, formlrflag                       CHAR(1)
, contherapy                       CHAR(1)
, transben                         VARCHAR(10)
, rejcnt                           VARCHAR(2)
, rejcde1                          VARCHAR(3)
, rjcplanid                        VARCHAR(8)
, durconflct                       VARCHAR(2)
, lvlservice                       VARCHAR(2)
, pharsrvtyp                       VARCHAR(2)
, diagnosis                        VARCHAR(15)
, diagnosisq                       VARCHAR(2)
, rvdurcnflc                       VARCHAR(2)
, rvdurintrv                       VARCHAR(2)
, rvduroutcm                       VARCHAR(2)
, rvlvlservc                       VARCHAR(2)
, drgcnflct1                       VARCHAR(2)
, severity1                        CHAR(1)
, othrpharm1                       CHAR(1)
, dteprvfil1                       INTEGER
, qtyprvfil1                       DECIMAL(15,3)
, database1                        CHAR(1)
, othrpresc1                       CHAR(1)
, freetext1                        VARCHAR(30)
, awpunitcst                       DECIMAL(15,5)
, basiscost                        VARCHAR(2)
, priceqty                         DECIMAL(15,3)
, rvincntvsb                       DECIMAL(15,2)
, sbmingrcst                       DECIMAL(15,2)
, sbmdispfee                       DECIMAL(15,2)
, sbmslstx                         DECIMAL(15,2)
, sbmpatpay                        DECIMAL(15,2)
, phringrcst                       DECIMAL(15,2)
, phrdispfee                       DECIMAL(15,2)
, phrslstax                        DECIMAL(15,2)
, phrpatpay                        DECIMAL(15,2)
, phrdueamt                        DECIMAL(15,2)
, clientflag                       CHAR(1)
, cltingrcst                       DECIMAL(15,2)
, cltdispfee                       DECIMAL(15,2)
, cltslstax                        DECIMAL(15,2)
, cltpatpay                        DECIMAL(15,2)
, cltdueamt                        DECIMAL(15,2)
, cltwithhld                       DECIMAL(15,2)
, cltprcs                          VARCHAR(10)
, cltprcst                         VARCHAR(10)
, cltptps                          VARCHAR(10)
, cltptpst                         VARCHAR(13)
, cltcopays                        VARCHAR(10)
, cltcopayss                       SMALLINT
, cltfcopay                        DECIMAL(15,2)
, cltpcopay                        DECIMAL(15,2)
, cltcopay                         DECIMAL(15,2)
, cltprodsel                       DECIMAL(15,2)
, cltpstax                         DECIMAL(15,2)
, cltfstax                         DECIMAL(15,2)
, cltatrtax                        DECIMAL(15,2)
, cltexcebft                       DECIMAL(15,2)
, cltincentv                       DECIMAL(15,2)
, cltatrded                        DECIMAL(15,2)
, clttothamt                       DECIMAL(15,2)
, cltproffee                       DECIMAL(15,2)
, cltcob                           DECIMAL(15,2)
, cltothpaya                       DECIMAL(15,2)
, cltcostsrc                       CHAR(1)
, cltcosttyp                       VARCHAR(10)
, cltprctype                       VARCHAR(10)
, cltrate                          DECIMAL(15,2)
, cltprscstp                       SMALLINT
, cltprschnm                       VARCHAR(18)
, cltprocfee                       DECIMAL(15,2)
, cltpatstax                       DECIMAL(15,2)
, cltplnstax                       DECIMAL(15,2)
, cltprvnsel                       DECIMAL(15,2)
, cltpscbrnd                       DECIMAL(15,2)
, cltpscnonp                       DECIMAL(15,2)
, cltpscbrnp                       DECIMAL(15,2)
, cltcovgap                        DECIMAL(15,2)
, cltingcstc                       DECIMAL(15,2)
, cltdspfeec                       DECIMAL(15,2)
, transfees                        DECIMAL(15,2)
, egwptotal                        DECIMAL(15,2)
, egwpwrptot                       DECIMAL(15,2)
, egwpwrap                         CHAR(1)
, estgensav                        DECIMAL(15,2)
, ffpmedrmst                       CHAR(1)
, ffpmedpxst                       CHAR(1)
, ffpmedmsst                       CHAR(1)
, incidentid                       VARCHAR(25)
, etcnbr                           VARCHAR(30)
, adduser                          VARCHAR(10)
, chguser                          VARCHAR(10)
, dmruserid                        VARCHAR(10)
, prauserid                        VARCHAR(10)
, claimrefid                       VARCHAR(30)
, eobdnov                          VARCHAR(3)
, eobpdov                          VARCHAR(3)
, mantrknbr                        VARCHAR(14)
, manrecvdte                       INTEGER
, pasreqtype                       CHAR(1)
, cctreserv3                       CHAR(1)
, delayrsncd                       VARCHAR(2)
, medcdind                         VARCHAR(2)
, medcdid                          VARCHAR(20)
, medcdagnbr                       VARCHAR(15)
, medcdtcn                         VARCHAR(20)
, extractdte                       INTEGER
, batchctrl                        VARCHAR(21)
, prodname_2                       VARCHAR(40)
, drugmfgrid_2                     VARCHAR(11)
, prodname_3                       VARCHAR(40)
, drugmfgrid_3                     VARCHAR(11)
, prodname_4                       VARCHAR(40)
, drugmfgrid_4                     VARCHAR(11)
, prodname_5                       VARCHAR(40)
, drugmfgrid_5                     VARCHAR(11)
, prodname_6                       VARCHAR(40)
, drugmfgrid_6                     VARCHAR(11)
, prodname_7                       VARCHAR(40)
, drugmfgrid_7                     VARCHAR(11)
, prodname_8                       VARCHAR(40)
, drugmfgrid_8                     VARCHAR(11)
, prodname_9                       VARCHAR(40)
, drugmfgrid_9                     VARCHAR(11)
, prodname_10                      VARCHAR(40)
, drugmfgrid_10                    VARCHAR(11)
, file_id                          VARCHAR(25)
, src_env_sk                       BIGINT
, insert_ts                        TIMESTAMP
, update_ts                        TIMESTAMP
, insert_uid                       VARCHAR(20)
, update_uid                       VARCHAR(20)
, run_id                           BIGINT
, rec_stat_cd                      BYTEINT
);
