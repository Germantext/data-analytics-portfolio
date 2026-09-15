# Churn y segmentación de clientes — ConnectaTel (telecomunicaciones)

## Problema del negocio

La empresa no sabía si estaba perdiendo a sus clientes de bajo valor o a los que más ingresos generaban, ni si el diseño de sus planes estaba contribuyendo al problema.

## Metodología

Consolidé tres fuentes de datos para construir un perfil de consumo por cliente, crucé cada segmento contra su tasa de cancelación y corregí problemas críticos de calidad de datos antes del análisis: 14% de registros de ciudad vacíos, valores centinela en edad y fechas de registro imposibles.

## Herramientas

Python (pandas, numpy, seaborn, matplotlib), detección de outliers por IQR.

## Resultados

- El segmento de alto uso es el más rentable y también el de mayor churn, 14% frente a 11,65% general. La empresa pierde justo a los clientes que más valen.
- El comportamiento de consumo era casi idéntico entre el plan Básico y el Premium, lo que expone un problema de diseño de la oferta.

## Recomendaciones

Rediseñar la diferenciación entre planes Básico y Premium, y priorizar una estrategia de retención específica para el segmento de alto uso antes que para el resto de la base.
