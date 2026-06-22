CREATE TABLE estudiante(
	ID SERIAL PRIMARY KEY,
	rut VARCHAR(12) NOT NULL UNIQUE,
	nombre VARCHAR(50) NOT NULL
);

CREATE TABLE curso(
	ID SERIAL PRIMARY KEY,
	codigo VARCHAR(10) NOT NULL UNIQUE,
	nombre VARCHAR(50) NOT NULL,
	docente_responsable VARCHAR (50)  
);


CREATE TABLE matricula (
	ID SERIAL PRIMARY KEY,
	fecha_inscripcion DATE DEFAULT CURRENT_DATE,
	anio INT,
	rut_estudiante VARCHAR(12),
	codigo_curso VARCHAR(10),
	FOREIGN KEY (rut_estudiante) REFERENCES estudiante(rut) ON DELETE CASCADE,
	FOREIGN KEY (codigo_curso) REFERENCES curso(codigo) ON DELETE CASCADE
);