# Ficha del proyecto

## 1. Información general

- **Nombre del proyecto.** Embudo de ventas B2B, dónde se gana y dónde se pierde
- **Especialidad.** DA
- **Fuente del proyecto.** Dataset público CRM Sales Opportunities, de Maven Analytics, con licencia de dominio público
- **Link a la fuente original.** https://mavenanalytics.io/data-playground/crm-sales-opportunities
- **Link al proyecto publicado.** https://github.com/Germantext/data-analytics-portfolio/tree/main/proyecto-embudo-ventas-b2b

## 2. Objetivo

Ayudar a un gerente de ventas B2B a decidir dónde poner la atención de su equipo el próximo trimestre y a saber qué tan confiable es su pipeline abierto para proyectar ingresos. El análisis separa lo que depende de cerrar mejor de lo que depende de elegir mejor las oportunidades y de mantener limpio el CRM.

## 3. Plan de trabajo

1. **Exploración inicial.** Revisión de las cuatro tablas, nulos por etapa y consistencia de las llaves entre tablas.
2. **Preparación.** Corrección de dos errores de digitación con vistas SQL, GTXPro por GTX Pro y technolgy por technology, sin modificar los archivos originales.
3. **Construcción.** Ocho consultas SQL sobre SQLite para medir embudo, tasa de cierre por segmento, mezcla de productos, ciclo de venta y salud del pipeline abierto, más tres gráficos en Matplotlib.
4. **Evaluación.** Tasa de cierre, participación de cada producto en negocios e ingresos, mediana del ciclo de venta y valor esperado del pipeline con y sin oportunidades estancadas.
5. **Conclusiones y próximos pasos.** Lectura de negocio, cinco recomendaciones y limitaciones del análisis.

## 4. Preguntas clave

- ¿De dónde vienen los datos y qué tan vigentes son? Son de una empresa ficticia entre 2016 y 2017, útiles para practicar el método con la estructura de un CRM real.
- ¿Las cuentas que faltan en el pipeline abierto son un error de registro o una costumbre del equipo? Todas las oportunidades cerradas tienen cuenta y dos de cada tres abiertas no, lo que apunta a una costumbre que habría que confirmar con el equipo.
- ¿Qué umbral de antigüedad aceptaría el equipo comercial antes de dar por perdida una oportunidad? Los datos proponen 115 y 138 días, pero la regla final la define el negocio.

## 5. Qué se hizo y cómo

- **Nulos.** Los de fecha y valor de cierre corresponden a oportunidades abiertas, y los de fecha de contacto a las que siguen en Prospecting, así que se dejaron como están. Los nulos de cuenta se trataron como hallazgo de calidad de registro.
- **Transformaciones.** Vistas SQL para corregir nombres de producto y sector. Cálculo de días de ciclo con julianday. Tramos de duración con CASE. Participaciones con SUM() OVER (). Valor esperado con un CTE que combina precio de lista y tasa de cierre histórica por producto.
- **Modelos.** No se entrenó un modelo predictivo. La pregunta del negocio se responde con análisis descriptivo y con valor esperado por etapa.

## 6. Resultados

- Tasa de cierre global de 63,2%, estable entre productos, sectores, oficinas y gerentes, con un rango de 60% a 65%.
- MG Special y GTX Basic son el 40,3% de los negocios ganados y el 5,4% de los ingresos. GTX Pro, GTX Plus Pro y MG Advanced son el 43,9% de los negocios y el 83,5% de los ingresos.
- Mediana de 14 días para los negocios perdidos y de 57 días para los ganados. La tasa de cierre sube de 54% en la primera semana a 71% después de 90 días.
- El 81% de las oportunidades en Engaging supera el ciclo más largo observado, de 138 días. Al excluirlas, el valor esperado del pipeline baja de 2,44 a 0,44 millones de dólares, un 82% menos.

## 7. Conclusiones

Aprendí que la primera pregunta útil en un embudo es dónde se pierde el dinero, antes de preguntar quién vende mejor. También que un pipeline puede verse sano en el número total y estar lleno de oportunidades que ya no existen.

Con más tiempo cargaría los datos en un CRM real como HubSpot para construir las vistas y alertas de antigüedad, armaría un tablero en Power BI para el gerente y analizaría el desempeño por vendedor y por tipo de cuenta.

En una entrevista contaría el hallazgo del pipeline inflado, porque muestra cómo un problema de registro en el CRM termina en un pronóstico de ingresos cinco veces mayor que el que respalda el historial.

## 8. Checklist antes de publicar

- [x] README explica el proyecto sin necesidad de revisar todo el detalle
- [x] Archivos organizados, sin pruebas sueltas o versiones viejas
- [x] Sin credenciales ni datos sensibles en el repositorio
- [x] Link a la fuente original incluido y funcionando
- [x] Proyecto publicado y accesible
- [ ] Link compartido con tu coach
