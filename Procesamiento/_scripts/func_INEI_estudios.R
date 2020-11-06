INEI_NiveldeEstudio <- INEI_processing("NiveldeEstudio")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_niv.ins_IniPre_2017= rename_col_exists(.,"Inicial"),
                INEI_niv.ins_BscEsp_2017= rename_col_exists(.,"Básica especial"),
                INEI_niv.ins_NngLlt_2017= rename_col_exists(.,"Sin Nivel"),
                INEI_niv.ins_SprUnvInc_2017= rename_col_exists(.,"Superior universitaria incompleta"),
                INEI_niv.ins_SprUnvComp_2017= rename_col_exists(.,"Superior universitaria completa"),
                INEI_niv.ins_SprNUnInc_2017= rename_col_exists(.,"Superior no universitaria incompleta"),
                INEI_niv.ins_SprNUnCmp_2017= rename_col_exists(.,"Superior no universitaria completa"),
                INEI_niv.ins_Prm_2017= rename_col_exists(.,"Primaria"),
                INEI_niv.ins_Scn_2017= rename_col_exists(.,"Secundaria"),
                INEI_niv.ins_NA_2017= rename_col_exists(.,"No Aplica :"),
                INEI_niv.ins_MasDoc_2017= rename_col_exists(.,"Maestría / Doctorado"),
                INEI_niv.ins_Total_2017= rename_col_exists(.,"Total")
  )
