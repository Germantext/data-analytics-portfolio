# Cartera, revenue y asignación de recursos — Empresa de ingeniería civil

## Problema del negocio

La empresa no tenía dimensionado cuánto dinero había facturado pero no había cobrado, y el fundador no sabía en qué actividades debía concentrar su tiempo para maximizar la rentabilidad del negocio.

## Metodología

Depuré 115 documentos en bruto (facturas, soportes, PDFs) hasta llegar a 49 facturas electrónicas válidas y verificadas. Extraje texto de PDF y limpié con expresiones regulares. Diseñé una auditoría cruzada que detectó tres errores reales de extracción, incluido un archivo completo que se perdía por un problema de codificación de caracteres.

## Herramientas

Python (pandas, regex), extracción de PDF, SQL, Excel (openpyxl), Power BI con modelo relacional de 4 páginas.

## Resultados

- El 39% de todo lo facturado estaba pendiente de cobro, un riesgo de liquidez que el negocio no tenía dimensionado.
- El fundador concentraba tanto las actividades de bajo valor como las de alta rentabilidad, lo que limitaba la capacidad total del negocio.

## Recomendaciones

Delegar las actividades operativas de menor valor a personal nuevo, para liberar al fundador hacia los servicios de mayor rentabilidad, que son los únicos que solo él puede ejecutar. La recomendación quedó cuantificada, no como opinión.
