# Retención y comportamiento de compra — Boutique de moda femenina

## Problema del negocio

Las ventas del negocio no crecían pese a que entraban clientas nuevas todos los meses. La dueña atribuía la caída a un evento externo puntual, pero no había forma de confirmarlo porque el historial transaccional vivía repartido en dos sistemas que no se comunicaban entre sí: un registro manual de ventas por redes sociales y un export de Shopify.

## Metodología

Reconstruí tres años de historial transaccional cruzando ambas fuentes y deduplicando registros por similitud de texto. Como no existía ninguna columna que distinguiera el canal mayorista del canal detal, inferí el segmento a partir de precio por prenda y costo de envío, dejando documentado el criterio usado.

## Herramientas

Python (pandas, rapidfuzz para deduplicación), SQL, Excel, HTML + Chart.js para la visualización final.

## Resultados

- El 83% de las clientas compra una sola vez y no vuelve. El negocio no tenía un problema de adquisición, tenía un problema de retención.
- El 20% más fiel concentra cerca de la mitad de las ventas totales.
- El canal mayorista deja aproximadamente la mitad del margen que el detal.
- La caída de ventas que la dueña atribuía a un evento externo resultó ser un problema puntual de un mes en un solo canal, no una tendencia real.

## Recomendaciones

Programa de fidelización segmentado por frecuencia de compra, y campaña específica de reactivación dirigida al grupo de una sola compra, que es donde está el mayor volumen dormido.
