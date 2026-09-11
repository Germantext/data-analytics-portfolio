# Germán Rojas — Customer Insights & CRM Data Analyst

Analizo comportamiento de cliente para responder preguntas de negocio concretas. Quién está por cancelar, qué segmento genera más revenue, dónde se rompe el funnel.

Vengo de la escritura y el análisis del discurso, y eso define cómo trabajo: el número es el punto de partida, no la conclusión. Lo que entrego es la explicación de por qué pasó y qué decisión se sigue de ahí.

**Stack:** Python (pandas) · SQL · Power BI · HubSpot · Excel avanzado
**Enfoque:** churn y retención · análisis de funnels · segmentación de clientes · métricas de negocio · Voice of Customer

📍 Colombia · Disponible para trabajo remoto
📧 german.rojas.serrano45@gmail.com
🔗 [LinkedIn](https://www.linkedin.com/in/german-rojas-data/)

---

## Proyectos con clientes reales

### 🧵 Retención y comportamiento de compra — Boutique de moda femenina
**Pregunta de negocio:** ¿Por qué las ventas no crecen si entran clientas nuevas todos los meses?

Reconstruí tres años de historial transaccional que vivían en dos sistemas que no se hablaban entre sí: un registro manual de ventas por redes sociales y un export de Shopify.

**Hallazgos clave**
- El 83% de las clientas compra una sola vez y no vuelve. El negocio no tenía un problema de adquisición, tenía un problema de retención.
- El 20% más fiel concentra cerca de la mitad de las ventas totales.
- El canal mayorista deja aproximadamente la mitad del margen que el detal. No existía ninguna columna que distinguiera un canal del otro, así que inferí el segmento a partir de precio por prenda y costo de envío.
- La caída de ventas que la dueña atribuía a un evento externo era en realidad un problema puntual de un mes en un solo canal.

**Recomendación:** programa de fidelización segmentado por frecuencia de compra, y campaña específica de reactivación para el grupo de una sola compra, que es donde está el mayor volumen dormido.

**Herramientas:** Python (pandas, rapidfuzz para deduplicación por similitud de texto), SQL, Excel, HTML + Chart.js
📂 [Ver proyecto](#)

---

### 🏗️ Cartera, revenue y asignación de recursos — Empresa de ingeniería civil
**Pregunta de negocio:** ¿Dónde está el dinero que la empresa facturó pero no ha cobrado, y en qué debería invertir su tiempo el fundador?

**Proceso:** 115 documentos en bruto (facturas, soportes, PDFs) depurados hasta 49 facturas electrónicas válidas y verificadas, con extracción de texto de PDF y limpieza por expresiones regulares. Diseñé una auditoría cruzada que detectó tres errores reales de extracción, incluido un archivo completo que se perdía por un problema de codificación de caracteres.

**Hallazgos clave**
- El 39% de todo lo facturado estaba pendiente de cobro. El negocio no tenía dimensionado ese riesgo de liquidez.
- El fundador concentraba tanto las actividades de bajo valor como las de alta rentabilidad, lo que limitaba la capacidad total del negocio.

**Recomendación:** delegar las actividades operativas de menor valor a personal nuevo para liberar al fundador hacia los servicios de mayor rentabilidad, que son los únicos que solo él puede ejecutar. La recomendación salió cuantificada, no como opinión.

**Herramientas:** Python (pandas, regex), extracción de PDF, SQL, Excel (openpyxl), Power BI (modelo relacional de 4 páginas)
📂 [Ver proyecto](#)

---

## Proyectos de análisis

### 📉 Churn y segmentación de clientes — ConnectaTel (telecomunicaciones)
Consolidé tres fuentes de datos para construir un perfil de consumo por cliente y crucé cada segmento contra su tasa de cancelación.

- El segmento de alto uso es el más rentable y también el de mayor churn (14% frente a 11,65% general). Es decir, la empresa pierde justo a los clientes que más valen.
- El comportamiento de consumo era casi idéntico entre el plan Básico y el Premium, lo que expone un problema de diseño de la oferta.
- Corregí problemas críticos de calidad: 14% de registros de ciudad vacíos, valores centinela en edad y fechas de registro imposibles.

**Herramientas:** Python (pandas, numpy, seaborn, matplotlib), detección de outliers por IQR
📂 [Ver repositorio](https://github.com/Germantext/connectatel-customer-analysis)

### 🛒 Funnel de compra y retención por cohortes — E-commerce LATAM
- Conversión total del funnel de 1,25%, con el 86% de la fuga concentrada en un solo paso, de ver el producto a agregarlo al carrito.
- La retención cae de 86% en D7 a 2,6% en D28. La ventana crítica de abandono son tres semanas.
- Mercados con conversión cercana a cero frente a otros con conversión hasta tres veces superior, lo que orienta dónde investigar fricciones locales de pago y logística.

**Herramientas:** SQL, Excel, análisis de cohortes
📂 [Ver repositorio](https://github.com/Germantext/data-analytics-portfolio)

---

## Formación

- **Certificado Profesional en Data Analyst** — TripleTen (2026)
- **GCI World 2026** — Matsuo-Iwasawa Laboratory, The University of Tokyo
- **Inbound Marketing + Inbound Certification** — HubSpot Academy (vigentes)
- **Licenciatura en Español y Literatura** — Universidad Industrial de Santander

---

## Cómo trabajo

Empiezo por la pregunta de negocio, no por el dataset. Antes de escribir una línea de código quiero saber qué decisión depende de la respuesta, porque eso determina qué vale la pena analizar y qué no.

Documento las suposiciones y los casos borde. Cuando infiero algo que no está explícito en los datos, como separar mayoristas de clientas de detal sin una variable que lo indique, dejo escrito el criterio para que cualquiera pueda discutirlo.

Entrego la conclusión en el lenguaje de quien decide. Un dashboard que nadie entiende no cambió nada.
