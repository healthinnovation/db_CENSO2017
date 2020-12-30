INEI_HogarCompu <- INEI_processing("HogarComputadora")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_CmpuLaptTab_No_2017= rename_col_exists(., "No tiene computadora/Laptop/Tablet"),
                INEI_CmpuLaptTab_Si_2017= rename_col_exists(., "Sí tiene computadora/Laptop/Tablet"),
                INEI_CmpuLaptTab_Total_2017= rename_col_exists(., "Total")
  )