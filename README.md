# ERP_Escuela_del_reves
ERP para Escuela del Reves.

Sistema de Gestión de Alumnos - Escuela de Circo
Este repositorio contiene la estructura y diseño de una base de datos para gestionar los alumnos, profesores, clases, horarios, pagos y asistencia de una escuela de circo. El sistema está diseñado para optimizar la organización y administración de los datos a través de tablas relacionales que se comunican mediante claves primarias y foráneas.

Estructura del Proyecto
Tablas Principales:
Alumnos

Contiene los datos personales y de contacto de cada alumno.
Campos: id_alumno (PK), nombre, apellido, fecha_nacimiento, direccion, telefono, correo_electronico, metodo_pago.
Datos_Alumnos

Guarda información adicional como alergias, condiciones médicas y nivel de habilidad de los alumnos.
Campos: id_alumno (PK, FK), alergias, condiciones_medicas, nivel_habilidad.
Profesores

Almacena la información de los profesores, incluyendo su especialidad y datos de contacto.
Campos: id_profesor (PK), nombre, apellido, especialidad, contacto, modalidad_contrato.
Clases

Registra la información de cada clase que se ofrece en la escuela, como disciplina, nivel y límite de alumnos.
Campos: id_clase (PK), nombre_clase, disciplina, duracion, nivel_habilidad, limite_alumnos.
Horarios

Define los horarios de las clases.
Campos: id_horario (PK), id_clase (FK), dia_semana, hora_inicio, hora_fin.
Pagos

Registra los pagos realizados por los alumnos, junto con la información correspondiente.
Campos: id_pago (PK), id_alumno (FK), monto, fecha_pago, metodo_pago.
Inscripciones

Relaciona a los alumnos con las clases a las que están inscritos.
Campos: id_alumno (PK, FK), id_clase (PK, FK).
Asistencia

Lleva un registro de la asistencia de los alumnos a las clases.
Campos: id_asistencia (PK), id_alumno (FK), id_clase (FK), fecha, presente.
Profesores_Clases

Relaciona a los profesores con las clases que enseñan.
Campos: id_profesor (PK, FK), id_clase (PK, FK).
Diagrama Relacional
El diagrama relacional del sistema muestra cómo las tablas están conectadas entre sí a través de claves primarias y foráneas. Puedes ver el diagrama haciendo clic aquí.

Funcionalidades del Sistema
Administración de Alumnos: Se pueden registrar y gestionar los datos personales de los alumnos, sus condiciones médicas y niveles de habilidad.
Administración de Profesores: Gestión de los profesores y la relación con las clases que imparten.
Gestión de Clases y Horarios: Organización de las clases con información sobre la disciplina, nivel de habilidad requerido y el límite de alumnos.
Registro de Pagos: Administración de los pagos realizados por los alumnos, con detalles de cada transacción.
Seguimiento de Asistencia: Control de la asistencia de los alumnos a las clases en las que están inscritos.
Asignación de Horarios: Establecimiento de horarios fijos para las clases, organizados por día y hora.


