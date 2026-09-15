# Conversión de cotizaciones y estado real del pipeline — Estudio de diseño de interiores

## Problema del negocio

Un estudio de diseño de interiores y arquitectura llevaba tres años registrando cotizaciones en un Excel de 71 pestañas, sin ningún sistema formal de seguimiento. El dueño necesitaba saber su tasa real de conversión, qué línea de servicio generaba más ingresos y cuáles de sus cotizaciones pendientes seguían siendo oportunidades reales.

## Metodología

Extraje y consolidé 71 hojas con estructura inconsistente en dos tablas planas, 71 cotizaciones y 268 líneas de ítem. Antes de calcular cualquier agregado, identifiqué y aislé un outlier que por sí solo representaba el 84,5% del valor total del archivo, dejándolo marcado como pendiente de confirmación en vez de incluirlo o corregirlo por cuenta propia.

El estado de cada cotización, cerrada, pendiente o rechazada, se infirió a partir del color de cada pestaña, un criterio del propio cliente. Al cruzar esa clasificación contra el histórico, encontré que la tasa de rechazo caía a cero por ciento en el periodo más reciente, algo estadísticamente implausible. La verificación cruzada, con cuatro pruebas independientes, confirmó que el cliente había dejado de marcar cotizaciones como rechazadas, no que su cierre hubiera mejorado. Por esa razón no reporté una tasa de conversión única, sino un rango honesto entre el escenario donde las cotizaciones pendientes antiguas siguen vivas y el escenario donde ya no cuentan.

## Herramientas

Python (pandas, openpyxl) para extracción y consolidación, HTML y CSS para el informe visual entregado al cliente. Se descartó explícitamente construir un dashboard en Power BI, porque con 64 cotizaciones y un cliente que opera desde WhatsApp, un tablero no se iba a usar nunca.

## Resultados

- El semáforo de estados del cliente dejó de reflejar la realidad. Una tasa de rechazo de 0% en el periodo reciente escondía que las cotizaciones simplemente dejaron de marcarse como rechazadas.
- El 86% del monto marcado como "pendiente" corresponde a cotizaciones de casi tres años de antigüedad. No es pipeline activo, es una lista de clientes para recontactar.
- La línea de servicio que más se cotiza es también la que menos cierra. La línea con mejor tasa de cierre y mayor ticket promedio concentra la mayoría del revenue real.
- Dos clientes concentran cerca del 59% del revenue cerrado, pero con lógicas de negocio distintas entre sí, uno es una compra única de alto valor y el otro es una relación recurrente que se comporta más como cliente mayorista que como cliente final.
- Una línea de producto completa, mencionada por el cliente como parte de su negocio, no tiene ningún registro en el archivo analizado. Se documentó como límite del análisis en lugar de omitirlo en silencio.

## Recomendaciones

Priorizar el recontacto de las cotizaciones pendientes más antiguas y de mayor valor, ya que representan la oportunidad de ingreso más grande y menos costosa de recuperar. Restaurar un criterio de estado consistente para las cotizaciones, y empezar a capturar el canal de adquisición de cada cliente nuevo, dato que hoy no existe y que impide entender de dónde viene el negocio.
