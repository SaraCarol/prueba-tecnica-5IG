-- Libros disponibles y prestados
SELECT l.Titulo, l.ISBN, e.idEjemplar, 
CASE 
	WHEN  p.idPrestamo IS NULL THEN 'Disponible'
	ELSE 'Prestado'
END AS Estado
    FROM Ejemplar e
JOIN Libro l ON e.Libro_idLibro = l.idLibro
LEFT JOIN Prestamo p 
  ON p.Ejemplar_idEjemplar = e.idEjemplar AND p.Fecha_devolucion IS NULL;
  
  -- Total libros prestados
  SELECT COUNT(*) AS LibrosPrestados
  FROM Prestamo
  WHERE Fecha_devolucion IS NULL;

-- Libros con sus autores
SELECT l.Titulo, a.Nombre, a.Apellido
FROM Libro l
JOIN Autor_Libro al ON l.idLibro = al.Libro_idLibro
JOIN Autor a ON a.idAutor = al.Autor_idAutor;

-- Seguimiento a los libros prestados
SELECT 
  est.Nombre AS NombreEstudiante,
  est.Apellido AS ApellidoEstudiante,
  l.Titulo AS Libro,
  e.idEjemplar AS EjemplarID,
  p.Fecha_prestamo,
  p.Fecha_estimada_devolucion,
  p.Fecha_devolucion
FROM Prestamo p
JOIN Estudiante est ON p.Estudiante_idEstudiante = est.idEstudiante
JOIN Ejemplar e ON p.Ejemplar_idEjemplar = e.idEjemplar
JOIN Libro l ON e.Libro_idLibro = l.idLibro;

-- Total de libros en el estante
SELECT et.idEstante, et.Locacion, et.Material,
  COUNT(e.idEjemplar) AS total_ejemplares
FROM Estante et
JOIN Libro l ON l.idEstante = et.idEstante
JOIN Ejemplar e ON e.Libro_idLibro = l.idLibro
GROUP BY et.idEstante, et.Locacion, et.Material;