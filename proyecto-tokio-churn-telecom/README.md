# Churn Prediction & Retention Strategy — Telecomunicaciones (Company A)

**Nota:** "Company A" es una empresa ficticia y el dataset es material educativo del programa GCI World 2026, Matsuo-Iwasawa Laboratory, The University of Tokyo. No es un cliente real.

## Hallazgo principal

La empresa muestra una tasa de abandono del 49,6% en una ventana de observación de 31 a 60 días, muy por encima del promedio de la industria (15-25%). Esto representa 34,4 millones de dólares en ingresos anuales en riesgo. La edad del dispositivo y la caída en el uso son las señales más fuertes para predecir ese abandono, y ambas son observables antes de que el cliente se vaya.

## Problema del negocio

La empresa necesitaba identificar con anticipación qué clientes tenían mayor probabilidad de cancelar el servicio, para poder intervenir antes de perderlos, en lugar de reaccionar después.

## Metodología

Integré dos fuentes de datos, perfil demográfico y de dispositivo, y comportamiento de uso y facturación, sobre 100.000 clientes. Comparé dos modelos de clasificación, regresión logística y Random Forest, y seleccioné Random Forest como herramienta de priorización, no como predictor definitivo.

## Herramientas

Python (pandas, scikit-learn), Random Forest, regresión logística, métrica AUC-ROC.

## Resultados

- Random Forest obtuvo un AUC-ROC de 0,6677, un desempeño moderado que se enmarca como herramienta de ranking y priorización, no como predictor de precisión alta.
- Los predictores más fuertes fueron la edad del dispositivo (13,7%) y el tiempo de permanencia del cliente (11,6%).
- El modelo identifica 3.976 clientes de alto riesgo sobre los cuales enfocar una intervención de retención.

## Recomendaciones

Implementar el modelo como herramienta mensual de priorización dentro del proceso de retención, no como decisión automática. Validar los supuestos de la propuesta de negocio, incluido el retorno estimado, mediante un piloto controlado antes de escalar la intervención a toda la base de clientes de alto riesgo.

## Limitaciones

El AUC-ROC de 0,6677 indica poder predictivo moderado. El retorno de inversión proyectado (424%) es una estimación pendiente de validación empírica, no un resultado comprobado. El modelo identifica asociaciones, no causalidad.

📄 [Ver propuesta ejecutiva (PDF)](#)
📓 [Ver notebook técnico](#)
