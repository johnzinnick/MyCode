--Inquest DB Query

SELECT UniqueID, 
IMEI,  
Vendor, 
Model, 
Pass, 
DateTested  
FROM pfprd.CPIToolTestResults_AWRE 
where DateTested BETWEEN DATE_SUB(NOW(),INTERVAL 60 DAY) and DATE_SUB(NOW(),INTERVAL 1 DAY) ;



--WMS Data Query
SELECT rmaact_id, 
dtlnum, 
adddte, 
mod_usr_id, 
rmatyp, 
lngdsc
FROM wmsdata.tmo
where adddte BETWEEN DATE_SUB(NOW(),INTERVAL 60 DAY) and DATE_SUB(NOW(),INTERVAL 1 DAY) ;
