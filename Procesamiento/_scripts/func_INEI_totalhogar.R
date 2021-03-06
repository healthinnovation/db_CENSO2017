INEI_TotalPerHogar <- INEI_processing("Total personas hogar")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_TotalPerHogar_0_2017= rename_col_exists(.,"0"),
                INEI_TotalPerHogar_1_2017= rename_col_exists(.,"1"),
                INEI_TotalPerHogar_2_2017= rename_col_exists(.,"2"),
                INEI_TotalPerHogar_3_2017= rename_col_exists(.,"3"),
                INEI_TotalPerHogar_4_2017= rename_col_exists(.,"4"),
                INEI_TotalPerHogar_5_2017= rename_col_exists(.,"5"),
                INEI_TotalPerHogar_6_2017= rename_col_exists(.,"6"),
                INEI_TotalPerHogar_7_2017= rename_col_exists(.,"7"),
                INEI_TotalPerHogar_8_2017= rename_col_exists(.,"8"),
                INEI_TotalPerHogar_9_2017= rename_col_exists(.,"9"),
                INEI_TotalPerHogar_10_2017= rename_col_exists(.,"10"),
                INEI_TotalPerHogar_11_2017= rename_col_exists(.,"11"),
                INEI_TotalPerHogar_12_2017= rename_col_exists(.,"12"),
                INEI_TotalPerHogar_13_2017= rename_col_exists(.,"13"),
                INEI_TotalPerHogar_14_2017= rename_col_exists(.,"14"),
                INEI_TotalPerHogar_15_2017= rename_col_exists(.,"15"),
                INEI_TotalPerHogar_16_2017= rename_col_exists(.,"16"),
                INEI_TotalPerHogar_17_2017= rename_col_exists(.,"17"),
                INEI_TotalPerHogar_18_2017= rename_col_exists(.,"18"),
                INEI_TotalPerHogar_19_2017= rename_col_exists(.,"19"),
                INEI_TotalPerHogar_20_2017= rename_col_exists(.,"20"),
                INEI_TotalPerHogar_21_2017= rename_col_exists(.,"21"),
                INEI_TotalPerHogar_22_2017= rename_col_exists(.,"22"),
                INEI_TotalPerHogar_23_2017= rename_col_exists(.,"23"),
                INEI_TotalPerHogar_24_2017= rename_col_exists(.,"24"),
                INEI_TotalPerHogar_25_2017= rename_col_exists(.,"25"),
                INEI_TotalPerHogar_26_2017= rename_col_exists(.,"26"),
                INEI_TotalPerHogar_27_2017= rename_col_exists(.,"27"),
                INEI_TotalPerHogar_28_2017= rename_col_exists(.,"28"),
                INEI_TotalPerHogar_29_2017= rename_col_exists(.,"29"),
                INEI_TotalPerHogar_30_2017= rename_col_exists(.,"30"),
                INEI_TotalPerHogar_31_2017= rename_col_exists(.,"31"),
                INEI_TotalPerHogar_32_2017= rename_col_exists(.,"32"),
                INEI_TotalPerHogar_33_2017= rename_col_exists(.,"33"),
                INEI_TotalPerHogar_34_2017= rename_col_exists(.,"34"),
                INEI_TotalPerHogar_35_2017= rename_col_exists(.,"35"),
                INEI_TotalPerHogar_36_2017= rename_col_exists(.,"36"),
                INEI_TotalPerHogar_37_2017= rename_col_exists(.,"37"),
                INEI_TotalPerHogar_38_2017= rename_col_exists(.,"38"),
                INEI_TotalPerHogar_39_2017= rename_col_exists(.,"39")
  )