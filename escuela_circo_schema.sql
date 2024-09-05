CREATE TABLE Alumnos (
    id_alumno INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    correo_electronico VARCHAR(50),
    metodo_pago VARCHAR(30)
);

CREATE TABLE Datos_Alumnos (
    id_alumno INT PRIMARY KEY,
    alergias TEXT,
    condiciones_medicas TEXT,
    nivel_habilidad VARCHAR(30),
    FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno)
);

CREATE TABLE Profesores (
    id_profesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    especialidad VARCHAR(100),
    contacto VARCHAR(50),
    modalidad_contrato VARCHAR(50)
);

CREATE TABLE Clases (
    id_clase INT AUTO_INCREMENT PRIMARY KEY,
    nombre_clase VARCHAR(100) NOT NULL,
    disciplina VARCHAR(100) NOT NULL,
    duracion TIME NOT NULL,
    nivel_habilidad VARCHAR(30),
    limite_alumnos INT DEFAULT 20
);

CREATE TABLE Profesores_Clases (
    id_profesor INT,
    id_clase INT,
    PRIMARY KEY (id_profesor, id_clase),
    FOREIGN KEY (id_profesor) REFERENCES Profesores(id_profesor),
    FOREIGN KEY (id_clase) REFERENCES Clases(id_clase)
);

CREATE TABLE Horarios (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    id_clase INT,
    dia_semana VARCHAR(15) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (id_clase) REFERENCES Clases(id_clase)
);

CREATE TABLE Horarios (
    id_horario INT AUTO_INCREMENT PRIMARY KEY,
    id_clase INT,
    dia_semana VARCHAR(15) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (id_clase) REFERENCES Clases(id_clase)
);

CREATE TABLE Pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_alumno INT,
    monto DECIMAL(10,2) NOT NULL,
    fecha_pago DATE NOT NULL,
    metodo_pago VARCHAR(30),
    FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno)
);

CREATE TABLE Inscripciones (
    id_alumno INT,
    id_clase INT,
    PRIMARY KEY (id_alumno, id_clase),
    FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno),
    FOREIGN KEY (id_clase) REFERENCES Clases(id_clase)
);

CREATE TABLE Asistencia (
    id_asistencia INT AUTO_INCREMENT PRIMARY KEY,
    id_alumno INT,
    id_clase INT,
    fecha DATE NOT NULL,
    presente BOOLEAN,
    FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno),
    FOREIGN KEY (id_clase) REFERENCES Clases(id_clase)
);
