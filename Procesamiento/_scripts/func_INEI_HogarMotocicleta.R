INEI_HogarMotocicleta<- INEI_processing("HogarMotocicleta") %>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_Motocicleta_No_2017= rename_col_exists(., "No tiene motocicleta"),
                INEI_Motocicleta_Si_2017= rename_col_exists(., "Sí tiene motocicleta"),
                INEI_Motocicleta_Total_2017= rename_col_exists(., "Total")
  )