# German Rojas — Data Analytics Portfolio

CRM & Marketing Data Analyst | Python · SQL · Power BI · HubSpot

## Proyectos

| Proyecto | Stack | Tema |
|---|---|---|
| mercadolibre_funnel_retention | SQL, Excel | Funnel de compra y retención por cohortes |
| walmart_sales_analysis | Excel, KPIs | Eficiencia por departamento y dashboard |
| financial_performance_sql | SQL, Excel | ROI y margen por mercado geográfico |
| data_cleaning_sales_analysis | Excel | Limpieza y estandarización de datos de ventas |
| mobility_economy_latam | Python, pandas | Movilidad urbana y productividad económica en Latam |

## Contacto
linkedin.com/in/german-rojas-data

---

## 📊 mercadolibre_funnel_retention

**Problema de negocio:** ¿En qué etapa del embudo de compra se pierden más usuarios y cómo varía la retención por país y cohorte?

**Stack:** SQL, Excel

**Periodo analizado:** Enero – Agosto 2025

**Resultados clave:**
- La conversión total del embudo (select_item → purchase) es de solo **1.25%**.
- La fuga más grande ocurre en el primer paso: **de "ver producto" a "agregar al carrito" se pierde ~86% de los usuarios** (76.9% → 11%). Es el cuello de botella principal.
- Por país, **Uruguay (4.55%), Bolivia (3.23%) y México (2.48%)** tienen la mejor conversión final; **Ecuador, Colombia y Paraguay convierten ~0%**.
- Retención: D7 ~86%, D14 ~55%, D21 ~25%, **D28 cae a solo ~2.6%** — la mayoría de usuarios no vuelve después de 3 semanas.
- Mejor retención D28 por país: Perú (3.2%) y México (3.1%). Peor: Colombia (1.6%) y Chile (1.7%).

**Recomendaciones de negocio:**
1. Priorizar la optimización de la ficha de producto y el botón "agregar al carrito" (mayor envío visible, reviews, política de devoluciones).
2. Reducir fricción en checkout (autocompletado, menos pasos, reintento de pago sin perder carrito).
3. Implementar reactivación temprana (D7–D21) vía recordatorios de carrito, alertas de precio y promociones segmentadas.
4. Investigar fricciones locales en Ecuador, Colombia y Paraguay (pagos, logística, confianza).

---

## 📈 walmart_sales_analysis

**Problema de negocio:** ¿Qué departamentos son más y menos eficientes generando ventas por metro cuadrado, y dónde está la oportunidad de reasignar espacio?

**Stack:** Excel, tablas dinámicas, dashboard interactivo

**Resultados clave:**
- Los departamentos más eficientes por ventas/m² son **Despensa y Básicos, Comida Fresca y Hogar/Papel**.
- Los menos eficientes: **Jardín y Vida al Aire Libre y Oficina/Escuela**.
- **Despensa y Básicos** también lidera en participación sobre el total de ventas — es el mayor contribuyente al negocio.
- Departamentos con baja participación Y baja eficiencia (Jardín, Oficina/Escuela) ocupan espacio sin retorno proporcional.

**Recomendación de negocio:**
Priorizar inventario y presupuesto en Despensa, Comida Fresca y Hogar/Papel. Evaluar reducción de espacio o campañas de cross-selling en Jardín y Oficina/Escuela antes de recortar inversión.

**Dashboard:** incluye filtro interactivo por departamento con KPIs de ventas/m² y % de participación.

---

## 💰 financial_performance_sql

**Problema de negocio:** ¿Qué países generan mayor rentabilidad real (ROI) y dónde está mal asignado el presupuesto de marketing?

**Stack:** SQL, Excel

**Resultados clave:**
- **Estados Unidos** lidera en ingresos (3.35M), beneficio bruto (1.45M) y ROI (75.75%) — pero su gasto en campañas (1.92M) **supera su beneficio bruto**, lo que indica oportunidad de optimización incluso en el mejor mercado.
- Los márgenes de ganancia son similares entre países (41%–45%), pero el **ROI varía drásticamente** (de 17% a 76%) — la diferencia está en cuánto se gasta en campañas vs. el tamaño real del mercado.
- **Canadá, Francia, Alemania y Reino Unido** tienen márgenes saludables pero ROI bajo (17%–22%): gastan en campañas casi lo mismo que USA pero generan una fracción del retorno.

**Recomendación de negocio:**
Reasignar presupuesto de marketing priorizando USA y Australia (mayor ROI), reduciendo gradualmente la inversión en Canadá, Francia, Alemania y Reino Unido hasta optimizar las campañas locales con mensajes adaptados culturalmente.

---

## 🧹 data_cleaning_sales_analysis

**Problema de negocio:** El dataset original de ventas tenía inconsistencias (acentos rotos, nombres de ciudad sin estandarizar, productos sin categorizar) que impedían un análisis confiable.

**Stack:** Excel

**Proceso de limpieza:**
- Estandarización de nombres de ciudad (`Ciudad_corregida`)
- Separación de la columna "Producto" en Categoría, Tipo y Especificaciones (ej: "Tablet-Estándar-8GB" → Tablet | Estándar | 8GB)
- Corrección de precios y montos totales
- 0 duplicados detectados

**Resultados clave (753 transacciones, Q4 2024):**
- Ventas totales: **$2,944,620.61**
- Ticket promedio: **$3,910.52**
- Producto más vendido: **Tablet**
- Ciudad con mayor volumen: **Monterrey**
- Mes pico: **Octubre**

**Recomendación de negocio:**
Priorizar campañas promocionales e inventario de Tablets en Monterrey para el próximo trimestre.

**Limitación:** se recomienda que el sistema de captura use campos de selección única (dropdown) para ciudad y producto, evitando irregularidades futuras en los datos.

---

## 🚗 mobility_economy_latam

**Problema de negocio:** ¿Existe relación entre la movilidad urbana (congestión vehicular) y la productividad económica (PIB per cápita) en ciudades de Latinoamérica, para priorizar inversión en infraestructura?

**Stack:** Python (pandas, seaborn, matplotlib)

**Cobertura:** 15 ciudades de 6 países latinoamericanos, año 2024 (TomTom Traffic Index + OECD Cities)

**Resultados clave:**
- No existe una relación directa clara entre congestión y PIB per cápita.
- **Ciudad de México** es un outlier: tiene la mayor congestión de toda la muestra con PIB moderado-bajo.
- **Montevideo** tiene el PIB per cápita más alto y baja congestión.
- **Bogotá** combina alta congestión (jams_delay ≈ 1,141) con PIB bajo (~USD 11,442) — patrón similar en Lima.

**Recomendación de negocio:**
Priorizar Bogotá y Lima para inversión en infraestructura de transporte. Profundizar el análisis incorporando datos de densidad poblacional e infraestructura vial antes de asignar presupuesto.

**Output:** `ladb_mobility_economy_2024_clean.csv`
