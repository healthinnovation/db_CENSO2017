INEI_servicio_higienico <- INEI_processing("servicio_higienico")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_ServHig_CampoAire_2017= rename_col_exists(.,"Campo abierto o al aire libre"  ),
                INEI_ServHig_Letrina_2017= rename_col_exists(.,"Letrina (con tratamiento)"),
                INEI_ServHig_PozoCiego_2017= rename_col_exists(.,"Pozo ciego o negro"),
                INEI_ServHig_PozoTanqueBio_2017= rename_col_exists(.,"Pozo séptico, tanque séptico o biodigestor"),
                INEI_ServHig_RedDentroViv_2017= rename_col_exists(.,"Red pública de desagüe dentro de la vivienda"),
                INEI_ServHig_RedFueraVivEdif_2017= rename_col_exists(.,"Red pública de desagüe fuera de la vivienda, pero dentro de la edificación"),
                INEI_ServHig_RioAceq_2017= rename_col_exists(.,"Río, acequia, canal o similar"),
                INEI_ServHig_Otro_2017= rename_col_exists(.,"Otro"),
                INEI_ServHig_Na_2017= rename_col_exists(.,"No Aplica :"),
                INEI_ServHig_Total_2017= rename_col_exists(.,"Total")
  )



