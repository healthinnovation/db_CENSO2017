INEI_Tenencia <- INEI_processing("TenenciadeVivienda") %>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_tenenciaviv_Alq_2017= rename_col_exists(.,"Alquilada"),
                INEI_tenenciaviv_Ced_2017= rename_col_exists(.,"Cedida"),
                INEI_tenenciaviv_NA_2017= rename_col_exists(.,"No Aplica :"),
                INEI_tenenciaviv_Otro_2017= rename_col_exists(.,"Otra forma"),
                INEI_tenenciaviv_con.titl_2017= rename_col_exists(.,"Propia con título de propiedad"),
                INEI_tenenciaviv_sin.titl_2017= rename_col_exists(.,"Propia sin título de propiedad"),
                INEI_tenenciaviv_Total_2017= rename_col_exists(.,"Total")
  )
