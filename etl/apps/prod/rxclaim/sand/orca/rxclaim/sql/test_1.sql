SELECT 480 AS SRC_ENV_SK,datesbm,COUNT(*) FROM clmprdext2.RCE12401
WHERE carrierid IS NOT NULL
AND carrierid NOT LIKE '%TEST%' AND carrierid NOT LIKE '%TST%'
AND clmorigin IN ('T','M','B','R','A','I','J','K', 'p')
and ( decimal(rxnumber) >= 10000 or (
sbmsrvprid not in ('1718634','0556540','1497704431','1669498515')
and srvprovid not in ('1718634','0556540','1497704431','1669498515') )) and datesbm<20240117
AND carrierid IN ('MPDMMPOH',         'MPDMMPTX',         'MPDOHCSP',         'MPDTXCSP',         'PSI2300',         'PSI2302',         'PSI2303',         'UHGRV2306',         'MPDCSMS',         'MPDCSNM',         'MPDCSOH',         'MPDCSOK',         'MPDCSP',         'MPDCSPA',         'MPDCSRI',         'MPDCSTX',         'MPDCSWA',         'MPDCSWI',         'MPDECMA',         'MPDMA2CSP',         'MPDMACSP',         'MPDMMPNY',         'MPDACUAZ',         'MPDACUMI',         'MPDACUMS',         'MPDACUNJ',         'MPDACUNY',         'MPDACUOH',         'MPDACUPA',         'MPDACUTN',         'MPDACUWI',         'MPDCSDE',         'MPDCSFL',         'MPDCSHI',         'MPDCSKS',         'MPDCSLA',         'EXCGUHCMD',         'EXCGUHCMI',         'EXCGUHCNC',         'EXCGUHCOK',         'EXCGUHCTN',         'EXCGUHCTX',         'EXCGUHCVA',         'EXCGUHCWA',         'MPD2300',         'MPD2302',         'MPD2304',         'MPDACUAR',         'ACUVAC',         'ACUVAEC',         'ACUWA',         'ACUWABH',         'ACUWAC',         'CSFL',         'CSFLD',         'CSPWRAP',         'EXCGUHCAL',         'EXCGUHCAZ',         'EXCGUHCFL',         'EXCGUHCGA',         'EXCGUHCIL',         'EXCGUHCLA',         'ACUOH',         'ACUOHMMP',         'ACUPA',         'ACUPA1',         'ACUPAC',         'ACUPAHPA',         'ACURI',         'ACUSC',         'ACUSCCHP',         'ACUTX',         'ACUTXC',         'ACUTXEC',         'ACUTXSK',         'ACUVA',         'ACUMN',         'ACUMS',         'ACUMSCHP',         'ACUNC',         'ACUNE',         'ACUNEC',         'ACUNEEC',         'ACUNM',         'ACUNMC',         'ACUNMEC',         'ACUNV',         'ACUNY',         'ACUNYEPP', 'ACUNYM', 'ACUIA', 'ACUIAC', 'ACUIAEC', 'ACUIN', 'ACUKS', 'ACUKSC', 'ACUKSEC', 'ACUKY', 'ACULA', 'ACULAC', 'ACUMAEC', 'ACUMD', 'ACUMI', 'ACUMIC', 'ACUAZ1', 'ACUAZEC', 'ACUCA', 'ACUCAC', 'ACUCAEC', 'ACUDC', 'ACUDCA', 'ACUDCH', 'ACUDE', 'ACUDEC', 'ACUFL', 'ACUFLEC', 'ACUHI', 'ACUHIEC', 'ACUAZ', 'IEXUHCRMH', 'MPDRMTN', 'RMHCAID', 'RMHCHP', 'RMHWRP', 'ACUCO', 'ACUCOC', 'EXCGUHCMO', 'EXCGUHCMS', 'EXCGUHCKS', 'EXCGUHCOH', 'MPDMNCSP', 'EXCGUHCCO')
GROUP BY 480, datesbm
UNION ALL
SELECT 490 AS SRC_ENV_SK,datesbm, COUNT(*) FROM clmp02extg.RCE12401
WHERE carrierid IS NOT NULL
AND carrierid NOT LIKE '%TEST%' AND carrierid NOT LIKE '%TST%'
AND clmorigin IN ('T','M','B','R','A','I','J','K', 'p')
and ( decimal(rxnumber) >= 10000 or (
sbmsrvprid not in ('1718634','0556540','1497704431','1669498515')
and srvprovid not in ('1718634','0556540','1497704431','1669498515') )) and datesbm<20240117
AND carrierid IN ('MPDMMPOH',         'MPDMMPTX',         'MPDOHCSP',         'MPDTXCSP',         'PSI2300',         'PSI2302',         'PSI2303',         'UHGRV2306',         'MPDCSMS',         'MPDCSNM',         'MPDCSOH',         'MPDCSOK',         'MPDCSP',         'MPDCSPA',         'MPDCSRI',         'MPDCSTX',         'MPDCSWA',         'MPDCSWI',         'MPDECMA',         'MPDMA2CSP',         'MPDMACSP',         'MPDMMPNY',         'MPDACUAZ',         'MPDACUMI',         'MPDACUMS',         'MPDACUNJ',         'MPDACUNY',         'MPDACUOH',         'MPDACUPA',         'MPDACUTN',         'MPDACUWI',         'MPDCSDE',         'MPDCSFL',         'MPDCSHI',         'MPDCSKS',         'MPDCSLA',         'EXCGUHCMD',         'EXCGUHCMI',         'EXCGUHCNC',         'EXCGUHCOK',         'EXCGUHCTN',         'EXCGUHCTX',         'EXCGUHCVA',         'EXCGUHCWA',         'MPD2300',         'MPD2302',         'MPD2304',         'MPDACUAR',         'ACUVAC',         'ACUVAEC',         'ACUWA',         'ACUWABH',         'ACUWAC',         'CSFL',         'CSFLD',         'CSPWRAP',         'EXCGUHCAL',         'EXCGUHCAZ',         'EXCGUHCFL',         'EXCGUHCGA',         'EXCGUHCIL',         'EXCGUHCLA',         'ACUOH',         'ACUOHMMP',         'ACUPA',         'ACUPA1',         'ACUPAC',         'ACUPAHPA',         'ACURI',         'ACUSC',         'ACUSCCHP',         'ACUTX',         'ACUTXC',         'ACUTXEC',         'ACUTXSK',         'ACUVA',         'ACUMN',         'ACUMS',         'ACUMSCHP',         'ACUNC',         'ACUNE',         'ACUNEC',         'ACUNEEC',         'ACUNM',         'ACUNMC',         'ACUNMEC',         'ACUNV',         'ACUNY',         'ACUNYEPP', 'ACUNYM', 'ACUIA', 'ACUIAC', 'ACUIAEC', 'ACUIN', 'ACUKS', 'ACUKSC', 'ACUKSEC', 'ACUKY', 'ACULA', 'ACULAC', 'ACUMAEC', 'ACUMD', 'ACUMI', 'ACUMIC', 'ACUAZ1', 'ACUAZEC', 'ACUCA', 'ACUCAC', 'ACUCAEC', 'ACUDC', 'ACUDCA', 'ACUDCH', 'ACUDE', 'ACUDEC', 'ACUFL', 'ACUFLEC', 'ACUHI', 'ACUHIEC', 'ACUAZ', 'IEXUHCRMH', 'MPDRMTN', 'RMHCAID', 'RMHCHP', 'RMHWRP', 'ACUCO', 'ACUCOC', 'EXCGUHCMO', 'EXCGUHCMS', 'EXCGUHCKS', 'EXCGUHCOH', 'MPDMNCSP', 'EXCGUHCCO')
GROUP BY 490, datesbm
