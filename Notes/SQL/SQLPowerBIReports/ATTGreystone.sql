SELECT
  att.adddte,
  att.id,
  att.rmaact_id,
  att.dtlnum,
  greystone111.`IMEI/MEID`,
  greystone111.`Erasure Status`
FROM att
       LEFT OUTER JOIN greystone111
         ON att.dtlnum = greystone111.`IMEI/MEID`
WHERE att.adddte >= '2021-07-15'
UNION
SELECT
  att.adddte,
  att.id,
  att.rmaact_id,
  att.dtlnum,
  greystone111.`IMEI/MEID`,
  greystone111.`Erasure Status`
FROM greystone111
       LEFT OUTER JOIN att
         ON greystone111.`IMEI/MEID` = att.dtlnum
WHERE att.adddte >= '2021-07-15'