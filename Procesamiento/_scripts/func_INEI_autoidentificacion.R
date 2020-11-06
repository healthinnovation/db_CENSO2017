INEI_Autoidentificacion <- INEI_processing("Autoidentificacion") %>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_autoident_Aim_2017= rename_col_exists(.,"Aimara"),
                INEI_autoident_Blc_2017= rename_col_exists(.,"Blanco"),
                INEI_autoident_Mst_2017= rename_col_exists(.,"Mestizo"),
                INEI_autoident_Natv_2017= rename_col_exists(.,"Nativo o indígena de la amazonía"),
                INEI_autoident_Nmza_2017= rename_col_exists(.,"Negro, moreno, zambo, mulato / pueblo afroperuano o afrodescendiente"),
                INEI_autoident_Nkke_2017= rename_col_exists(.,"Nikkei"),
                INEI_autoident_NA_2017= rename_col_exists(.,"No Aplica :"),
                INEI_autoident_Otro_2017= rename_col_exists(.,"Otro"),
                INEI_autoident_Qch_2017= rename_col_exists(.,"Quechua"),
                INEI_autoident_Tsn_2017= rename_col_exists(.,"Tusán"),
                INEI_autoident_Total_2017= rename_col_exists(.,"Total"),
                INEI_autoident_Otro.Pbl_2017= rename_col_exists(.,"Parte de otro pueblo indígena u originario"),
                INEI_autoident_NsNr_2017= rename_col_exists(.,"No sabe /  No responde")
  )

