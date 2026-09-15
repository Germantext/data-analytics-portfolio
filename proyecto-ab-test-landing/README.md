# Experimento A/B en página de inicio

## Problema del negocio

La empresa tenía dos versiones de su página de inicio corriendo en paralelo y necesitaba decidir con evidencia, no con intuición, cuál de las dos debía quedar como definitiva, considerando tanto la tasa de conversión como el gasto generado por los usuarios que sí convertían.

## Metodología

Validé la calidad de los datos de 40,000 usuarios distribuidos de forma balanceada entre ambas versiones. Apliqué una prueba de Levene para comparar varianzas, seguida de una prueba t de Welch para el gasto promedio, una prueba z de proporciones para la tasa de conversión, y pruebas chi-cuadrado de independencia para evaluar si la fuente de tráfico o el tipo de usuario influían en el resultado.

## Herramientas

Python (pandas, scipy, statsmodels), pruebas estadísticas de hipótesis, visualización con matplotlib/seaborn.

## Resultados

- La página B generó un gasto promedio de 68.75 dólares por usuario convertido frente a 61.09 dólares de la página A, diferencia estadísticamente significativa.
- La página B tuvo una tasa de conversión de 15.96% frente a 12.57% de la página A, también estadísticamente significativa.
- La fuente de tráfico mostró una asociación estadística con la conversión, pero de magnitud tan pequeña, apenas 1.2 puntos porcentuales entre el mejor y el peor canal, que no justifica una reasignación de presupuesto sin evaluar antes el costo de adquisición por canal.
- El tipo de usuario, nuevo o recurrente, no mostró ninguna asociación con la conversión.

## Recomendaciones

Implementar la página B como versión definitiva, ya que supera a la A en ambas métricas de negocio de forma consistente. No reasignar presupuesto entre canales de tráfico basándose solo en este hallazgo, y no diseñar estrategias diferenciadas por tipo de usuario, ya que no hay evidencia que lo respalde.
