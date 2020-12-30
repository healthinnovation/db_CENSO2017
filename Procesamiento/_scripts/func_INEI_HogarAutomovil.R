INEI_HogarAutomovil <- INEI_processing("HogarAutomovil")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_Automovil_No_2017= rename_col_exists(., "No tiene automóvil, camioneta"),
                INEI_Automovil_Si_2017= rename_col_exists(., "Sí tiene automóvil, camioneta"),
                INEI_Automovil_Total_2017= rename_col_exists(., "Total")
  )