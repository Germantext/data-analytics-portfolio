# Cartera, ingresos y asignación de tiempo — Profesional independiente de servicios técnicos

> **Nota sobre este proyecto.** Es un caso real con un cliente cercano, no un ejercicio de curso. Por acuerdo explícito de confidencialidad, este repositorio no incluye notebook, datos ni cifras exactas del negocio. El proceso técnico completo se ejecutó en Python, Excel y Power BI, con documentación interna que no se publica por la misma razón.

## Problema del negocio

Un profesional independiente del sector de servicios técnicos de campo llevaba sus registros financieros de forma manual y dispersa en varios archivos. No tenía una manera clara de saber cuánto de su trabajo terminaba realmente facturado, cuánto de lo facturado seguía sin cobrar, ni qué clientes concentraban ese riesgo.

## Metodología

Antes de tocar cualquier análisis, separé por completo la información personal y familiar que venía mezclada con los datos del negocio, y la dejé fuera del proceso sin excepción. Al revisar los datos reales, el alcance definido al inicio no calzaba del todo con lo disponible, así que ajusté el objetivo a lo que la información sí podía responder con honestidad, en vez de forzar una respuesta con supuestos.

La información llegó como un conjunto grande de documentos sin estructurar, en varios formatos distintos entre sí. Construí un proceso de extracción que reconocía cada formato por separado, y en el camino encontré un problema de codificación de caracteres que hacía desaparecer documentos completos de forma silenciosa, sin ningún error visible. Antes de dar por buena la información extraída, la sometí a una segunda revisión independiente, hecha por otra herramienta sin acceso a mi resultado previo, y usé esa revisión para corregir lo que se me había pasado.

Encontré que el negocio llevaba dos sistemas de registro en paralelo que nunca se hablaban entre sí, uno para el trabajo cotidiano y otro para la facturación formal de proyectos grandes. Diseñé un modelo de datos relacional que permitiera cruzar ambos y sostener un único número confiable de ingresos y cartera.

## Herramientas

Python (pandas, extracción y validación de texto), Excel para entregables intermedios, Power BI para el tablero final.

## Resultados

- Una porción relevante de los documentos recibidos no correspondía al negocio en absoluto y se excluyó por completo.
- Una parte considerable de lo ya facturado seguía sin cobrarse, y esa
