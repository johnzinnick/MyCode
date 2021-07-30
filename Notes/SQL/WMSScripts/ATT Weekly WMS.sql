[select usr_rmaact.rmaact_id,
        usr_rmaact.dtlnum,
        usr_rmaact.rmanum,
        usr_rmaact.client_id,
        usr_rmaact.rmaprt,
        usr_rmaact.rcvprt,
        usr_rmaact.prtnum,
        usr_rmaact.rcvsts,
        usr_rmaact.retcod,
        usr_rmaact.rtnrsncod,
        usr_rmaact.bldg_id,
        usr_rmaact.arecod,
        usr_rmaact.stoloc,
        usr_rmaact.wh_id,
        usr_rmaact.adddte,
        usr_rmaact.mod_usr_id,
        usr_rmaact.rmatyp,
        usr_rmaact.sales_channel,
        usr_rmaact.ordnum,
        usr_rmaact.devcod,
        prtmst_view.prtfam,
        prtmst_view.untcst,
        prtmst_view.uc_supplier,
        prtmst_view.uc_make,
        prtmst_view.uc_model,
        prtmst_view.uc_family,
        prtmst_view.uc_subfam,
        prtdsc.colval,
        prtdsc.lngdsc
   from prtdsc,
        usr_rmaact
   join prtmst_view
     on (usr_rmaact.prtnum = prtmst_view.prtnum and usr_rmaact.prt_client_id = prtmst_view.prt_client_id and usr_rmaact.wh_id = prtmst_view.wh_id_tmpl)
  where usr_rmaact.wh_id = 'WMD1'
    and usr_rmaact.client_id = 'RLO'
    and prtmst_view.prtfam = 'PHONE'
    and usr_rmaact.adddte between to_date(sysdate - 8)
    and to_date(sysdate - 1)
    and prtdsc.colval = usr_rmaact.prtnum || '|' || usr_rmaact.client_id || '|' || usr_rmaact.wh_id]