INEI_HogarRefrigerador <- INEI_processing("HogarRefrigerador")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_Refrigerador_No_2017= rename_col_exists(., "No tiene refrigeradora o congeladora"),
                INEI_Refrigerador_Si_2017= rename_col_exists(., "Sí tiene refrigeradora o congeladora"),
                INEI_Refrigerador_Total_2017= rename_col_exists(., "Total")
  )