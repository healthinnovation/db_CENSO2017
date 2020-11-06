
# Procesamiento de datos relacionados a aseguramiento

INEI_AflSeg <- INEI_processing("Poblacion afiliada seguros") %>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_AflSeg_EsSalud_2017= rename_col_exists(., "Solo EsSalud"),
                INEI_AflSeg_EsSalud.FFAAPNP_2017= rename_col_exists(., "EsSalud y Seguro de fuerzas armadas o policiales"),
                INEI_AflSeg_EsSalud.Priv_2017= rename_col_exists(., "EsSalud y Seguro privado de salud"),
                INEI_AflSeg_EsSalud.Priv.FFAAPNP_2017= rename_col_exists(., "EsSalud, Seguro de fuerzas armadas o policiales y Seguro privado de salud"),
                INEI_AflSeg_EsSalud.Priv.Otro_2017= rename_col_exists(., "EsSalud, Seguro privado de salud y Otro seguro"),
                INEI_AflSeg_EsSalud.FFAAPNP.Otro_2017= rename_col_exists(., "EsSalud, Seguro de fuerzas armadas o policiales y Otro seguro"),
                INEI_AflSeg_EsSalud.Otro_2017 = rename_col_exists(., "EsSalud y Otro seguro"),
                INEI_AflSeg_FFAAPNP_2017= rename_col_exists(., "Solo Seguro de fuerzas armadas o policiales"),
                INEI_AflSeg_FFAAPNP.Priv_2017= rename_col_exists(., "Seguro de fuerzas armadas o policiales y Seguro privado de salud"),
                INEI_AflSeg_FFAAPNP.Priv.Otro_2017= rename_col_exists(., "Seguro de fuerzas armadas o policiales, Seguro privado de salud y Otro seguro"),
                INEI_AflSeg_FFAAPNP.Otro_2017= rename_col_exists(., "Seguro de fuerzas armadas o policiales y Otro seguro"),
                INEI_AflSeg_SIS_2017= rename_col_exists(., "Solo Seguro Integral de Salud (SIS)"),
                INEI_AflSeg_SIS.EsSalud_2017= rename_col_exists(., "Seguro Integral de Salud (SIS) y EsSalud"),
                INEI_AflSeg_SIS.Priv_2017= rename_col_exists(., "Seguro Integral de Salud (SIS) y Seguro privado de salud"),
                INEI_AflSeg_SIS.Priv.Otro_2017= rename_col_exists(., "Seguro Integral de Salud (SIS), Seguro privado de salud y Otro seguro"),
                INEI_AflSeg_SIS.Otro_2017= rename_col_exists(., "Seguro Integral de Salud (SIS) y Otro seguro"),
                INEI_AflSeg_Priv_2017= rename_col_exists(., "Solo Seguro privado de salud"),
                INEI_AflSeg_Priv.Otro_2017= rename_col_exists(., "Seguro privado de salud y Otro seguro"),
                INEI_AflSeg_Otro_2017= rename_col_exists(., "Solo Otro seguro"),
                INEI_AflSeg_NoSeg_2017= rename_col_exists(., "No tiene ningún seguro")
  )


INEI_AflEsSalud <- INEI_processing("Poblacion ESSALUD")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_AflEsSalud_NoAfl_2017= rename_col_exists(., "No está afiliado al EsSalud"),
                INEI_AflEsSalud_SiAfl_2017= rename_col_exists(., "Sí, afiliado al EsSalud"),
                INEI_AflEsSalud_Total_2017= rename_col_exists(., "Total")
  )

INEI_AflFFAA <- INEI_processing("Poblacion FFAA.FFPP" )%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_AflFFAA_NoAfl_2017= rename_col_exists(., "No está afiliado al seguro de fuerzas armadas o policiales"),
                INEI_AflFFAA_SiAfl_2017= rename_col_exists(., "Sí, afiliado al seguro de fuerzas armadas o policiales"),
                INEI_AflFFAA_Total_2017= rename_col_exists(., "Total")
  )

INEI_AflNoSeg <- INEI_processing("Población ningún seguro")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_NoAfl_NoSeg_2017= rename_col_exists(., "No se encuentra afiliado a ningún seguro"),
                INEI_NoAfl_SiSeg_2017= rename_col_exists(., "Sí, se encuentra afiliado a algún seguro"),
                INEI_NoAfl_Total_2017= rename_col_exists(., "Total")
  )

INEI_AflPrivSeg <- INEI_processing("Poblacion seguro privado")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_AflPrivSeg_NoAfl_2017= rename_col_exists(., "No está afiliado a seguro privado de salud"),
                INEI_AflPrivSeg_SiAfl_2017= rename_col_exists(., "Sí, afiliado a seguro privado de salud"),
                INEI_AflPrivSeg_Total_2017= rename_col_exists(., "Total")
  )

INEI_AflSIS <- INEI_processing("Poblacion SIS")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_AflSIS_NoAfl_2017= rename_col_exists(., "No está afiliado al SIS"),
                INEI_AflSIS_SiAfl_2017= rename_col_exists(., "Sí, afiliado al SIS"),
                INEI_AflSIS_Total_2017= rename_col_exists(., "Total")
  )











