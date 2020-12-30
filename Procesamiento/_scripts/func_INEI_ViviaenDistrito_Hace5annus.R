INEI_ViviaDistrito5anios<- INEI_processing("ViviaenDistrito_Hace5annus") %>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_ViviaDistr5_No_2017= rename_col_exists(.,"No vivía hace 5 años en este distrito"),
                INEI_ViviaDistr5_Si_2017= rename_col_exists(.,"Sí, vivía hace 5 años en este distrito"),
                INEI_ViviaDistr5_Total_2017= rename_col_exists(.,"Total")
  )
