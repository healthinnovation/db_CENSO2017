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