# German Rojas — Customer Insights & CRM Data Analyst

Analizo comportamiento de cliente para responder preguntas de negocio concretas. Quién está por cancelar, qué segmento genera más revenue, dónde se rompe el funnel.

Vengo de la escritura y el análisis del discurso, y eso define cómo trabajo: el número es el punto de partida, no la conclusión. Lo que entrego es la explicación de por qué pasó y qué decisión se sigue de ahí.

**Stack:** Python (pandas) · SQL · Power BI · HubSpot · Excel avanzado
**Enfoque:** churn y retención · análisis de funnels · segmentación de clientes · métricas de negocio · Voice of Customer

📍 Colombia · Disponible para trabajo remoto
📧 german.rojas.data@gmail.com
🔗 [LinkedIn](https://www.linkedin.com/in/german-rojas-data/)

---

## Proyectos con clientes reales

*Los siguientes tres proyectos son casos reales con clientes cercanos, no ejercicios de curso. Por acuerdo explícito de confidencialidad, sus repositorios no incluyen notebook, datos ni cifras exactas del negocio.*

### 🧵 Retención y comportamiento de compra — Marca de moda femenina independiente
Reconstruí el historial transaccional completo cruzando dos sistemas que nunca se comunicaban entre sí, para entender por qué las ventas no crecían pese a la entrada constante de clientas nuevas.

- La gran mayoría de las clientas compra una sola vez y desaparece del negocio para siempre, un patrón que apuntaba directo a un problema de retención.
- Un grupo reducido de clientas recurrentes concentra una parte desproporcionadamente alta de la facturación total.
- La caída de ventas que la dueña atribuía a un evento externo no se sostuvo con los datos.

**Herramientas:** Python (pandas, comparación de texto para deduplicación), Excel, tablero HTML
📂 [Ver proyecto](proyecto-boutique-moda)

### 🏗️ Cartera, ingresos y asignación de tiempo — Profesional independiente de servicios técnicos
Diseñé un modelo de datos relacional para cruzar dos sistemas de registro que nunca se hablaban entre sí, y sostener un único número confiable de ingresos y cartera.

- Una parte considerable de lo ya facturado seguía sin cobrarse, concentrada mayormente en un solo cliente.
- Al comparar los dos tipos de servicio principales, uno rendía notablemente más por día de trabajo que el otro.

**Herramientas:** Python (pandas, extracción y validación de texto), Excel, Power BI
📂 [Ver proyecto](proyecto-ingenieria-civil)

### 🛋️ Conversión de cotizaciones y estado real del pipeline — Negocio de diseño de interiores
Auditoría de calidad sobre un archivo de cotizaciones sin ningún sistema formal de seguimiento, antes de calcular cualquier métrica de conversión.

- El esfuerzo comercial estaba desalineado con el resultado económico, la línea más cotizada resultó ser la que menos convertía en venta.
- Los ingresos estaban concentrados en muy pocos clientes, con dos lógicas de negocio distintas entre sí.

**Herramientas:** Python (pandas, openpyxl), HTML y CSS
📂 [Ver proyecto](proyecto-cotizaciones-diseno-interiores)

---

## Proyectos de análisis

### 🛵 RappiPlus — de datos a decisiones de negocio
Proyecto insignia aplicado en seis pasos, calidad de datos, rentabilidad, funnel de conversión, retención por cohortes, test A/B y dashboard ejecutivo en Power BI.

- Un outlier en una sola orden inflaba el revenue total y cambiaba qué producto aparecía como el más vendido, hasta excluirlo del cálculo.
- El test A/B del checkout no alcanzó significancia estadística, y así quedó reportado, sin forzar una lectura favorable.
- Auditoría cruzada entre el análisis en Python y el dashboard en Power BI, con dos errores reales de cálculo detectados y corregidos antes de entregar.

**Herramientas:** Python (pandas, matplotlib/seaborn), SQL, prueba de proporciones, Power BI
📂 [Ver proyecto](proyecto-rappiplus)

### 🗼 Churn Prediction & Retention Strategy — Telecomunicaciones (dataset educativo, GCI World, Universidad de Tokio)
Modelo de clasificación para priorizar clientes en riesgo de cancelación, con propuesta de negocio cuantificada.

- Tasa de abandono de 49,6% en ventana de 31 a 60 días, con 34,4 millones de dólares en ingresos anuales en riesgo.
- Random Forest (AUC 0,6677) funciona como herramienta de priorización de clientes, útil para ordenar a quién contactar primero, sin pretender adivinar con certeza quién cancelará.
- El retorno de inversión proyectado, 424%, quedó reportado como estimación pendiente de validar con un piloto.

**Herramientas:** Python (pandas, scikit-learn), Random Forest, regresión logística
📂 [Ver proyecto](proyecto-tokio-churn-telecom)

### 📉 Churn y segmentación de clientes — ConnectaTel (telecomunicaciones)
Consolidación de tres fuentes de datos para cruzar perfil de consumo contra tasa de cancelación.

- El segmento de alto uso resultó ser el más rentable y también el de mayor churn, justo el que más le costaba perder a la empresa.
- El comportamiento de consumo era casi idéntico entre el plan Básico y el Premium, lo que expone un problema de diseño de la oferta.

**Herramientas:** Python (pandas, numpy, seaborn, matplotlib), detección de outliers por IQR
📂 [Ver proyecto](proyecto-connectatel)

### 💰 Rentabilidad y ROI de campañas de marketing por país
Comparación de margen de ganancia contra retorno de marketing por país, dos métricas que pueden dar señales opuestas.

- Estados Unidos y Australia concentran el mejor retorno de marketing.
- Canadá, Francia, Alemania y Reino Unido mantienen buen margen, pero con un ROI bajo, producto de gastar en campañas montos similares a los de mercados mucho más grandes.

**Herramientas:** Excel, con fórmulas de cálculo por país y tabla comparativa de márgenes y ROI
📂 [Ver proyecto](proyecto-financial-performance)

### 🛒 Eficiencia de ventas por departamento — Retail Walmart
Ventas por metro cuadrado y participación por departamento, para decidir dónde priorizar espacio e inventario.

- Despensa y Básicos lidera en eficiencia por metro cuadrado y en aporte al total de ventas.
- Jardín y Vida al Aire Libre ocupa espacio de tienda que podría rendir más en otra categoría.

**Herramientas:** Excel avanzado, tablas dinámicas, dashboard interactivo
📂 [Ver proyecto](proyecto-walmart-eficiencia-retail)

### 🛍️ Funnel de compra y retención por cohortes — E-commerce LATAM
- Conversión total del funnel de 1,25%, con el 86% de la fuga concentrada en el paso de ver el producto a agregarlo al carrito.
- La retención cae de 86% en D7 a 2,6% en D28, una ventana crítica de apenas tres semanas.

**Herramientas:** SQL, Excel, análisis de cohortes
📂 [Ver proyecto](proyecto-funnel-ecommerce-latam)

### 🧪 Experimento A/B en página de inicio
- La página B generó mayor gasto promedio por usuario convertido y mayor tasa de conversión, ambas diferencias estadísticamente significativas.
- La fuente de tráfico y el tipo de usuario resultaron irrelevantes para explicar el resultado.

**Herramientas:** Python (pandas, scipy, statsmodels), pruebas de hipótesis
📂 [Ver proyecto](proyecto-ab-test-landing)

---

## Formación

- **Certificado Profesional en Data Analyst** — TripleTen (2026)
- **GCI World 2026** — Matsuo-Iwasawa Laboratory, The University of Tokyo
- **Inbound Marketing + Inbound Certification** — HubSpot Academy (vigentes)
- **Licenciatura en Español y Literatura** — Universidad Industrial de Santander

---

## Cómo trabajo

Empiezo por la pregunta de negocio, no por el dataset. Antes de escribir una línea de código quiero saber qué decisión depende de la respuesta, porque eso determina qué vale la pena analizar y qué no.

Documento las suposiciones y los casos borde. Cuando infiero algo que no está explícito en los datos, dejo escrito el criterio para que cualquiera pueda discutirlo.

Entrego la conclusión en el lenguaje de quien decide, siguiendo la misma estructura de causa y consecuencia con la que fui formado para leer un texto.
