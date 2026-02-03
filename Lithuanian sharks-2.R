#------------------------------------------------------------------------------
# Cretaceous sharks from the Collection of Romualda Mertinienė
#Darkina et al. 2026
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# 1. Data
#------------------------------------------------------------------------------

Lithuanian_Sharks <- read.csv("data/Sharks_original.csv")

#------------------------------------------------------------------------------
# 2. Packages
#------------------------------------------------------------------------------

library(dplyr)
library(tidyverse)

#------------------------------------------------------------------------------
# 3. View data
#------------------------------------------------------------------------------

dim(Lithuanian_Sharks)
names(Lithuanian_Sharks)
str(Lithuanian_Sharks)

#------------------------------------------------------------------------------
# 4. Orders
#------------------------------------------------------------------------------
select(Lithuanian_Sharks, Order, Family, Species, Age, Nº.teeth, Locality)

Orders <-select(Lithuanian_Sharks,Order, Family, Species, Age, Nº.teeth, Locality)
#------------------------------------------------------------------------------
Lamniformes_orders <-Orders %>%
  filter(Order == "Lamniformes") %>%
  group_by(Family, Species, Age, Locality, Nº.teeth)

Lamniformes_sps <- summarise(Lamniformes_orders)

write.csv(Lamniformes_orders, "Lamniformes_orders.csv")
write.csv(Lamniformes_sps, "Lamniformes_sps.csv")
#-----------------------------------------------------------------------------
Synechodontiformes_orders <- Orders %>%
  filter(Order == "Synechodontiformes")%>%
  group_by(Species, Age, Locality, Nº.teeth)

Synechodontiformes_sps <- summarise(Synechodontiformes_orders)

write.csv(Synechodontiformes_orders, "Synechodontiformes_orders.csv")
write.csv(Synechodontiformes_sps, "Synechodontiformes_sps.csv")
#----------------------------------------------------------------------------
Squatiniformes_orders <-Orders %>%
  filter(Order == "Squatiniformes")%>%
  group_by(Species, , Age, Locality, Nº.teeth)

Squatiniformes_sps <- summarise(Squatiniformes_orders)

write.csv(Squatiniformes_orders, "Squatiniformes_orders.csv")
write.csv(Squatiniformes_sps, "Squatinoformes_sps.csv")
#-----------------------------------------------------------------------------
Heterodontiformes_orders <-Orders %>%
  filter(Order == "Heterodontiformes")%>%
  group_by(Species, Age, Locality, Nº.teeth)

Heterodontiformes_sps <- summarise(Heterodontiformes_orders)

write.csv(Heterodontiformes_orders, "Heterodontiformes_orders.csv")
write.csv(Heterodontiformes_sps, "Heterodontiformes_sps.csv")
#-----------------------------------------------------------------------------
Hexanchiformes_orders <- Orders %>%
  filter(Order == "Hexanchiformes")%>%
  group_by(Species, Age, Locality, Nº.teeth)

Hexanchiformes_sps <- summarise(Hexanchiformes_orders)

write.csv(Hexanchiformes_orders,"Hexanchiformes_orders.csv" )
write.csv(Hexanchiformes_sps, "Hexanchiformes_sps.csv")
#-----------------------------------------------------------------------------
Hybodontiformes_orders <- Orders %>%
  filter(Order == "Hybodontiformes")%>%
  group_by(Species, Age, Locality, Nº.teeth)

Hybodontiformes_sps <- summarise(Hybodontiformes_orders)

write.csv(Hybodontiformes_orders, "Hybodontiformes_orders.csv")
write.csv(Hybodontiformes_sps, "Hybodontiformes_sps.csv")
#-----------------------------------------------------------------------------
Carcharhiniformes_orders<- Orders %>%
  filter(Order == "Carcharhiniformes") %>%
  group_by(Species, Age, Locality, Nº.teeth)

Carcharhiniformes_sps <- summarise(Carcharhiniformes_orders)

write.csv(Carcharhiniformes_orders, "Carcharhiniformes_orders.csv")
write.csv(Carcharhiniformes_sps, "Carcharhiniformes.csv")
#-----------------------------------------------------------------------------
Squaliformes_orders<-Orders %>%
  filter(Order == "Squaliformes") %>%
  group_by(Species, Age, Locality, Nº.teeth)

Squaliformes_sps <- summarise(Squaliformes_orders)

write.csv(Squaliformes_orders, "Squaliformes_orders.csv")
write.csv(Squaliformes_sps, "Squaliormes_sps.csv")
#------------------------------------------------------------------------------
Rajiformes_orders<-Orders %>%
  filter(Order == "Rajiformes") %>%
  group_by(Species, Age, Locality, Nº.teeth)

Rajiformes_sps <- summarise(Rajiformes_orders)

write.csv(Rajiformes_orders, "Rajiformes_orders.csv")
write.csv(Rajiformes_sps, "Rajiformes_sps.csv")
#------------------------------------------------------------------------------
Rhinopristiformes_orders<-Orders %>%
  filter(Order == "Rhinopristiformes") %>%
  group_by(Species, Age, Locality, Nº.teeth)

Rhinopristiformes_sps <- summarise(Rhinopristiformes_orders)

write.csv(Rhinopristiformes_orders, "Rhinopristiformes_orders.csv")
write.csv(Rhinopristiformes_sps, "Rhinopristiformes_sps.csv")

#------------------------------------------------------------------------------
# 5. Age
#------------------------------------------------------------------------------

select(Lithuanian_Sharks, Order, Family, Species, Age, Nº.teeth, Locality)

Ages<-select(Lithuanian_Sharks,Order, Family, Species, Age, Nº.teeth, Locality)

# Albanian
#------------------------------------------------------------------------------
K1al3 <-Ages %>%
  filter(Age == "K1al3") %>%
  group_by(Order, Species, Locality, Nº.teeth) 
  
K1al3_sps <- summarise(K1al3)

write.csv(K1al3,"K1al3.csv")
write.csv(K1al3_sps, "K1al3_sps.csv")
  
# Cenomian
#------------------------------------------------------------------------------
K2cm <- Ages %>%
  filter(Age == "K2cm") %>%
  group_by(Order, Species, Locality, Nº.teeth)

K2cm_sps <- summarise(K2cm)

write.csv(K2cm, "k2cm.csv")
write.csv(K2cm_sps, "K2cm_spsp.csv")
#------------------------------------------------------------------------------
K2cm2 <-Ages %>%
  filter(Age == "K2cm2") %>%
  group_by(Order, Species, Locality, Nº.teeth)

K2cm2_sps <- summarise(K2cm2)
  
write.csv(K2cm2, "K2cm2.csv") 
write.csv(K2cm2_sps, "K2cm2_sps.csv")
#------------------------------------------------------------------------------
K2cm1 <- Ages %>%
  filter(Age == "K2cm1") %>%
  group_by(Order, Species, Locality, Nº.teeth)

K2cm1_sps <- summarise(K2cm1)

write.csv(K2cm1, "k2cm1.csv")
write.csv(K2cm1_sps, "K2cm1_sps.csv")
#------------------------------------------------------------------------------
K2cm3 <- Ages %>%
  filter(Age == "K2cm3") %>%
  group_by(Order, Species, Locality, Nº.teeth)

K2cm3_sps <- summarise(K2cm3)

write.csv(K2cm3, "K2cm3.csv")
write.csv(K2cm3_sps, "K2cm3_sps.csv")

# Santonian
#------------------------------------------------------------------------------
K2st <- Ages %>%
  filter(Age == "K2st") %>%
  group_by(Order, Species, Locality, Nº.teeth)

K2st_sps <- summarise(K2st)

write.csv(K2st, "K2st.csv")
write.csv(K2st_sps, "K2st_sps.csv")
#------------------------------------------------------------------------------
K2st1 <- Ages %>%
  filter(Age == "K2st1") %>%
  group_by(Order, Species, Locality, Nº.teeth)

K2st1_sps <- summarise(K2st1)

write.csv(K2st1, "K2st1.csv")
write.csv(K2st1_sps, "K2st1_sps.csv")

# Turonian
#------------------------------------------------------------------------------
K2t1<- Ages %>%
  filter(Age == "K2t1") %>%
  group_by(Order, Species, Locality, Nº.teeth)

K2t1_sps <- summarise(K2t1)

write.csv(K2t1, "K2t1.csv")
write.csv(K2t1_sps, "K2t1_sps.csv")

#------------------------------------------------------------------------------
# 6. Localities
#------------------------------------------------------------------------------

select(Lithuanian_Sharks, Order, Family, Species, Age, Nº.teeth, Locality)

Localities <- select(Lithuanian_Sharks,Order, Family, Species, Age, Nº.teeth, Locality)

#Lithuanian localities
#------------------------------------------------------------------------------
Vareikiai_LT <- Localities %>%
  filter(Locality == "Vareikiai (LT)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Vareikiai_LT_sps <- summarise(Vareikiai_LT)

write.csv(Vareikiai_LT, "Vareikiai_LT.csv")
write.csv(Vareikiai_LT_sps, "Vareikiai_LT_sps.csv")
#------------------------------------------------------------------------------
Balskai_LT <- Localities %>%
  filter(Locality == "Balskai (LT)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Balskai_LT_sps <- summarise(Balskai_LT)

write.csv(Balskai_LT, "Balskai_LT.csv")
write.csv(Balskai_LT_sps, "Balskai_LT_sps.csv")
#------------------------------------------------------------------------------  
Pamerkys_LT <- Localities %>%
  filter(Locality == "Pamerkys (LT)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Pamerkys_LT_sps <- summarise(Pamerkys_LT)

write.csv(Pamerkys_LT, "Pamerkys_LT.csv")
write.csv(Pamerkys_LT_sps, "Pamerkys_LT_sps.csv")
#------------------------------------------------------------------------------
Veršai_LT <- Localities %>%
  filter(Locality == "Veršai (LT)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Veršai_LT_sps <- summarise(Veršai_LT)

write.csv(Veršai_LT, "Veršai_LT.csv")
write.csv(Veršai_LT, "Veršai_LT_sps.csv")
#------------------------------------------------------------------------------
Meilės_sala_275_LT <- Localities %>%
  filter(Locality == "Meilės sala-275 (LT)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Meilės_sala_275_LT_sps <- summarise(Meilės_sala_275_LT)

write.csv(Meilės_sala_275_LT, "Meilės sala-275 (LT).csv")
write.csv(Meilės_sala_275_LT_sps, "Meilės_sala_275_LT_sps.csv")
#------------------------------------------------------------------------------
Kaunas_HE_LT <- Localities %>%
  filter(Locality == "Kaunas HE (LT)") %>%
  group_by(Order,Species, Age, Nº.teeth)

Kaunas_HE_LT_sps <- summarise(Kaunas_HE_LT)

write.csv(Kaunas_HE_LT, "Kaunas HE (LT).csv")
write.csv(Kaunas_HE_LT_sps, "Kaunas_HE_LT_sps.csv")
#------------------------------------------------------------------------------
Kauno_HE_18a_LT <- Localities %>%
  filter(Locality == "Kauno HE-18a (LT)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Kauno_HE_18a_LT_sps <- summarise(Kauno_HE_18a_LT)

write.csv(Kauno_HE_18a_LT, "Kauno HE-18a (LT).csv")
write.csv(Kauno_HE_18a_LT_sps, "Kauno_HE_18a_LT_sps.csv")
#------------------------------------------------------------------------------
Nida_3k_LT <- Localities %>%
  filter(Locality == "Nida-3k (LT)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Nida_3k_LT_sps <- summarise(Nida_3k_LT)

write.csv(Nida_3k_LT, "Nida-3k (LT).csv")
write.csv(Nida_3k_LT_sps, "Nida-3k_LT_sps.csv")
#------------------------------------------------------------------------------
Nida_44_LT <- Localities %>%
  filter(Locality == "Nida-44 (LT)") %>%
  group_by(Order,Species, Age, Nº.teeth)

Nida_44_LT_sps <- summarise(Nida_44_LT)

write.csv(Nida_44_LT, "Nida-44 (LT).csv")
write.csv(Nida_44_LT_sps, "Nida-44_LT_sps.csv")

# Russian localities
#------------------------------------------------------------------------------
Briansk_Polpino_quarry_RU <- Localities %>%
  filter(Locality == "Briansk Polpino quarry (RU)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Briansk_Polpino_quarry_RU_sps <- summarise(Briansk_Polpino_quarry_RU)

write.csv(Briansk_Polpino_quarry_RU, "Briansk Polpino quarry (RU).csv")
write.csv(Briansk_Polpino_quarry_RU_sps, "Briansk_Polpino_quarry_RU_sps.csv")
#------------------------------------------------------------------------------
Jachroma_Moscow_RU <- Localities %>%
  filter(Locality == "Jachroma, Moscow r. (RU)") %>%
  group_by(Order,Species, Age, Nº.teeth)

Jachroma_Moscow_RU_sps <- summarise(Jachroma_Moscow_RU)

write.csv(Jachroma_Moscow_RU, "Jachroma, Moscow r. (RU).csv")
write.csv(Jachroma_Moscow_RU_sps, "Jachroma_Moscow_RU_sps.csv")
#------------------------------------------------------------------------------
Kursko_region_RU <- Localities %>%
  filter(Locality == "Kursko region,Dmitriev-Lgovskij outcrop (RU)") %>%
  group_by(Order,Species, Age, Nº.teeth)

Kursko_region_RU_sps <- summarise(Kursko_region_RU)

write.csv(Kursko_region_RU, "Kursko region,Dmitriev-Lgovskij outcrop (RU).csv")
write.csv(Kursko_region_RU_sps, "Kursko_region_RU_sps.csv")
#------------------------------------------------------------------------------
Saratov_38_RU <- Localities %>%
  filter(Locality == "Saratov (38 school) (RU)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Saratov_38_RU_sps <- summarise(Saratov_38_RU)

write.csv(Saratov_38_RU, "Saratov (38 school) (RU).csv")
write.csv(Saratov_38_RU_sps, "Saratov_38_RU_sps.csv")
#------------------------------------------------------------------------------
Saratov_CAP1_RU <- Localities %>%
  filter(Locality == "Saratov (CAP-1) (RU)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Saratov_CAP1_RU_sps <- summarise(Saratov_CAP1_RU)

write.csv(Saratov_CAP1_RU, "Saratov (CAP-1) (RU).csv")
write.csv(Saratov_CAP1_RU_sps, "Saratov_CAP1_RU_sps.csv")
#------------------------------------------------------------------------------
Saratov_CAP_2_RU <- Localities %>%
  filter(Locality == "Saratov (CAP-2) (RU)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Saratov_CAP_2_RU_sps <- summarise(Saratov_CAP_2_RU)

write.csv(Saratov_CAP_2_RU, "Saratov (CAP-2) (RU).csv")
write.csv(Saratov_CAP_2_RU_sps,"Saratov_CAP2_RU_sps.csv")

# Ukranine
#------------------------------------------------------------------------------
Mogiliov_Podolsk_UKr <- Localities %>%
  filter(Locality == "Mogiliov-Podolsk (Ukraine)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Mogiliov_Podolsk_UKr_sps <- summarise(Mogiliov_Podolsk_UKr)

write.csv(Mogiliov_Podolsk_UKr, "Mogiliov-Podolsk (Ukraine).csv")
write.csv(Mogiliov_Podolsk_UKr_sps, "Mogiliov_Podolsk_UKr_sps.csv")
#------------------------------------------------------------------------------
Marjin_jar <- Localities %>%
  filter(Locality == "Marjin jar (Mарьин яр)") %>%
  group_by(Order,Species, Age, Nº.teeth)

Marjin_jar_sps <- summarise(Marjin_jar)

write.csv(Marjin_jar, "Marjin jar (Mарьин яр).csv")
write.csv(Marjin_jar_sps, "Marjin_jar_sps.csv")
#------------------------------------------------------------------------------
Rusavos_outcrop_UKr <- Localities %>%
  filter(Locality == "Rusavos outcrop (Ukraine) ") %>%
  group_by(Order, Species, Age, Nº.teeth)

Rusavos_outcrop_UKr_sps <- summarise(Rusavos_outcrop_UKr)

write.csv(Rusavos_outcrop_UKr,"Rusavos outcrop (Ukraine).csv")
write.csv(Rusavos_outcrop_UKr_sps, "Rusavos_outcrop_UKr_sps.csv")
#------------------------------------------------------------------------------
Kanevas_Kosteneckij_UKr <- Localities %>%
  filter(Locality == "Ukraine, Kanevas, Kosteneckij r.") %>%
  group_by(Order,Species, Age, Nº.teeth)

Kanevas_Kosteneckij_UKr_sps <- summarise(Kanevas_Kosteneckij_UKr)

write.csv(Kanevas_Kosteneckij_UKr, "Ukraine, Kanevas, Kosteneckij r.csv")
write.csv(Kanevas_Kosteneckij_UKr_sps, "Kanevas_Kosteneckij_UKr_sps.csv")

# Other localities
#------------------------------------------------------------------------------
Chodžakulis_CX_20 <- Localities %>%
  filter(Locality == "Chodžakulis (CX-20) (Uzbekistan)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Chodžakulis_CX_20_sps <- summarise(Chodžakulis_CX_20)

write.csv(Chodžakulis_CX_20, "Chodžakulis (CX-20) (Uzbekistan).csv")
write.csv(Chodžakulis_CX_20_sps, "Chodžakulis_CX_20_sps.csv")
#------------------------------------------------------------------------------
Kazachstan_Ilako_river <- Localities %>%
  filter(Locality == "Kazachstan (Ilako river)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Kazachstan_Ilako_river_sps <- summarise(Kazachstan_Ilako_river)

write.csv(Kazachstan_Ilako_river, "Kazachstan (Ilako river).csv")
write.csv(Kazachstan_Ilako_river_sps, "Kazachstan_Ilako_river_sps.csv")
#------------------------------------------------------------------------------
Kazachstan_Sagizo_river <- Localities %>%
  filter(Locality == "Kazachstan (Sagizo river)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Kazachstan_Sagizo_river_sps <- summarise(Kazachstan_Sagizo_river)

write.csv(Kazachstan_Sagizo_river, "Kazachstan (Sagizo river).csv")
write.csv(Kazachstan_Sagizo_river_sps, "Kazachstan_Sagizo_river_sps.csv")
#------------------------------------------------------------------------------
Kansajus_Tajikistan <- Localities %>%
  filter(Locality == "Kansajus (Tajikistan)") %>%
  group_by(Order, Species, Age, Nº.teeth)

Kansajus_Tajikistan_sps <- summarise(Kansajus_Tajikistan)

write.csv(Kansajus_Tajikistan, "Kansajus (Tajikistan).csv")
write.csv(Kansajus_Tajikistan_sps, "Kansajus_Tajikistan_sps.csv")
#------------------------------------------------------------------------------
Šeich_Džeili_8 <- Localities %>%
  filter(Locality == "Šeich-Džeili (8), Karatau Mountains (Kazachstan) ") %>%
  group_by(Order, Species, Age, Nº.teeth)

Šeich_Džeili_8_sps <- summarise(Šeich_Džeili_8)

write.csv(Šeich_Džeili_8, "Šeich_Džeili_8.csv")
write.csv(Šeich_Džeili_8_sps, "Šeich_Džeili_8_sps.csv")
#------------------------------------------------------------------------------
Šeich_Džeili_8a <- Localities %>%
  filter(Locality == "Šeich-Džeili (8a), Karatau Mountains (Kazachstan) " ) %>%
  group_by(Order,Species, Age, Nº.teeth)

Šeich_Džeili_8a_sps <- summarise(Šeich_Džeili_8a)

write.csv(Šeich_Džeili_8, "Šeich_Džeili_8a.csv")
write.csv(Šeich_Džeili_8a_sps, "Šeich_Džeili_8a_sps.csv")

#------------------------------------------------------------------------------
# 7. Species
#------------------------------------------------------------------------------

Species <- select(Lithuanian_Sharks,Order, Family, Species, Age, Nº.teeth, Locality)

#------------------------------------------------------------------------------
Lissodus_levis <- Species %>%
  filter(Species =="Lissodus cf. levis") %>%
  group_by(Order,Family, Age, Nº.teeth, Locality)

Lissodus_levis_1 <- summarise(Lissodus_levis)

write.csv(Lissodus_levis_1, "Lissodus_levis.csv")

Acrodus_giedroyci <- Species %>%
  filter( Species == "Acrodus giedroyci") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

Acrodus_giedroyci_1 <- summarise(Acrodus_giedroyci)

write.csv(Acrodus_giedroyci_1, "Acrodus_giedroyci.csv")

Acrodus_sp <- Species %>%
  filter(Species == "Acrodus sp.") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Acrodus_sp, "Acrodus_sp.csv")
#------------------------------------------------------------------------------
Cretalamna_appendiculata <- Species %>%
  filter(Species == "Cretalamna appendiculata") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Cretalamna_appendiculata, "Cretalamna_appendiculata.csv")

Cretolamna_sp <- Species %>%
  filter(Species == "Cretolamna sp.") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Cretolamna_sp, "Cretolamna_sp.csv")
#------------------------------------------------------------------------------
Cretoxyrhina_denticulata <- Species %>%
  filter(Species == "Cretoxyrhina denticulata") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Cretoxyrhina_denticulata, "Cretoxyrhina_denticulata.csv")

Cretoxyrhina_sp <- Species %>%
  filter(Species == "Cretoxyrhina sp.") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Cretoxyrhina_sp, "Cretoxyrhinasp.csv")
#------------------------------------------------------------------------------
Eostriatolamia_sp <- Species %>%
  filter(Species == "Eostriatolamia sp.") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Eostriatolamia_sp, "Eostriatolamia_sp.csv")

Eostriatolamia_striulata <- Species %>%
  filter(Species == "Eostriatolamia striulata") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Eostriatolamia_striulata, "Eostriatolamia_striulata.csv")

Eostriatolamia_subulata <- Species %>%
  filter(Species == "Eostriatolamia subulata") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Eostriatolamia_subulata, "Eostriatolamia_subulata.csv")
#------------------------------------------------------------------------------
Heterodontus_canaliculatus <- Species %>%
  filter(Species == "Heterodontus canaliculatus") %>%
  group_by(Order,Family, Age, Nº.teeth, Locality)

write.csv(Heterodontus_canaliculatus, "Heterodontus_canaliculatus.csv")

Heterodontus_polydictios <- Species %>%
  filter(Species == "Heterodontus polydictios") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Heterodontus_polydictios, "Heterodontus_polydictios.csv")

Heterodontus_sp <- Species %>%
  filter(Species == "Heterodontus sp.") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Heterodontus_sp, "Heterodontus_sp.csv")

Heterodontus_upnikensis <- Species %>%
  filter(Species == "Heterodontus upnikensis") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Heterodontus_upnikensis, "Heterodontus_upnikensis.csv")
#------------------------------------------------------------------------------
Planohybodus_ensis <- Species %>%
  filter(Species == "Planohybodus ensis") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Planohybodus_ensis, "Planohybodus_ensis.csv")

Hybodus_hodzhakulensis <- Species %>%
  filter(Species == "Hybodus hodzhakulensis ") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Hybodus_hodzhakulensis, "Hybodus_hodzhakulensis.csv")

Hybodus_nukusensis <- Species %>%
  filter(Species == "Hybodus nukusensis") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Hybodus_nukusensis, "Hybodus_nukusensis.csv")

Hybodus_sp<- Species %>%
  filter(Species == "Hybodus nukusensis") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Hybodus_sp, "Hybodus_sp.csv")
#------------------------------------------------------------------------------
Leptostyrax_macrorhiza <- Species %>%
  filter(Species == "Leptostyrax? macrorhiza") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Leptostyrax_macrorhiza, "Leptostyrax_macrorhiza.csv")
#------------------------------------------------------------------------------
Lissodus_grewingki <- Species %>%
  filter(Species == "Lissodus grewingki") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Lissodus_grewingki,"Lissodus_grewingki.csv")

Lissodus_levis <- Species %>%
  filter(Species == "Lissodus levis") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Lissodus_levis, "Lissodus_levis.csv")
#------------------------------------------------------------------------------
Myledaphus_sp <- Species %>%
  filter(Species == "Myledaphus sp.") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Myledaphus_sp, "Myledaphus_sp.csv")
#------------------------------------------------------------------------------
Odontaspis_santonicus <- Species %>%
  filter(Species == "Odontaspis santonicus") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Odontaspis_santonicus, "Odontaspis_santonicus.csv")
#------------------------------------------------------------------------------
Otodus_sp <- Species %>%
  filter(Species == "Otodus? sp.") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Otodus_sp, "Otodus_sp.csv")
#------------------------------------------------------------------------------
Squaliocorax_volgensis <- Species %>%
  filter(Species == "Squalicorax volgensis ") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(PSqualiocorax_volgensis, "Squaliocorax_volgensis.csv")
#------------------------------------------------------------------------------
Paraisurus_compressus <- Species %>%
  filter(Species == "Paraisurus compressus") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Paraisurus_compressus, "Paraisurus_compressus.csv")
#------------------------------------------------------------------------------
Paraorthacodus_recurvus <- Species %>%
  filter(Species == "Paraorthacodus recurvus") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Paraorthacodus_recurvus, "Paraorthacodus_recurvus.csv")
#------------------------------------------------------------------------------
Parapalaeobates_sp <- Species %>%
  filter(Species == "Parapalaeobates(?) sp.") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Parapalaeobates_sp, "Parapalaeobates_sp.csv")

Parapalaeobates_glickmani <- Species %>%
  filter(Species == "Parapalaeobates glickmani") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Parapalaeobates_glickmani, "Parapalaeobates_glickmani.csv")
#------------------------------------------------------------------------------
Hybodus_brabanticus <- Species %>%
  filter(Species == "Hybodus brabanticus") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Hybodus_brabanticus, "Hybodus_brabanticus.csv")

Hybodus_kansaiensis <- Species %>%
  filter(Species == "Hybodus kansaiensis") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Hybodus_kansaiensis, "Hybodus_kansaiensis.csv")

Polyacrodus_illingworthi <- Species %>%
  filter(Species == "Polyacrodus illingworthi") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Polyacrodus_illingworthi, "Polyacrodus_illingworthi.csv")

Polyacrodus_torosus<- Species %>%
  filter(Species == "Polyacrodus torosus") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Polyacrodus_torosus, "Polyacrodus_torosus.csv")

Polyacrodus_sp <- Species %>%
  filter(Species == "Polyacrodus sp.") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Polyacrodus_sp, "Polyacrodus_sp.csv")
#------------------------------------------------------------------------------
Protosqualus_sigei <- Species %>%
  filter(Species == "Protosqualus sigei") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Protosqualus_sigei, "Protosqualus_sigei.csv")
#------------------------------------------------------------------------------
Pseudoisurus_tomosus <- Species %>%
  filter(Species == "Pseudoisurus tomosus") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Pseudoisurus_tomosus, "Pseudoisurus_tomosus.csv")
#------------------------------------------------------------------------------
Ptychodus_decurrens <- Species %>%
  filter(Species == "Ptychodus decurrens") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Ptychodus_decurrens, "Ptychodus_decurrens.csv")

Ptychodus_mammilaris <- Species %>%
  filter(Species == "Ptychodus mammilaris") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Ptychodus_mammilaris, "Ptychodus_mammilaris.csv")
#------------------------------------------------------------------------------
Raja_sp <- Species %>%
  filter(Species == "Raja sp.") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Raja_sp, "Raja_sp.csv")
#------------------------------------------------------------------------------
Squalicorax_falcatus_praecursor <- Species %>%
  filter(Species == "Squalicorax falcatus praecursor") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Squalicorax_falcatus_praecursor, "Squalicorax_falcatus_praecursor.csv")

Squalicorax_obliquus <- Species %>%
  filter(Species == "Squalicorax obliquus") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Squalicorax_obliquus, "Squalicorax_obliquus.csv")

Squalicorax_primaevus <- Species %>%
  filter(Species == "Squalicorax primaevus") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Squalicorax_primaevus, "Squalicorax_primaevus.csv")

Squaliocorax_dalinkevichiusi <- Species %>%
  filter(Species == "Squaliocorax dalinkevichiusi") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Squaliocorax_dalinkevichiusi, "Squaliocorax_dalinkevichiusi.csv")
#------------------------------------------------------------------------------
Squatina_decipiens <- Species %>%
  filter(Species == "Squatina decipiens") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Squatina_decipiens, "Squatina_decipiens.csv")

Squatina_sp <- Species %>%
  filter(Species == "Squatina sp.") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Squatina_sp, "Squatina_sp.csv")
#------------------------------------------------------------------------------
Synechodus_dispar <- Species %>%
  filter(Species == "Synechodus dispar") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Synechodus_dispar, "Synechodus_dispar.csv")

Synechodus_nitidus <- Species %>%
  filter(Species == "Synechodus nitidus") %>%
  group_by(Order, Family, Age, Nº.teeth, Locality)

write.csv(Synechodus_nitidus, "Synechodus_nitidus.csv")


