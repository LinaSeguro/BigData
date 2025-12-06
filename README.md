# 🚀 Portafolio de Big Data: Caso SportZone
# 🟦 Evidencia de Aprendizaje 1 — Creación de Base de Datos Analítica
Databricks | SQL | Unity Catalog
## 👥 Integrantes

- Jorge Armando Rodriguez

- Lina Johana Seguro Gaviria

## 🧩 Problemática Abordada

La empresa **SportZone S.A.**, dedicada a la venta de artículos de fútbol, tiene información dispersa sobre ventas, productos, tiendas y clientes.
El objetivo es construir una base de datos analítica centralizada dentro de Databricks, utilizando SQL con Unity Catalog.

## 🎯 Objetivo del Proyecto

Crear una base de datos analítica que:

- Centralice el historial de ventas

- Organice los datos correctamente

- Garantice consistencia e integridad


## 📊 Dataset Utilizado

Incluye información de:

- Identificadores de venta

- Productos

- Tiendas

- Ciudades

- Categorías

- Montos

- Fechas

## 🏗️ Desarrollo de la Actividad 1
### 1️⃣ Conteo de Registros
``` SELECT COUNT(*) FROM tbl_ventas;```

### 2️⃣ Estructura de la Tabla
``` DESCRIBE TABLE tbl_ventas;```

### 3️⃣ Consulta con Filtro (Ventas en Miami)
```SELECT * FROM tbl_ventas 
 WHERE ciudad = 'Miami' 
LIMIT 10;
```
### 📐 Modelo Entidad-Relación (ERD)
Diagrama diseñado para visualizar las relaciones entre las tablas de la base de datos:

<p align="center">
  <img src="./Actividad_1/ERD.png" alt="ERD Actividad 1" width="600"/>
</p>

## 📂 Estructura del Repositorio (Actividad 1)
```
📂 BIGDATA/
├── 📂 Actividad_1/
│   ├── 🖼️ ERD.png
│   ├── 📓 Rodriguez_Jorge_Seguro_Lina_Actividad_1.ipynb
│   └── 🖼️ VR.png
├── ⚙️ .gitignore
└── 📄 README.md
```

## 🧠 Conclusiones (Actividad 1)

- Se creó una base analítica funcional.

- Las consultas confirmaron la correcta carga de datos.

- La tabla presenta estructura adecuada para análisis posteriores.

# 🟩 Evidencia de Aprendizaje 2 — Procesamiento de Datos en la Nube
Databricks | Spark | SQL | Unity Catalog
## 👥 Autores

- Jorge Armando Rodriguez

- Lina Johana Seguro Gaviria

## 🚀 Descripción del Proyecto

Este proyecto implementa un flujo completo de:

- Ingesta de datos

- Procesamiento con Spark

- Validación técnica

- Consultas SQL

- Persistencia en Delta Tables

- Gestión usando Unity Catalog

## 🏗️ Arquitectura del Proyecto
### 🔹 Flujo General del Notebook

- Diseño del esquema

- Creación de tablas

- Ingesta desde Kaggle + carga manual

- Validación de metadatos

- Consultas con SQL y Spark


## 🧩 1. Diseño del Esquema

a. Descripción del Dataset

Dataset de ventas de equipamiento de fútbol que contiene información sobre:

- Transacciones

- Productos

- Clientes

- Tiendas

Incluye características como precios, cantidades, ubicación y detalles de clientes.

b. Esquema SportZone

Diagrama  Unity Catalog utilizado en el proyecto:

<p align="center">
  <img src="./Actividad_2/Esquema.png" alt="Esquema" width="300"/>
</p>

c. DDL del Esquema (Spark SQL)

El proyecto incluye un archivo SQL con la definición de todas las tablas:

📄 DDL.sql

[Archivo DDL.sql](./DDL.sql)


## 🔧 2. CONFIGURACIÓN DE DATABRICKS
### 🚀 Creación y Configuración del Cluster

Parámetros usados:

- Runtime 15.4 LTS

- Python 3.10

- Autoscaling

- 4 vCPU / 16GB RAM

b. Verificación de Versiones

El notebook imprime:

- spark.version

- sys.version

c. Estructura de Almacenamiento

Se usan:

📁 Unity Catalog → Catálogo + Schema

📁 Volumes → Ruta por defecto

📁 DBFS → ```/Volumes/sportzone/ventas_schema/vol_ventas/```

d. Obtención de Datos de Kaggle

Incluye:

- Configuración de credenciales

- Funciones para descargar datasets

- Extracción y lectura del CSV

- Conversión de Pandas → Spark DataFrame

## 📥 3. Ingesta del Dataset
### ✔ 3.1 Carga manual del CSV

Archivo CSV cargado a Volumes.

### ✔ 3.2 Lectura con Spark
``` spark.read.csv(path, header=True, inferSchema=True)```

### ✔ 3.3 Persistencia

- Tabla temporal

- Tabla administrada en Unity Catalog

- Tabla Delta final tbl_venta

## 🔍 4. Validaciones y Análisis
### 📊 4.1 Metadatos

- ```DESCRIBE TABLE```

- ```DESCRIBE DETAIL```

- ```SHOW CREATE TABLE```

### 🧮 4.2 Estadística descriptiva

- Comparación SQL vs Spark.

### 📈 4.3 Consultas analíticas

Se ejecutaron consultas para:

- Ventas por producto

- Cantidad de productos distintos

- Agregaciones básicas (SUM, COUNT, AVG)

Con versiones en:

  -  ✔ SQL

   - ✔ Spark

### 🔢 4.4 Conteos y Muestras

Incluye:

- ```COUNT(*)```

- ```SELECT * LIMIT n```

- Exploración inicial del dataset

## ⚡ 5. SQL VS SPARK: Ventajas y Desventajas

🔵 Spark

- Procesamiento distribuido

- Ideal para volúmenes grandes

- Mejor rendimiento en ETL

🟢 SQL

- Más simple para analítica

- Fácil de entender y mantener

- Más declarativo

## ▶️ Cómo Ejecutar el Proyecto

1. Clonar repositorio

2. Crear cluster

3. Crear catálogo + schema

4. Crear Volume

5. Subir CSV

6. Ejecutar notebook

## 📂 Estructura del Repositorio (Actividad 2)
```
📂 BIGDATA/
├── 📂 Actividad_2/
│   ├── 🖼️ 1.png
│   ├── 🖼️ 2.png
│   ├── 🖼️ 3.png
│   ├── 🖼️ 4.png
│   ├── 💾 DDL.sql
│   ├── 🖼️ Esquema.png
│   ├── 📓 Rodriguez_Jorge_Seguro_Lina_Actividad_2.ipynb
│   └── 🖼️ VD.png
├── ⚙️ .gitignore
└── 📄 README.md
```

## 🧠 Conclusiones (Actividad 2)

- Se completó un flujo profesional de ingesta y análisis.

- Los datos quedaron en formato Delta optimizado.

- Spark y SQL demostraron complementariedad.

- Unity Catalog aseguró control de datos.

# 👥 Autores Finales

✨ Jorge Armando Rodriguez

✨ Lina Johana Seguro Gaviria


# Proyecto Integrador: Análisis de Ventas Online (Big Data)

Este repositorio contiene la **Evidencia de Aprendizaje 3** del Proyecto Integrador. El objetivo principal es realizar un análisis exploratorio y limpieza de datos sobre un dataset de ventas online utilizando **PySpark** para el procesamiento de datos masivos y librerías de Python para la visualización.

## 👥 Integrantes del Equipo
* **Jorge Armando Rodriguez**
* **Lina Johana Seguro Gaviria**
* **Justin Beckham Cardona Yepes**

## 📋 Descripción del Proyecto
El proyecto procesa el archivo `AF_online_sales_dataset.csv` para limpiar, normalizar y analizar el comportamiento de las ventas. Se implementa un flujo de trabajo de Big Data que abarca desde la ingesta de datos hasta la generación de insights visuales.

### Objetivos Cumplidos
1.  **Ingesta de Datos:** Carga del dataset en un DataFrame de Spark.
2.  **Limpieza y Calidad de Datos:**
    * Normalización de categorías (marcas).
    * Tratamiento de valores nulos y negativos.
    * Imputación de datos faltantes en montos usando la media.
    * Detección y eliminación de *outliers* (valores atípicos) utilizando el rango intercuartílico (IQR).
3.  **Ingeniería de Características:** Extracción de componentes de fecha (Año, Mes, Día, Día de la semana).
4.  **Análisis Agregado:** Creación de resúmenes mensuales de ventas.
5.  **Visualización:** Generación de gráficos estáticos e interactivos para interpretar los datos.

## 🛠️ Tecnologías Utilizadas
* **Lenguaje:** Python
* **Procesamiento Big Data:** Apache Spark (PySpark)
* **Manipulación de Datos:** Pandas
* **Visualización:** Matplotlib, Seaborn, Plotly Express
* **Entorno:** Databricks / Jupyter Notebook

## 📊 Resultados y Conclusiones
Tras el análisis de los datos, se obtuvieron los siguientes hallazgos clave:

1.  **Concentración de Ventas:** Las ventas se centran mayoritariamente en pocas marcas específicas (ej. *Rawlings*, *Under Armour*), mientras que marcas como *Reebok* tienen menor rotación.
2.  **Comportamiento Diario:** El promedio de ventas es estable a lo largo de la semana, oscilando entre 228 y 230, con un ligero repunte los días miércoles.
3.  **Análisis de Precios:**
    * Los precios se mantienen estables durante el año (baja estacionalidad en precios).
    * La variación del precio final depende drásticamente de la marca (marcas premium como *Warrior Shield* vs. económicas como *Under Armour*) más que de la fecha de compra.

## 🚀 Cómo ejecutar este proyecto
1.  Clona este repositorio.
2.  Asegúrate de tener un entorno con soporte para **PySpark** (como Databricks, Google Colab o un entorno local configurado).
3.  Carga el archivo `AF_online_sales_dataset.csv` en tu sistema de archivos o DBFS.
4.  Ejecuta el notebook `Seguro_Lina_Rodriguez_Jorge_Justin_Cardona_Actividad_3.ipynb`.

---
*Proyecto realizado como parte de la Evidencia de Aprendizaje 3.*