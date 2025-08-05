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
  - `biblioteca-5ig-ER.png`: Diagrama Entidad-Relación del modelo propuesto.

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
```

  
## Task 2: Script en Python con consumo de API pública
  Esta carpeta contiene la solución a la Tarea 2 del reto técnico para 5IG Solutions, cuyo objetivo es interactuar con una API REST pública usando Python.
   ### Archivos incluidos
   - `api_script.py`: Script Python para el consumo de la API gratuita.
   ### Características implementadas
   - Petición GET: Obtener todos los productos
     Envía una petición GET a la API y muestra una lista de todos los productos disponibles (se muestran el nombre y precio solamente).
   - Petición GET por ID: Obtener un producto por ID
     Permite obtener un producto específico pasando su id, y muestra sus detalles básicos (se muestran el nombre y precio solamente).
   - Petición POST: Crear un nuevo producto
     Envía una petición POST para agregar un nuevo producto.
     Muestra la respuesta con el ID, título y precio del producto creado.
   - Manejo de errores
     Todas las peticiones están encapsuladas en bloques try/except.
     Se captura y muestra cualquier error de red o respuesta inválida.
     
   ### Herramientas utilizadas
    - Python 
    - Librería requests para gestionar las peticiones HTTP.
    - API utilizada: [Escuela JS REST API](https://fakeapi.platzi.com/en)
    
   ### Cómo probarlo
   
  1.  Tener Python y requests instalado:
       ```
        pip install requests
       ```
       
  2. Ejecutar el archivo en consola:
     ```
     python api_script.py
     ```

## Task 3: Aplicación frontend mostrando datos de una API
  Esta carpeta tiene el proyecto de la solución al reto técnico Task 3 para 5IG Solutions. Se construyó una aplicación frontend moderna utilizando React + Vite, que consume datos desde una REST API pública para     mostrar un catálogo de productos.
  ### Archivos incluidos
  ├── src/
  │   ├── components/         
  │   ├── context/            
  │   ├── pages/              
  │   ├── styles/             
  │   └── App.jsx
  └── index.html

  ### Características implementadas
  - Visualiza una lista de productos provenientes de la API pública, misma utilizada en la task 2.
  - Visualiza una lista de categorías provenientes de la API.
  -  Paginación para navegar entre los productos de forma ordenada.
  -  Filtros dinámicos para buscar productos por Categoría y rango de precios.
  -  Botón para aplicar y resetear filtros.
  -  Mensaje por si la búsqueda no arroja resultados.

  ### Herramientas utilizadas
  - React + Vite
  - Material UI (MUI) para estilos y componentes
  - Axios para consumir la API
  - CSS Modules para estilos personalizados
  - Context API para manejo global del estado

  ### Cómo probarlo localmente
  1. Clona el repositorio:
      ```
     git clone https://github.com/tu-usuario/nombre-del-repo.git
  2. Instala las dependencias:
      ```
      npm install
  3. Ejecuta la aplicación:
      ```
      npm run dev
     

  Nota: Se debe tener Node.js y Vite instalados.
     
   ### Cómo probarlo en línea
   El proyecto fue desplegado con GitHub Pages y está disponible en:
  
## Task 4: Simulación de CI/CD con GitHub Actions





