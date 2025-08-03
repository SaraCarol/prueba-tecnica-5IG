# Prueba técnica – 5IG Solutions

Este repositorio contiene el desarrollo de la prueba técnica para el proceso de selección de jr software developer en 5IG Solutions.

👩‍💻 Autora: Sara Mendoza  
📅 Fecha de entrega: Agosto 2025  
📧 Contacto: mendoza.saracarolina@gmail.com

## Tareas incluidas

## Task 1: Diseño de base de datos para sistema de biblioteca
  Esta carpeta contiene la solución a la Tarea 1 del reto técnico para 5IG Solutions. Se diseñó y creó una base de datos relacional en MySQL que soporta un sistema de gestión bibliotecaria con escalabilidad futura.

  ### Archivos incluidos

    - `biblioteca-5ig-creacionTablas.sql`: Script SQL para la creación del esquema de base de datos.
    - `biblioteca-5ig-insercionDatos.sql`: Script SQL para insertar datos de prueba.
    - `biblioteca-5ig-consultas.sql`: Consultas para cumplir con los requerimientos funcionales.
    - `modelo-ER.png`: Diagrama Entidad-Relación del modelo propuesto.

  ### Características implementadas

    - Gestión de libros (físicos y digitales), autores, estantes, temas, préstamos y estudiantes.
    - Escalabilidad: se permite agregar categorías y gestionar libros digitales como entidad especializada, además de múltiples autores para múltiples libros.
    - Estantes con localización, tema, material y capacidad máxima.
    - Consultas para:
      - Listar libros disponibles y prestados.
      - Ver autores por libro.
      - Contabilizar ejemplares disponibles por estante.

  ### Motor utilizado

    - MySQL (compatible con Workbench)

  ### Cómo probarlo

    1. Ejecuta `biblioteca-5ig-creacionTablas.sql` en tu base de datos.
    2. Luego ejecuta `biblioteca-5ig-insercionDatos.sql` para poblarla.
    3. Finalmente, prueba las consultas con `biblioteca-5ig-consultas.sql`.
  ---

Si necesitas ejecutar los scripts paso a paso, asegúrate de tener una conexión activa en MySQL Workbench y haber seleccionado la base de datos previamente con:

```sql
USE biblioteca_5IG;





  
## Task 2: Script en Python con consumo de API pública
## Task 3: Aplicación frontend mostrando datos de una API
## Task 4: Simulación de CI/CD con GitHub Actions

