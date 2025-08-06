-- Base de datos
CREATE DATABASE IF NOT EXISTS biblioteca_5IG;
USE biblioteca_5IG;

-- Tabla: Autor
CREATE TABLE Autor (
    idAutor INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(45) NOT NULL,
    Apellido VARCHAR(45) NOT NULL,
    Fecha_nacimiento DATE NOT NULL
);

-- Tabla: Estudiante
CREATE TABLE Estudiante (
    idEstudiante INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(45) NOT NULL,
    Apellido VARCHAR(45) NOT NULL,
    Fecha_nacimiento DATE NOT NULL,
    Documento VARCHAR(20) UNIQUE NOT NULL
);

-- Tabla: Tema
CREATE TABLE Tema (
    idTema INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(45) NOT NULL
);

-- Tabla: Estante
CREATE TABLE Estante (
    idEstante INT AUTO_INCREMENT PRIMARY KEY,
    Locacion VARCHAR(45) NOT NULL,
    Material VARCHAR(45) NOT NULL,
    Capacidad INT NOT NULL,
    idTema INT NOT NULL,
    FOREIGN KEY (idTema) REFERENCES Tema(idTema)
);

-- Tabla: Libro
CREATE TABLE Libro (
    idLibro INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR(100) NOT NULL,
    Fecha_publicacion DATE NOT NULL,
    Editorial VARCHAR(100) NOT NULL,
    ISBN VARCHAR(20) UNIQUE NOT NULL,
    idEstante INT NOT NULL,
    FOREIGN KEY (idEstante) REFERENCES Estante(idEstante)
);

-- Tabla: Ejemplar 
CREATE TABLE Ejemplar (
    idEjemplar INT AUTO_INCREMENT PRIMARY KEY,
    Libro_idLibro INT NOT NULL,
    FOREIGN KEY (Libro_idLibro) REFERENCES Libro(idLibro)
);

-- Tabla: Categoria
CREATE TABLE Categoria (
    idCategoria INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(45) NOT NULL
);

-- Tabla intermedia: Autor Libro
CREATE TABLE Autor_Libro (
    Autor_idAutor INT,
    Libro_idLibro INT,
    PRIMARY KEY (Autor_idAutor, Libro_idLibro),
    FOREIGN KEY (Autor_idAutor) REFERENCES Autor(idAutor),
    FOREIGN KEY (Libro_idLibro) REFERENCES Libro(idLibro)
);

-- Tabla: Prestamo
CREATE TABLE Prestamo (
    idPrestamo INT AUTO_INCREMENT PRIMARY KEY,
    Estudiante_idEstudiante INT NOT NULL,
    Ejemplar_idEjemplar INT NOT NULL,
    Fecha_prestamo DATE NOT NULL,
    Fecha_estimada_devolucion DATE NOT NULL,
    Fecha_devolucion DATE,
    FOREIGN KEY (Estudiante_idEstudiante) REFERENCES Estudiante(idEstudiante),
    FOREIGN KEY (Ejemplar_idEjemplar) REFERENCES Ejemplar(idEjemplar)
);

-- Tabla intermedia: Libro Categoria
CREATE TABLE Libro_Categoria (
    Libro_idLibro INT NOT NULL,
    Categoria_idCategoria INT NOT NULL,
    PRIMARY KEY (Libro_idLibro, Categoria_idCategoria),
    FOREIGN KEY (Libro_idLibro) REFERENCES Libro(idLibro),
    FOREIGN KEY (Categoria_idCategoria) REFERENCES Categoria(idCategoria)
);

-- Tabla: Libro_Digital 
CREATE TABLE Libro_Digital (
    Libro_idLibro INT PRIMARY KEY,
    url VARCHAR(100) NOT NULL,
    Formato VARCHAR(45) NOT NULL,
    FOREIGN KEY (Libro_idLibro) REFERENCES Libro(idLibro)
);
