INEI_HogarTelevisoraColor<- INEI_processing("HogarTelevisoraColor") %>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_Televisor_No_2017= rename_col_exists(., "No tiene televisor a color"),
                INEI_Televisor_Si_2017= rename_col_exists(., "Sí tiene televisor a color"),
                INEI_Televisor_Total_2017= rename_col_exists(., "Total")
  )