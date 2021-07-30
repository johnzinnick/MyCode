SELECT YEAR(fd.flash_time) as 'Year',
MONTH(fd.flash_time) as 'Month',
fl.location_name as 'Site',
Count(fd.pass_fail) as 'Totals'
FROM fadmprd.fadm_detail fd
join fadm_location fl on
fd.location = fl.location_id 
group by Year, Month;
