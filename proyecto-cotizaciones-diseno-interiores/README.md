# Conversión de cotizaciones y estado real del pipeline — Negocio de diseño de interiores

> **Nota sobre este proyecto.** Es un caso real con un cliente cercano, no un ejercicio de curso. Por acuerdo explícito de confidencialidad, este repositorio no incluye notebook, datos ni cifras exactas del negocio. El proceso técnico completo se ejecutó en Python, con documentación interna que no se publica por la misma razón.

## Problema del negocio

Un negocio pequeño de diseño de interiores y remodelaciones, con línea propia de productos y servicio de instalación, llevaba varios años registrando sus cotizaciones en un archivo de Excel sin ningún sistema formal de seguimiento. El propietario quería entender qué porción de sus cotizaciones se convertía en venta, qué líneas de servicio generaban más ingresos, y si podía identificar el canal de adquisición más rentable. Una parte de su actividad comercial, cotizada por mensajería o en papel, no tenía ningún registro digital.

## Metodología

Revisé el archivo hoja por hoja antes de proponer cualquier análisis. No era una tabla de datos, era un documento de cotización repetido decenas de veces, cada uno con su propio encabezado y su propia tabla de ítems, con estructura inconsistente entre hojas.

La primera fase fue de auditoría de calidad de datos, no de análisis. La fecha de la mayoría de las cotizaciones se recalculaba sola cada vez que se abría el archivo, así que la fecha original ya no existía en buena parte de los registros. Encontré también columnas de total en posiciones distintas según la hoja, ítems sin descripción, fórmulas de suma que dejaban líneas completas por fuera, y una copia de cotización con los datos de un cliente distinto al que indicaba el nombre de la pestaña.

El hallazgo más crítico fue un valor que se salía por completo de la distribución del resto del archivo, producto de un error de digitación en una cantidad, y que por sí solo representaba una porción abrumadoramente desproporcionada del valor total registrado. Lo excluí de cualquier cálculo agregado y lo dejé marcado como pendiente de confirmación con el cliente, en lugar de corregirlo por cuenta propia.

El propietario usaba de forma informal un color distinto en cada pestaña como estado de la cotización, sin que existiera ningún campo explícito. Antes de tratar esa convención como dato confiable, la contrasté con evidencia cruzada dentro del propio archivo, comparando su comportamiento en distintos períodos. Esa verificación reveló que la convención había dejado de aplicarse de forma consistente en el tramo más reciente, lo que cambiaba por completo la interpretación de una parte importante de los registros marcados como pendientes. Por esa razón no reporté una tasa de conversión única, sino un rango honesto entre dos escenarios posibles.

Solo después de resolver estas inconsistencias construí las tablas de conversión, revenue por línea de servicio y concentración de clientes. Sometí el análisis a una revisión independiente con dos modelos de lenguaje distintos, entregándoles el archivo original sin mis conclusiones, para confirmar que los hallazgos se sostenían fuera de mi propio criterio.

## Herramientas

Python (pandas, openpyxl) para extracción y consolidación, HTML y CSS para el informe visual entregado al cliente. Descarté explícitamente construir un dashboard en Power BI, porque el volumen de datos y el hábito real de trabajo del cliente hacían que ese formato no se fuera a usar en la práctica.

## Resultados

- El sistema de seguimiento informal del negocio dejó de aplicarse de manera consistente en el período más reciente, lo que hacía parecer como oportunidades activas a cotizaciones que en realidad llevaban mucho tiempo sin ningún movimiento.
- El esfuerzo comercial estaba desalineado con el resultado económico. La línea de servicio más cotizada era la que menos se convertía en venta, mientras una línea cotizada con menos frecuencia concentraba la mayor parte de los ingresos cerrados y tenía una tasa de conversión considerablemente más alta.
- Los ingresos estaban concentrados en muy pocos clientes, con dos naturalezas distintas que convenía no confundir, una relación puntual de alto valor que no se repetía, y una relación recurrente de menor valor individual pero de compra constante.
- Una línea de negocio que el propietario mencionó como parte de su oferta no tenía ningún rastro en el archivo analizado, lo cual confirmó que esa parte de la operación vivía completamente fuera del registro digital.

## Recomendaciones

Priorizar el contacto con las cotizaciones pendientes de mayor valor antes de invertir esfuerzo en cotizaciones nuevas, dado que ese trabajo comercial ya estaba hecho. Capturar de forma sistemática, desde ahora, la fecha real de cada cotización y el origen del cliente, para poder responder en el futuro la pregunta de canal de adquisición que no se pudo resolver con los datos históricos. Migrar gradualmente los registros que hoy viven fuera del archivo digital hacia el mismo sistema, para que futuros análisis describan la operación completa del negocio.
