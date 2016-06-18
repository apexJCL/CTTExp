CREATE TABLE Clientes (
  id SERIAL PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  a_paterno VARCHAR(30) NOT NULL,
  a_materno VARCHAR(30) NOT NULL,
  rfc VARCHAR(12),
  fisica BOOLEAN,
  domicilio VARCHAR(150),
  entidad VARCHAR(50),
  cp CHAR(5),
  saldo MONEY,
  seguro TEXT,
  observ TEXT,
  consid_cte TEXT,
  equipo TEXT,
  web TEXT,
  activo TEXT,
  fecha_ing DATETIME
);

CREATE TABLE Telefonos (
  id SERIAL PRIMARY KEY,
  id_cliente INT NOT NULL,
  telefono VARCHAR(15),
  CONSTRAINT telefono_cliente FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

CREATE TABLE Correos (
  id SERIAL PRIMARY KEY,
  id_cliente INT NOT NULL,
  email VARCHAR(40) NOT NULL,
  CONSTRAINT correo_clienteFK FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

CREATE TABLE Abonos(
  id SERIAL PRIMARY KEY,
  id_cliente
);