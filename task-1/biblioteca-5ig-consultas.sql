-- Libros disponibles
SELECT * FROM Libro WHERE Cantidad_disponible > 0;

-- Libros prestados actualmente 
SELECT l.Titulo, p.Estudiante_Documento, p.Fecha_prestamo
FROM Prestamo p
JOIN Libro l ON p.Libro_idLibro = l.idLibro
WHERE p.Fecha_devolucion IS NULL;

-- Libros con sus autores
SELECT l.Titulo, a.Nombre, a.Apellido
FROM Libro l
JOIN Autor_has_Libro al ON l.idLibro = al.Libro_idLibro
JOIN Autor a ON a.idAutor = al.Autor_idAutor;

-- Total de libros en el estante
SELECT e.idEstante, e.Locacion, e.Material,
  SUM(l.Cantidad_disponible) AS total_ejemplares
FROM Estante e
LEFT JOIN Libro l ON e.idEstante = l.idEstante
GROUP BY e.idEstante, e.Locacion, e.Material;