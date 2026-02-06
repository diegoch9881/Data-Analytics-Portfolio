# Indicadores Mensuales Operativos de Atención al Cliente | Tableau Professional Portfolio

## 📌 Descripción del Proyecto
Este proyecto fue desarrollado para proporcionar al Responsable de Soporte Técnico (Help Desk) una herramienta integral para monitorear el desempeño del equipo y las operaciones generales de atención. El dashboard transforma datos brutos en hallazgos accionables, ayudando al liderazgo a identificar agentes de alto rendimiento y cuellos de botella operativos.

## 🔗 Dashboard Interactivo en Vivo
👉 **[Ver Reporte Interactivo en Tableau Public](https://public.tableau.com/views/CallCenterMonthlyOperationalKPIInsights/Dashboard?:language=es-ES&:sid=&:display_count=n&:origin=viz_share_link)**

---

## 💡 Caso de Negocio
La gerencia necesitaba supervisar el rendimiento de los empleados y obtener información general sobre los volúmenes de llamadas. El desafío radicaba en que los requerimientos eran de alto nivel; por lo tanto, diseñé un conjunto de KPIs para definir el "éxito" del departamento, centrándome en:
* **Eficiencia:** Cuántas llamadas se atienden y con qué rapidez.
* **Efectividad:** Cuántos problemas se resuelven realmente.
* **Satisfacción:** Cómo califican los clientes el servicio recibido.

## 🛠️ Transformación de Datos e Implementación Técnica
Para lograr un nivel profundo de análisis, realicé una limpieza exhaustiva de datos e ingeniería de variables dentro de Tableau:

* **Expresiones LOD (FIXED):** Implementé cálculos de Nivel de Detalle para comparar las métricas del mes actual con los máximos históricos, asegurando que el requerimiento "Mensual" se cumpliera de forma dinámica.
* **Dimensiones Personalizadas:** Creé nuevos campos calculados para categorizar la "Hora de la llamada" y el "Estado de resolución" para una mejor granularidad.
* **Extracción de Datos:** Utilicé una extracción de datos de Tableau (.hyper) dentro de un libro de trabajo empaquetado (.twbx) para optimizar el rendimiento y garantizar la portabilidad.

## 📊 Indicadores Clave de Desempeño (KPIs)
El dashboard se divide en varias vistas analíticas:
* **Productividad del Agente:** Desglose de llamadas contestadas vs. resueltas por cada agente.
* **Tendencias de Volumen de Llamadas:** Distribución horaria y diaria de llamadas para identificar picos de demanda.
* **Calificación de Satisfacción:** Seguimiento mensual de los comentarios de los clientes para asegurar la calidad del servicio.
* **Tasas de Resolución:** Una vista porcentual de los tickets cerrados con éxito.

## 📁 Estructura del Repositorio
* `Indicadores_Mensuales_Operativos_de_Atencion_al_Cliente.twbx`: El libro de trabajo de Tableau empaquetado completo (incluye datos).
* `README.md`: Documentación del proyecto y enlaces.

---
**Autor:** Diego Chavez  
*Data Analyst Portfolio | Python • SQL • Tableau • Power BI*