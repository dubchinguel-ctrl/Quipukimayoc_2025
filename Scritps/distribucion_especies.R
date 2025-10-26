#1LEER
datos <- read.table("distribucion.csv", header = TRUE, sep = ";", dec = ".")
datos <- datos[, c("Evaluation_unit", "Transect", "Cover", "Date", "Family",
                   "Genus", "Species_individual", "Reference_altitude",
                   "UTM_zone", "Easting_coord", "Northing_coord", "Altitude")]

# 2. Convertir tipos de datos
datos$Easting_coord <- as.numeric(datos$Easting_coord)
datos$Northing_coord <- as.numeric(datos$Northing_coord)
datos$Altitude <- as.numeric(datos$Altitude)

datos$Transect <- as.factor(datos$Transect)
datos$Genus <- as.factor(datos$Genus)
datos$Species_individual <- as.factor(datos$Species_individual)
datos$Family <- as.factor(datos$Family)

# 3. Instalar y cargar librerías necesarias
#install.packages(c("ggplot2", "dplyr", "ggrepel"))
library(ggplot2)
library(dplyr)
library(ggrepel)

# 4. Verificar la estructura del dataset
str(datos)
summary(datos)

# 5. Calcular las especies más dominantes
library(dplyr)
library(ggplot2)

# Calcular abundancia de especies por unidad
abundancia_especies <- datos %>%
  group_by(Evaluation_unit, Species_individual) %>%
  summarise(Abundancia = n(), .groups = "drop")

# Seleccionar las especies dominantes (las 5 más abundantes por unidad)
especies_dominantes_unidad <- abundancia_especies %>%
  group_by(Evaluation_unit) %>%
  slice_max(order_by = Abundancia, n = 5) %>%
  ungroup()
print(especies_dominantes_unidad)
#  Graficar
ggplot(especies_dominantes_unidad, 
       aes(x = reorder(Species_individual, Abundancia), 
           y = Abundancia, fill = Species_individual)) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~ Evaluation_unit, scales = "free_y") +
  coord_flip() +
  labs(
    title = "Especies dominantes por unidad de evaluación",
    x = "Especie",
    y = "Abundancia (número de registros)"
  ) +
  theme_minimal(base_size = 13) +
  theme(
    strip.text = element_text(face = "bold"),
    plot.title = element_text(hjust = 0.5, face = "bold")
  )


