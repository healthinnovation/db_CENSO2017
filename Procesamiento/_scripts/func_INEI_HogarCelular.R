INEI_HogarCelular <- INEI_processing("HogarCelular")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_Celular_No_2017= rename_col_exists(., "No tiene teléfono celular"),
                INEI_Celular_Si_2017= rename_col_exists(., "Sí tiene teléfono celular"),
                INEI_Celular_Total_2017= rename_col_exists(., "Total")
  )