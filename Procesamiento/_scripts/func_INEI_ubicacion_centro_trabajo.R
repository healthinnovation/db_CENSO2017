INEI_ubicacion_centro_trabajo <- INEI_processing("ubicacion_centro_trabajo")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_cntr.trb_EnDistrito_2017= rename_col_exists(.,"En este distrito"),
                INEI_cntr.trb_EnOtroDistrito_2017= rename_col_exists(.,"En otro distrito"),
                INEI_cntr.trb_NA_2017= rename_col_exists(.,"No Aplica :"),
                INEI_cntr.trb_Total_2017= rename_col_exists(.,"Total")
  )

