## Equipo Quipucamayoc

 ####Evaluación de servicios ecosistémicos de regulación hídrica, almacenamiento de carbono y pastizales, para la gestión de ecosistemas altoandinos: caso Picotani - Puno
### Objetivo del proyecto

<p>
Evaluar los servicios ecosistémicos de regulación hídrica, almacenamiento de carbono y pastizales, para la gestión de ecosistemas altoandinos en el ámbito de Picotani, provincia de Carabaya, Región de Puno. 
</p>

# README de Datos del Proyecto Picotani

Este repositorio contiene dos grupos de datos documentados conforme a los lineamientos del Datathon:

## 1. DatosUsadosDeCIP/

| Nombre del dataset                                               | Fuente | Año / Fecha | Variables clave                         | Tamaño / Formato | Preprocesamiento aplicado                  |
| ---------------------------------------------------------------- | ------ | ----------- | --------------------------------------- | ---------------- | ------------------------------------------ |
| Assessment of grassland condition – microhistología dieta vicuña | CIP    | 2024        | Especies vegetales consumidas           | Excel (.xlsx)    | Limpieza básica, homogenización nombres    |
| Assessment of grassland condition – biomasa y digestibilidad     | CIP    | 2024        | Biomasa seca (g/m²), digestibilidad (%) | Excel (.xlsx)    | QA/QC de outliers, unidades estandarizadas |
| Assessment of grassland condition – plant reference height       | CIP    | 2024        | Altura de referencia por especie        | Excel (.xlsx)    | Depuración registros incompletos           |
| Assessment of grassland condition – forage availability          | CIP    | 2024        | Cobertura y disponibilidad de forraje   | Excel (.xlsx)    | Normalización de unidades                  |
| Assessment of grassland condition – surface transect ring-survey | CIP    | 2024        | Cobertura vegetal por transecto         | Excel (.xlsx)    | Georreferenciación verificada              |
| Assessment of grassland condition – indicator plants vigor       | CIP    | 2024        | % vigor por especie indicadora          | Excel (.xlsx)    | Clasificación estandarizada de vigor       |

## 2. DatosSecundarios/

| Nombre del dataset                                        | Fuente    | Año / Fecha | Variables clave             | Tamaño / Formato | Preprocesamiento aplicado                                            |
| --------------------------------------------------------- | --------- | ----------- | --------------------------- | ---------------- | -------------------------------------------------------------------- |
| Sentinel-2 Surface Reflectance (COPERNICUS/S2_HARMONIZED) | ESA / GEE | 2024        | Bandas espectrales (B2-B12) | Colección en GEE | Cloud Mask (QA60/SCL), NDVI/EVI/SAVI, clip Picotani, mediana mensual |



