INEI_ubicacion_institucion_educativa <- INEI_processing("ubicacion_institucion_educativa")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_Inst.Edu_EnDistrito_2017= rename_col_exists(.,"En este distrito"),
                INEI_Inst.Edu_EnOtroDistrito_2017= rename_col_exists(.,"En otro distrito"),
                INEI_Inst.Edu_NA_2017= rename_col_exists(.,"No Aplica :"),
                INEI_Inst.Edu_Total_2017= rename_col_exists(.,"Total")
  )

