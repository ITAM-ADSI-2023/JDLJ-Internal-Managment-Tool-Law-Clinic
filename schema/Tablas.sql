CREATE TABLE usuario (
   id SERIAL PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   email VARCHAR(255) UNIQUE NOT NULL,
   password VARCHAR(255) NOT NULL,
   is_admin BOOLEAN DEFAULT FALSE
);

CREATE TABLE caso (
   id SERIAL PRIMARY KEY,
   nombre_caso VARCHAR(255) NOT NULL
);


CREATE TABLE role (
   id SERIAL PRIMARY KEY,
   role_name VARCHAR(255) NOT NULL
);

CREATE TABLE miembro (
   id SERIAL PRIMARY KEY,
   caso_id INTEGER REFERENCES caso(id) ON DELETE CASCADE,
   role_id INTEGER REFERENCES role(id) ON DELETE CASCADE,
   usuario_id INTEGER REFERENCES usuario(id) ON DELETE CASCADE
);

CREATE TABLE proyecto (
   id SERIAL PRIMARY KEY,
   nombre_proyecto VARCHAR(255) NOT NULL,
   descripcion_proyecto TEXT,
   start_date DATE NOT NULL,
   end_date DATE
);
CREATE TABLE admin (
   id SERIAL PRIMARY KEY,
   usuario_id INTEGER REFERENCES usuario(id) ON DELETE CASCADE,
   proyecto_id INTEGER REFERENCES proyecto(id) ON DELETE CASCADE
);

CREATE TABLE actividad (
   id SERIAL PRIMARY KEY,
   nombre_actividad VARCHAR(255) NOT NULL,
   descripcion_actividad TEXT,
   start_time TIMESTAMP NOT NULL,
   end_time TIMESTAMP,
   prioridad INTEGER NOT NULL,
   proyecto_id INTEGER REFERENCES proyecto(id) ON DELETE CASCADE
   link VARCHAR(255)
);

CREATE TABLE asignar (
   id SERIAL PRIMARY KEY,
   actividad_id INTEGER REFERENCES actividad(id) ON DELETE CASCADE,
   role_id INTEGER REFERENCES role(id) ON DELETE CASCADE,
   usuario_id INTEGER REFERENCES usuario(id) ON DELETE CASCADE
);