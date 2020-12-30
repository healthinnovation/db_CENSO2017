INEI_HogarAlumbradoElectricoRedPublica<- INEI_processing("HogarAlumbradoElectricoRedPublica")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_AlumbradoElectri_No_2017= rename_col_exists(., "No tiene alumbrado eléctrico"),
                INEI_AlumbradoElectri_Si_2017= rename_col_exists(., "Sí tiene alumbrado eléctrico"),
                INEI_AlumbradoElectri_Total_2017= rename_col_exists(., "Total")
  )