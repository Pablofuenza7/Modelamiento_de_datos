CREATE DATABASE caso2;

CREATE TABLE curso
(   
    id_curso INT NOT NULL PRIMARY KEY,
    nombre_curso VARCHAR(30)
);

CREATE TABLE alumno
(
    id_alumno INT NOT NULL PRIMARY KEY,
    idcurso_alumno INT NOT NULL,
    rut_alumno VARCHAR(10) NOT NULL,
    nombre_alumno VARCHAR(30) NOT NULL,
    FOREIGN KEY (idcurso_alumno) REFERENCES curso(id_curso)
);

CREATE TABLE profesor
(   
    id_profesor INT NOT NULL PRIMARY KEY,
    idcurso_profesor INT NOT NULL,
    nombre_profesor VARCHAR(30) NOT NULL,
    departamento_profesor VARCHAR(30) NOT NULL,
    FOREIGN KEY (idcurso_profesor) REFERENCES curso(id_curso)
);

CREATE TABLE prueba
(   
    id_prueba INT NOT NULL PRIMARY KEY,
    puntaje_prueba INT NOT NULL,
    idalumno_prueba INT NOT NULL,
    idprofesor_prueba INT NOT NULL,
    FOREIGN KEY (idalumno_prueba) REFERENCES alumno(id_alumno),
    FOREIGN KEY (idprofesor_prueba) REFERENCES profesor(id_profesor)
);