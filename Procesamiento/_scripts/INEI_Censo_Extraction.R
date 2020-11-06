 INEI_AbsAgu <- INEI_processing("Abastecimiento agua") %>%
         select(dep,prov,distr,ubigeo,cat_edad,ubigeo, #"AbsAguVvn" = paste0(abbreviate("Abastecimiento",3),abbreviate("Agua",3),abbreviate("Vivienda",3))
            INEI_AbsAguVvn_RdPVvn_2017 = rename_col_exists (.,"Red pública dentro de la vivienda"), #"RdPVvn" = paste0(abbreviate("Red Pública",3),abbreviate("Vivienda",3))
            INEI_AbsAguVvn_RdPEdf_2017= rename_col_exists (.,"Red pública fuera de la vivienda, pero dentro de la edificación"), #RdPEdf = paste0(abbreviate("Red Pública",3),abbreviate("Edificación",3))
            INEI_AbsAguVvn_PlnPbl_2017=  rename_col_exists (.,"Pilón o pileta de uso público"), # "PlnPbl" = paste0(abbreviate("Pilon",3),abbreviate("Publico",3))
            INEI_AbsAguVvn_CmCSml_2017=  rename_col_exists (.,"Camión - cisterna u otro similar") , # "CmCSml" = paste0(abbreviate("Camión Cisterna",3),abbreviate("Similar",3))
            INEI_AbsAguVvn_PozAgs_2017= rename_col_exists (.,"Pozo (agua subterránea)"), #"PozAgs" = paste0(abbreviate("Pozo",3),abbreviate("Agua subterranea",3))
            INEI_AbsAguVvn_MnnPuq_2017 =rename_col_exists (.,"Manantial o puquio"), #"MnnPuq" = paste0(abbreviate("Manantial",3),abbreviate("Puquio",3))
            INEI_AbsAguVvn_RioLag_2017= rename_col_exists (.,"Río, acequia, lago, laguna"), #"RioLag" = paste0(abbreviate("Rio",3),abbreviate("Lago",3))
            INEI_AbsAguVvn_Vcn_2017= rename_col_exists (.,"Vecino"), #abbreviate("Vecino",3)
            INEI_AbsAguVvn_Otro_2017= rename_col_exists (.,"Otro"), # Excepción a regla de 3
            INEI_AbsAguVvn_Total_2017= rename_col_exists (.,"Total") , # Excepción a regla de 3
            INEI_AbsAguVvn_NA_2017= rename_col_exists (.,"No Aplica :")  # Excepción a regla de 3
         )

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

INEI_Sexo <- INEI_processing("Sexo")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_Sexo_Mas_2017= rename_col_exists(.,"Hombre"),
                INEI_Sexo_Fem_2017= rename_col_exists(.,"Mujer")
  )

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


INEI_VivianDistrito5 <- INEI_processing("ViviaenDistrito_Hace5annus")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_viv.distr.5_NotBorn_2017= rename_col_exists(.,"Aún no había nacido"),
                INEI_viv.distr.5_No_2017= rename_col_exists(.,"No vivía hace 5 años en este distrito"),
                INEI_viv.distr.5_Si_2017= rename_col_exists(.,"Sí, vivía hace 5 años en este distrito"),
                INEI_viv.distr.5_Total_2017= rename_col_exists(.,"Total")
  )

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



INEI_TenenciadeVivienda <- INEI_processing("TenenciadeVivienda")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_TncViv_Alq_2017= rename_col_exists(.,"Alquilada"),
                INEI_TncViv_Cdd_2017= rename_col_exists(.,"Cedida"),
                INEI_TncViv_Otro_2017= rename_col_exists(.,"Otra forma"),
                INEI_TncViv_NA_2017= rename_col_exists(.,"No Aplica :"),
                INEI_TncViv_Prop.sTitl_2017= rename_col_exists(.,"Propia con título de propiedad"),
                INEI_TncViv_Prop.nTitl_2017= rename_col_exists(.,"Propia sin título de propiedad"),
                INEI_TncViv_TOtal_2017= rename_col_exists(.,"Total")
  )


### Consolidación

llave.inei <- c(llave,"ubigeo")
INEI_final<- data.frame(dep = as.character(),
                        prov =as.character(),
                        distr =as.character(),
                        cat_edad=as.character(),
                        ubigeo=as.character())

INEI_final <- INEI_final %>% 
  merge(INEI_AflSeg,
        by=llave.inei,all=T)%>% 
  merge(INEI_AflEsSalud,
        by=llave.inei,all=T)%>% 
  merge(INEI_AflFFAA,
        by=llave.inei,all=T)%>% 
  merge(INEI_AflNoSeg,
        by=llave.inei,all=T)%>% 
  merge(INEI_AflPrivSeg,
        by=llave.inei,all=T)%>% 
  merge(INEI_AflSIS,
        by=llave.inei,all=T)%>% 
  merge(INEI_Sexo,
        by=llave.inei,all=T)%>% 
  merge(INEI_TotalPerHogar,
        by=llave.inei,all=T)%>% 
  merge(INEI_NiveldeEstudio,
        by=llave.inei,all=T)%>% 
  merge(INEI_VivianDistrito5,
        by=llave.inei,all=T)%>% 
  merge(INEI_Autoidentificacion,
        by=llave.inei,all=T)%>% 
  merge(INEI_TenenciadeVivienda,
        by=llave.inei,all=T)

rm(INEI_AflSeg,INEI_AflEsSalud,
   INEI_AflFFAA,INEI_AflNoSeg,INEI_AflPrivSeg,
   INEI_AflSIS,INEI_Sexo,
   INEI_TotalPerHogar,llave.inei,
   INEI_NiveldeEstudio,INEI_VivianDistrito5,
   INEI_Autoidentificacion,INEI_TenenciadeVivienda
)
