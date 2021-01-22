INEI_equipo_sonido <- INEI_processing("equipo_sonido")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_eqp.sonido_No_2017= rename_col_exists(.,"No tiene equipo de sonido"),
                INEI_eqp.sonido_Si_2017= rename_col_exists(.,"Sí tiene equipo de sonido"),
                INEI_eqp.sonido_NA_2017= rename_col_exists(.,"No Aplica :"),
                INEI_eqp.sonido_Total_2017= rename_col_exists(.,"Total")
  )
