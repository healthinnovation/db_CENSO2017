INEI_HogarBoteLanchaCanoa <- INEI_processing("HogarBoteLanchaCanoa")%>%
  dplyr::select(dep,prov,distr,ubigeo,cat_edad,ubigeo,
                INEI_BoteLancha_No_2017= rename_col_exists(., "No tiene lancha, bote motor o  peque peque, canoa"),
                INEI_BoteLancha_Si_2017= rename_col_exists(., "Sí tiene lancha, bote motor o  peque peque, canoa"),
                INEI_BoteLancha_Total_2017= rename_col_exists(., "Total")
  )