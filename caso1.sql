CREATE DATABASE caso1;

CREATE TABLE trabajador
(
    id_trabajador INT NOT NULL PRIMARY KEY,
    nombre_trabajador VARCHAR(30) NOT NULL,
    rut_trabajador VARCHAR(10) NOT NULL,
    dirreccion_trabajador VARCHAR(50) NOT NULL
);

CREATE TABLE departamento
(
    id_departamento INT NOT NULL PRIMARY KEY,
    idtrabajador_departamento INT NOT NULL,
    nombre_departamento VARCHAR(30) NOT NULL,
    FOREIGN KEY (idtrabajador_departamento) REFERENCES trabajador(id_trabajador) 
);

CREATE TABLE liquidacion
(
    id_liquidacion INT NOT NULL PRIMARY KEY,
    idtrabajador_liquidacion INT NOT NULL,
    valor_liquidacion DOUBLE PRECISION NOT NULL,
    fecha_liquidacion DATE NOT NULL,
    FOREIGN KEY (idtrabajador_liquidacion) REFERENCES trabajador(id_trabajador) 
);
