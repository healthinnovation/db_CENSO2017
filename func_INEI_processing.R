#Ignorando el archuvo individual de "RegionLima" y "ProvinciaLima", todo est aincluido en "LIMA"
INEI_processing <- function(folder) {
  
  x <- c("RegionLima.xlsX","ProvinciaLima.xlsX")
  list <- list.files(paste0("./RAW_DATA/Censo 2017/",folder))
  list <- list[!list %in% x]
  
  for(i in 1:length(list)) {
    
    temp.df <- read_excel(paste0("./RAW_DATA/Censo 2017/",folder,"/",list[i]),
                          col_names = FALSE)%>%
      replace(.=="De 0  a 4 años","00-04")%>%replace(.=="De 5  a 9 años","05-09")%>%
      replace(.=="De 10 a 14 años","10-14")%>%replace(.=="De 15 a 19 años","15-19")%>%
      replace(.=="De 20 a 24 años","20-24")%>%replace(.=="De 25 a 29 años","25-29")%>%
      replace(.=="De 30 a 34 años","30-34")%>%replace(.=="De 35 a 39 años","35-39")%>%
      replace(.=="De 40 a 44 años","40-44")%>%replace(.=="De 45 a 49 años","45-49")%>%
      replace(.=="De 50 a 54 años","50-54")%>%replace(.=="De 55 a 59 años","55-59")%>%
      replace(.=="De 60 a 64 años","60-64")%>%replace(.=="De 65 a 69 años","65-69")%>%
      replace(.=="De 70 a 74 años","70-74")%>%replace(.=="De 75 a 79 años","75-79")%>%
      replace(.=="De 80 a 84 años","80-84")%>%replace(.=="De 85 a 89 años","85-89")%>%
      replace(.=="De 90 a 94 años","90-94")%>%replace(.=="De 95 a más","95-+") # Probablemente podría ser más rapido si solo se cambian las variables de la fila 4 pero shrug
    
    temp.df <- temp.df[-6:-1,-1] #Elimina las primeras (6) filas y 1ra columna - no funcionales
    names(temp.df) <- temp.df[4,] #Rename de columnas
    names(temp.df)[1] <- temp.df[3,1]
    
    temp.df <- temp.df[rowSums(is.na(temp.df)) != ncol(temp.df), ] #Elimina filas en blanco
    
    
    var <- names(temp.df)[1]
    
    if (folder == "Autoidentificacion") {
      initial_agecat <- sym("10-14")
    } else {initial_agecat <- sym("00-04")}
    
    temp.df <- temp.df %>% mutate(dep = ifelse(temp.df[[2]] != "P: Edad en grupos quinquenales" & 
                                                 temp.df[[2]] != as.character(initial_agecat) & 
                                                 as.integer(nchar(temp.df[[2]]))>10,
                                               temp.df[[2]], NA),
                                  ubigeo = ifelse(grepl("AREA #", temp.df[[1]]),
                                                  temp.df[[1]],NA)
    ) # Extracción de Ubigeo y Departamento
    
    temp.df$dep <- na.locf(temp.df$dep) # Arreglos Ubigeo y Departamento
    temp.df$ubigeo <- na.locf(temp.df$ubigeo) # Arreglos Ubigeo y Departamento
    
    temp.df <- temp.df[!(temp.df[[1]]==var | 
                           temp.df[[2]]==as.character(initial_agecat)|
                           grepl("AREA #", temp.df[[1]])
    ),] #Elimina filas innecesarias
    
    
    temp.df<- temp.df %>% 
      mutate(Total = if_else(temp.df[[1]] =="No Aplica :",
                             temp.df[[2]],Total),
             !!initial_agecat := if_else(temp.df[[1]] =="No Aplica :",
                                         as.character(0),temp.df[[2]])
      ) %>% 
      replace(is.na(.), as.character(0)) %>% 
      replace(. == "-", as.character(0))
    
    # INEI shenanigans
    #Resumen <- temp.df[which(temp.df[1] == "0"):nrow(temp.df),1:ncol(temp.df)]
    temp.df <-temp.df[1:(which(temp.df[1] == "0" & temp.df[ncol(temp.df)] == "0"))-1,1:ncol(temp.df)]
    
    #Variables disponibles unique(temp.df[1])
    
    temp.df <- temp.df %>% 
      gather(cat_edad,n,initial_agecat:`Total`)%>% 
      mutate(!!var := as.factor(!!sym(var))) %>%
      spread(sym(var) ,n)%>% 
      replace(is.na(.), as.character(0))%>%
      separate(dep,
               c("dep","prov","distr"), 
               fill = "right", 
               sep = ",") %>%
      dplyr::mutate(distr = ifelse(dep=="Prov. Constitucional del Callao",prov,distr),
                    prov= ifelse(dep=="Prov. Constitucional del Callao"," Callao",prov) ,
                    dep= ifelse(dep=="Prov. Constitucional del Callao","Callao",dep),
                    distr = gsub("_", " ",gsub("-", " ", iconv(str_to_upper(str_trim(substr(distr,12,100))),
                                                               from="UTF-8",
                                                               to="ASCII//TRANSLIT"), fixed=TRUE), fixed=TRUE),
                    prov = iconv(str_to_upper(str_trim(substr(prov,2,100))),
                                 from="UTF-8",
                                 to="ASCII//TRANSLIT"),
                    dep = iconv(str_to_upper(str_trim(dep)),
                                from="UTF-8",
                                to="ASCII//TRANSLIT")
      )
    
    
    if(i==1) {final.df <- temp.df} else {final.df <- bind_rows(final.df,temp.df)}
    
  }
  
  return(final.df)
  
}