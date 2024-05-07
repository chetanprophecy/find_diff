create table sandbox..ss_030_d_pa_pres_unq as
select  b.pa_pbr_sk,b.pa_prov_id,b.prov_id_qualfr,b.src_prov_key,b.prov_fst_nm,b.prov_midl_nm,b.prov_lst_nm,b.prov_adr_1,b.prov_adr_2,b.adr_qualfr,b.adr_typ,b.prov_city,b.prov_country,b.prov_fax,b.prov_tel,b.prov_tel_extn,b.prov_email,b.py_adr,b.speciality_cd,b.speciality_desc,b.prov_st,b.prov_tax_id,b.vend_key,b.
prov_zipcode,b.prov_id_st,b.alt_tel_nbr,b.insert_uid,b.update_uid,b.run_id,b.rec_stat_cd,b.src_env_sk,b.insert_ts,b.update_ts from(
select a.*, row_number() over(partition by pa_prov_id,prov_id_qualfr,src_prov_key,prov_fst_nm,prov_midl_nm,prov_lst_nm,prov_adr_1,prov_adr_2,
adr_qualfr,adr_typ,prov_city,prov_country,prov_fax,prov_tel,prov_tel_extn,prov_email,py_adr,speciality_cd,speciality_desc,prov_st,prov_tax_id,vend_key,
prov_zipcode,prov_id_st,alt_tel_nbr order by update_ts desc) as rn
from (select pa_pbr_sk,case when trim(pa_prov_id)='' or pa_prov_id is null then '-' else nvl(pa_prov_id,'-') end as pa_prov_id,
case when trim(prov_id_qualfr)='' or prov_id_qualfr is null then '-' else nvl(prov_id_qualfr,'-') end as prov_id_qualfr,
case when trim(src_prov_key)='' or src_prov_key is null then '-' else nvl(src_prov_key,'-') end as src_prov_key,
case when trim(prov_fst_nm)='' or prov_fst_nm is null then '-' else nvl(prov_fst_nm,'-') end as prov_fst_nm,
case when trim(prov_midl_nm)='' or prov_midl_nm is null then '-' else nvl(prov_midl_nm,'-') end as prov_midl_nm,
case when trim(prov_lst_nm)='' or prov_lst_nm is null then '-' else nvl(prov_lst_nm,'-') end as prov_lst_nm,
case when trim(prov_adr_1)='' or prov_adr_1 is null then '-' else nvl(prov_adr_1,'-') end as prov_adr_1,
case when trim(prov_adr_2)='' or prov_adr_2 is null then '-' else nvl(prov_adr_2,'-') end as prov_adr_2,
case when trim(adr_qualfr)='' or adr_qualfr is null then '-' else nvl(adr_qualfr,'-') end as adr_qualfr,
case when trim(adr_typ)='' or adr_typ is null then '-' else nvl(adr_typ,'-') end as adr_typ,
case when trim(prov_city)='' or prov_city is null then '-' else nvl(prov_city,'-') end as prov_city,
case when trim(prov_country)='' or prov_country is null then '-' else nvl(prov_country,'-') end as prov_country,
case when trim(prov_fax)='' or prov_fax is null then '-' else nvl(prov_fax,'-') end as prov_fax,
case when trim(prov_tel)='' or prov_tel is null then '-' else nvl(prov_tel,'-') end as prov_tel,
case when trim(prov_tel_extn)='' or prov_tel_extn is null then '-' else nvl(prov_tel_extn,'-') end as prov_tel_extn,
case when trim(prov_email)='' or prov_email is null then '-' else nvl(prov_email,'-') end as prov_email,
case when trim(py_adr)='' or py_adr is null then '-' else nvl(py_adr,'-') end as py_adr,
case when trim(speciality_cd)='' or speciality_cd is null then '-' else nvl(speciality_cd,'-') end as speciality_cd,
case when trim(speciality_desc)='' or speciality_desc is null then '-' else nvl(speciality_desc,'-') end as speciality_desc,
case when trim(prov_st)='' or prov_st is null then '-' else nvl(prov_st,'-') end as prov_st,
case when trim(prov_tax_id)='' or prov_tax_id is null then '-' else nvl(prov_tax_id,'-') end as prov_tax_id,
case when trim(vend_key)='' or vend_key is null then '-' else nvl(vend_key,'-') end as vend_key,
case when trim(prov_zipcode)='' or prov_zipcode is null then '-' else nvl(prov_zipcode,'-') end as prov_zipcode,
case when trim(prov_id_st)='' or prov_id_st is null then '-' else nvl(prov_id_st,'-') end as prov_id_st,
case when trim(alt_tel_nbr)='' or alt_tel_nbr is null then '-' else nvl(alt_tel_nbr,'-') end as alt_tel_nbr,
insert_uid,update_uid,run_id,rec_stat_cd,src_env_sk,insert_ts,update_ts
from orx_idw_dm_prd..d_pa_prescriber) a) b where b.rn=1;
