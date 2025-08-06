-- Insertar autores
INSERT INTO Autor (Nombre, Apellido, Fecha_nacimiento)
VALUES ('Gabriel', 'Márquez', '1927-03-06'),
		('Oscar', 'Wilde', '1854-10-16'),
        ('Rebeca', 'Yarros', '1981-04-13');
        
-- Insertar estudiantes
INSERT INTO Estudiante (Nombre, Apellido, Fecha_nacimiento, Documento)
VALUES ('Sara', 'Mendoza', '1999-04-05', '1005'),
		('Juan', 'Pérez', '2000-08-15', '1002'),
        ('Sofía', 'López', '1995-10-23', '1003');

-- Insertar temas
INSERT INTO Tema (Nombre) VALUES ('Ciencia'), ('Literatura juvenil'), ('Ficción');

-- Insertar estantes
INSERT INTO Estante (Locacion, Material, Capacidad, idTema)
VALUES ('A', 'Madera', 100, 1), 
		('B', 'Metal', 100, 2),
        ('C', 'Metal', 100, 3);

-- Insertar libros
INSERT INTO Libro (Titulo, Fecha_publicacion, Editorial, ISBN, idEstante)
VALUES ('Cien años de soledad', '1967-05-01', 'Sudamericana', '111111', 3),
		('El retrato de Dorian Gray', '1890-07-01', 'Ward, Lock & Co', '111112', 3),
        ('Alas de Hierro', '2024-02-21', 'Planeta', '111113', 2);

-- Insertar ejemplares 
INSERT INTO Ejemplar (Libro_idLibro) 
VALUES 
  (1), (1),  (2), (2),  (3), (3), (3);
        
-- Insertar relación autor-libro
INSERT INTO Autor_Libro (Autor_idAutor, Libro_idLibro) 
VALUES (1, 1),
		(2, 2), (3, 3);
        
-- Insertar libro digital
INSERT INTO Libro_Digital (Libro_idLibro, url, Formato)
VALUES (3, 'https://ejemplo.com', 'PDF');

-- Insertar categorías
INSERT INTO Categoria (Nombre)
VALUES ('Literatura juvenil'), ('Ficción'), ('Romance');

INSERT INTO Libro_Categoria (Libro_idLibro, Categoria_idCategoria)
VALUES 
  (1, 2), (2, 2), (3, 1);

-- Insertar préstamo
INSERT INTO Prestamo (Estudiante_idEstudiante, Ejemplar_idEjemplar, Fecha_prestamo, Fecha_estimada_devolucion)
VALUES (1, 1, CURDATE(), DATE_ADD(CURDATE(), INTERVAL 7 DAY));