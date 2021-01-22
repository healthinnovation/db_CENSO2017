INEI_nro_habitaciones_vivienda <- INEI_processing("nro_habitaciones_vivienda")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_habitacionseViv_1Hab_2017= rename_col_exists(.,"1 habitación"),
                INEI_habitacionseViv_2Hab_2017= rename_col_exists(.,"2 habitación"),
                INEI_habitacionseViv_3Hab_2017= rename_col_exists(.,"3 habitación"),
                INEI_habitacionseViv_4Hab_2017= rename_col_exists(.,"4 habitación"),
                INEI_habitacionseViv_5Hab_2017= rename_col_exists(.,"5 habitación"),
                INEI_habitacionseViv_6Hab_2017= rename_col_exists(.,"6 habitación"),
                INEI_habitacionseViv_7Hab_2017= rename_col_exists(.,"7 habitación"),
                INEI_habitacionseViv_8Hab_2017= rename_col_exists(.,"8 habitación"),
                INEI_habitacionseViv_9Hab_2017= rename_col_exists(.,"9 habitación"),
                INEI_habitacionseViv_10Hab_2017= rename_col_exists(.,"10 habitación"),
                INEI_habitacionseViv_11Hab_2017= rename_col_exists(.,"11 habitación"),
                INEI_habitacionseViv_12Hab_2017= rename_col_exists(.,"12 habitación"),
                INEI_habitacionseViv_13Hab_2017= rename_col_exists(.,"13 habitación"),
                INEI_habitacionseViv_14Hab_2017= rename_col_exists(.,"14 habitación"),
                INEI_habitacionseViv_15Hab_2017= rename_col_exists(.,"15 habitación"),
                INEI_habitacionseViv_NA_2017= rename_col_exists(.,"No Aplica :"),
                INEI_habitacionseViv_Total_2017= rename_col_exists(.,"Total")
  )




