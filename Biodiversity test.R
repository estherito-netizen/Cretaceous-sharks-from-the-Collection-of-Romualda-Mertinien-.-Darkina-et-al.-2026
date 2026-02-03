#------------------------------------------------------------------------------
# Cretaceous sharks from the Collection of Romualda Mertinienė
#Darkina et al. 2026
#------------------------------------------------------------------------------

#------------------------------------------------------------------------------
# 1. Packages
#------------------------------------------------------------------------------

library('paleobioDB')
library('ggplot2')
library('maps')

#------------------------------------------------------------------------------
# 2. Hybodontiformes ----------------------------------------------------------
#------------------------------------------------------------------------------
Acrodus <- pbdb_occurrences(
  base_name = "Acrodus",
  min_ma = "93.9",
  max_ma = "113.2",
  show = c("coords", "classext", "geo"),
  vocab = "pbdb",
  limit = "all")

X11(width = 13, height = 7.8)
pbdb_map_occur(
  Acrodus, 
  res = 2,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Acrodus")

pbdb_temp_range(Acrodus, rank = "species")

Hybodus <- pbdb_occurrences(
  base_name = "Hybodus",
  min_ma = "93.9",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Hybodus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Hybodus")

pbdb_temp_range(Hybodus, rank = "species")

Lissodus <-pbdb_occurrences(
  base_name = "Lissodus",
  min_ma = "93.9",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Lissodus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Lissodus")

pbdb_temp_range(Lissodus, rank = "species")

Polyacrodus <- pbdb_occurrences(
  base_name = "Polyacrodus",
  min_ma = "83.65",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Polyacrodus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Polyacrodus")

pbdb_temp_range(Polyacrodus, rank = "species")

Planohybodus <- pbdb_occurrences(
  base_name = "Planohybodus",
  min_ma = "83.65",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Planohybodus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Planohybodus")

pbdb_temp_range(Planohybodus, rank = "species")

#------------------------------------------------------------------------------
#3. Synechodontiformes --------------------------------------------------------
#------------------------------------------------------------------------------
Synechodus <- pbdb_occurrences(
  base_name = "Synechodus",
  min_ma = "89.39",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Synechodus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Synechodus")

pbdb_temp_range(Synechodus, rank = "species")

#------------------------------------------------------------------------------
#4. Neoselachians
# 4.1. Heterodontiformes ------------------------------------------------------
#------------------------------------------------------------------------------
Heterodontus <- pbdb_occurrences(
  base_name = "Heterodontus",
  min_ma = "93.9",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Heterodontus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Heterodontus")

pbdb_temp_range(Heterodontus, rank = "species")

# 4.2. Hexanchiformes ---------------------------------------------------------

Paraorthacodus <- pbdb_occurrences(
base_name = "Paraorthacodus",
min_ma = "89.39",
max_ma = "113.2",
show = c("coords", "classext"),
vocab = "pbdb",
limit = "all"
)

X11(width = 13, height = 7.8)
pbdb_map_occur(
  Paraorthacodus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Paraorthacodus"
)

pbdb_temp_range(Paraorthacodus, range = "species" )

# 4.3. Carcharhiniformes ------------------------------------------------------

Scyliorhinus <- pbdb_occurrences(
  base_name = "Scyliorhinus",
  min_ma = "89.39",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Scyliorhinus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Scyliorhinus"
)

pbdb_temp_range(Scyliorhinus, rank = "species")

# 4.4. Squaliformes -----------------------------------------------------------

Protosqualus <- pbdb_occurrences(
  base_name = "Protosqualus",
  min_ma = "93.9",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Protosqualus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Protosqualus"
)

pbdb_temp_range(Protosqualus, rank = "species")

# 4.5. Squatiniformes ---------------------------------------------------------

Squatina <- pbdb_occurrences(
  base_name = "Squatina",
  min_ma = "93.9",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Squatina, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Squatina"
)

pbdb_temp_range(Squatina, rank = "species")

# 4.6. Lamniformes ------------------------------------------------------------

Squalicorax <- pbdb_occurrences(
  base_name = "Squalicorax",
  min_ma = "83.39",
  max_ma = "113.2",
  show = c("coords", "classext", "geo"),
  vocab = "pbdb",
  limit = "all")

Squalicorax_ocurrences <- pbdb_map_occur(
  Squalicorax, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Squalicorax")

pbdb_temp_range(Squalicorax, rank = "species")

Cretoxyrhina<- pbdb_occurrences(
  base_name = "Cretoxyrhina",
  min_ma = "93.9",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Cretoxyrhina, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Cretoxyrhina")

pbdb_temp_range(Cretoxyrhina, rank = "species")

Eostriatolamia <- pbdb_occurrences(
  base_name = "Eostriatolamia",
  min_ma = "89.39",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Eostriatolamia, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Eostriatolamia")

pbdb_temp_range(Eostriatolamia, rank = "species")

Leptostyrax<- pbdb_occurrences(
  base_name = "Leptostyrax",
  min_ma = "89.39",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Leptostyrax, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Leptostyrax")

pbdb_temp_range(Leptostyrax, rank = "species")

pbdb_map_occur(
  Paraisurus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Paraisurus")

pbdb_temp_range(Paraisurus, rank = "species")

Pseudoisurus <- pbdb_occurrences(
  base_name = "Pseudoisurus",
  min_ma = "83.65",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

Scapanorhynchus <- pbdb_occurrences(
  base_name = "Scapanorhynchus",
  min_ma = "100.5",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Scapanorhynchus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Scapanorhynchus")

pbdb_temp_range(Scapanorhynchus, rank = "species")

Hispidaspis <- pbdb_occurrences(
  base_name = "Hispidaspis",
  min_ma = "93.9",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Hispidaspis, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Hispidaspis")

pbdb_temp_range(Hispidaspis, rank = "species")

Cretalamna <- pbdb_occurrences(
  base_name = "Cretalamna",
  min_ma = "89.39",
  max_ma = "113.2",
  show = c("coords", "classext", "geo"),
  vocab = "pbdb",
  limit = "all")

Cretalamna_ocurrences <- pbdb_map_occur(
  Cretalamna, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Cretalamna")

pbdb_temp_range(Cretalamna, rank = "species")

Otodus <- pbdb_occurrences(
  base_name = "Otodus",
  min_ma = "100.5",
  max_ma = "113.2",
  show = c("coords", "classext", "geo"),
  vocab = "pbdb",
  limit = "all")

Paraisurus <- pbdb_occurrences(
  base_name = "Paraisurus",
  min_ma = "100.5",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Paraisurus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Paraisurus")

Ptychodus <- pbdb_occurrences(
  base_name = "Ptychodus",
  min_ma = "89.39",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Ptychodus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Ptychodus")

pbdb_temp_range(Ptychodus, rank = "species")

# 5. Batoids ------------------------------------------------------------------

Myledaphus <- pbdb_occurrences(
  base_name = "Myledaphus",
  min_ma = "100.5",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Myledaphus, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Myledaphus")

pbdb_temp_range(Myledaphus, rank = "species")

Parapalaeobates <- pbdb_occurrences(
  base_name = "Parapalaeobates",
  min_ma = "93.9",
  max_ma = "113.2",
  show = c("coords", "classext"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Parapalaeobates, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Parapalaeobates")

pbdb_temp_range(Parapalaeobates, rank = "species")

Raja <- pbdb_occurrences(
  base_name = "Raja",
  min_ma = "83.65",
  max_ma = "113.2",
  show = c("coords", "classext", "geo"),
  vocab = "pbdb",
  limit = "all"
)

pbdb_map_occur(
  Raja, 
  res = 3,
  col_int = "lightgreen",
  col_ocean = "lightblue",
  col_eff = c("yellow", "red"),
  main = "Raja"
  )

pbdb_temp_range(Raja, rank = "species")




