# Diccionario de Datos - Sistema Universitario

## 1. Tabla: estudiante
**Descripción:** Almacena la información de identificación de los alumnos matriculados.

| Campo | Tipo de Datos | Nulo | Clave | Predeterminado | Descripción |
| :--- | :--- | :---: | :---: | :---: | :--- |
| id | SERIAL | NO | PK | *Autoincremental* | Identificador único interno del registro. |
| rut | VARCHAR(12) | NO | UK | *Ninguno* | Rol Único Tributario del estudiante (Formato: 12345678-K). |
| nombre | VARCHAR(50) | NO | - | *Ninguno* | Nombre completo del alumno. |

## 2. Tabla: curso
**Descripción:** Registra las asignaturas disponibles en la institución académica.

| Campo | Tipo de Datos | Nulo | Clave | Predeterminado | Descripción |
| :--- | :--- | :---: | :---: | :---: | :--- |
| id | SERIAL | NO | PK | *Autoincremental* | Identificador único interno de la asignatura. |
| codigo | VARCHAR(10) | NO | UK | *Ninguno* | Código alfanumérico institucional del curso (ej: INF-201). |
| nombre | VARCHAR(50) | NO | - | *Ninguno* | Nombre de la asignatura. |
| docente_responsable | VARCHAR(50) | SÍ | - | *Ninguno* | Nombre del profesor encargado de dictar la materia. |

## 3. Tabla: matricula
**Descripción:** Tabla asociativa que registra la inscripción histórica y vigente de estudiantes en sus respectivos cursos.

| Campo | Tipo de Datos | Nulo | Clave | Predeterminado | Descripción |
| :--- | :--- | :---: | :---: | :---: | :--- |
| id | SERIAL | NO | PK | *Autoincremental* | Identificador único del evento de matrícula. |
| fecha_inscripcion | DATE | SÍ | - | CURRENT_DATE | Fecha calendario en la que se realiza la inscripción. |
| anio | INT | SÍ | - | *Ninguno* | Año académico en el que se cursa la asignatura. |
| rut_estudiante | VARCHAR(12) | SÍ | FK | *Ninguno* | Clave foránea. Relaciona con `estudiante(rut)`. ON DELETE CASCADE. |
| codigo_curso | VARCHAR(10) | SÍ | FK | *Ninguno* | Clave foránea. Relaciona con `curso(codigo)`. ON DELETE CASCADE. |

# 4. Reflexión 
### CUAL FUE LA MAYOR DIFICULTAD AL TRANSFORMAR EL MODELO CONCEPTUAL AL RELACIONAL?
- R.

### QUE VENTAJAS TIENE NORMALIZAR UNA BASE DE DATOS? Y CUANDO CONVIENE DESNORMALIZARLA?
- R.