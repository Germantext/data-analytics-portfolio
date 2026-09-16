# Retención y comportamiento de compra — Marca de moda femenina independiente

> **Nota sobre este proyecto.** Es un caso real con un cliente cercano, no un ejercicio de curso. Por acuerdo explícito de confidencialidad, este repositorio no incluye notebook, datos ni cifras exactas del negocio. El proceso técnico completo (extracción, limpieza y análisis) se ejecutó en Python y Excel, con documentación interna que no se publica por la misma razón.

## Problema del negocio

Las ventas del negocio no crecían al ritmo esperado pese a la entrada constante de clientas nuevas. La dueña atribuía la desaceleración a un evento externo puntual, pero no había forma de confirmarlo porque el historial transaccional vivía repartido en dos sistemas que nunca se comunicaban entre sí, un registro manual de ventas por redes sociales y la exportación de una plataforma de comercio en línea.

## Metodología

Reconstruí el historial transaccional completo cruzando ambas fuentes y deduplicando registros por similitud de texto, después de un proceso extenso de limpieza sobre un formato de digitación irregular. Como no existía ninguna columna que distinguiera el canal mayorista del canal de venta individual, calibré un criterio a partir de señales indirectas de comportamiento de compra, lo validé contra los casos que la dueña pudo confirmar de primera mano, y lo aplique al resto de la base. Para la hipótesis sobre la caída de ventas, comparé cada período contra su propio histórico equivalente, controlando por estacionalidad, en vez de aceptar la explicación intuitiva de entrada.

## Herramientas

Python (pandas, librería de comparación de texto para deduplicación), Excel, tablero interactivo en HTML con librería de gráficos en JavaScript.

## Resultados

- La gran mayoría de las clientas compra una sola vez y no vuelve. El negocio no tenía un problema de adquisición, tenía un problema de retención.
- Un grupo reducido de clientas recurrentes concentra una parte desproporcionadamente alta de la facturación total, y lo que las distingue no es gastar más por compra, sino la frecuencia con la que regresan.
- El canal mayorista deja un margen considerablemente menor que el canal de venta individual.
- La caída de ventas que la dueña atribuía a un evento externo no se sostuvo con los datos. El negocio venía de un período de crecimiento sostenido, y la desaceleración se concentraba en un momento puntual dentro de un solo canal, mientras el otro seguía saludable.

## Recomendaciones

Programa de reconocimiento diferenciado para el grupo más recurrente, basado en gestos de valor simbólico en lugar de descuentos, ya que ese grupo no buscaba mejor precio sino relación. Estrategia de reactivación con ventana de tiempo acotada para las clientas de una sola compra, antes de que se enfríe la posibilidad de una segunda. Y formalización de una oportunidad estacional que el negocio ya aprovechaba de forma parcial, condicionada a su capacidad operativa real.
