# RappiPlus — de datos a decisiones de negocio

## Problema del negocio

El equipo detrás de un servicio de suscripción tipo RappiPlus necesitaba responder, con evidencia y no con intuición, si el negocio era rentable, en qué paso del proceso de compra se perdían más usuarios, si los usuarios seguían activos con el tiempo, si un cambio reciente en el checkout mejoraba realmente la conversión, y si los números que arrojaba Python coincidían con los que mostraba el dashboard de Power BI antes de presentárselos a alguien.

## Metodología

Integré cinco fuentes de datos, pedidos, catálogo de costos, inversión en marketing, eventos de comportamiento y resultados de un experimento controlado, y construí el análisis en seis pasos, calidad de datos, rentabilidad, funnel de conversión, retención por cohortes, test A/B y dashboard ejecutivo en Power BI. Cada paso se auditó antes de pasar al siguiente, y el dashboard final se contrastó cifra por cifra contra el análisis en Python.

## Herramientas

Python (pandas, matplotlib/seaborn), SQL, prueba estadística de proporciones (two-proportion z-test), Power BI con modelo DAX propio.

## Resultados

**Auditoría de calidad de datos, antes de confiar en cualquier número.** Encontré dos errores silenciosos de integración, categorías de producto duplicadas por un problema de encoding y países repetidos por diferencias de capitalización en el texto. Son exactamente el tipo de error que aparece al integrar HubSpot, Salesforce y plataformas de Ads, donde el mismo dato llega escrito de formas distintas según el sistema de origen.

**Un outlier que cambiaba la conclusión de negocio.** Un solo pedido con una cantidad anómala inflaba el revenue total 5.5 veces y hacía que el sistema reportara un producto distinto como el más vendido. Sin detectarlo antes de agregar, todo el análisis de rentabilidad habría quedado construido sobre un error.

**Un test A/B que no confirmó la hipótesis, y se reportó así.** El cambio de diseño en el checkout no mostró una diferencia estadísticamente significativa en conversión. La decisión correcta fue no recomendar el cambio, en vez de forzar una lectura positiva para justificar el trabajo invertido en el rediseño.

**Retención estable, con una duda documentada sobre el propio dato.** La retención se mantuvo cerca del 41% durante tres semanas sin ninguna caída visible, un patrón inusualmente plano para comportamiento real de usuario. Documenté esa sospecha en vez de reportar el número como un hallazgo positivo sin más, porque puede ser un artefacto del dataset y no una señal real de negocio.

**Auditoría cruzada entre Python y Power BI.** Al contrastar ambas fuentes encontré un error de separador decimal en la carga de datos que inflaba las métricas del dashboard 90 veces, y un error propio en la fórmula DAX de Profit Total. Corregir ambos antes de entregar el dashboard es el tipo de control de calidad que se espera en un rol de RevOps o CRM analytics, donde el mismo negocio se mide desde herramientas distintas y ambas tienen que coincidir.

## Recomendaciones

Establecer una rutina de validación de encoding y formato de texto antes de cualquier agregación en integraciones con CRM o plataformas de Ads. Revisar valores extremos de cantidad o monto antes de calcular cualquier métrica de revenue, no después. No implementar cambios de producto basados en resultados de test A/B sin significancia estadística confirmada. Y establecer un checklist de reconciliación numérica entre el análisis en código y cualquier dashboard antes de presentarlo a negocio.
