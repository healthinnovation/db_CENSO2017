INEI_HogarInternet <- INEI_processing("HogarInternet")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_Internet_No_2017= rename_col_exists(., "No tiene conexión a internet"),
                INEI_Internet_Si_2017= rename_col_exists(., "Sí tiene conexión a internet"),
                INEI_Internet_Total_2017= rename_col_exists(., "Total")
  )