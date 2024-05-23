**README.md**

# Aplicación con Maven, Spring Boot y MySQL

Este repositorio contiene una aplicación que utiliza tecnologías como Maven, Spring Boot y SQLite. A continuación, se proporciona una descripción de cada una de estas tecnologías y cómo se utilizan en conjunto en este proyecto.

## Tecnologías Utilizadas

### Maven

[Maven](https://maven.apache.org/) es una herramienta de gestión de proyectos de software que se utiliza principalmente para la construcción y gestión de dependencias. Con Maven, puedes definir fácilmente la estructura de tu proyecto, gestionar las dependencias y automatizar tareas de construcción. Utiliza un archivo de configuración XML llamado `pom.xml` para definir la configuración del proyecto, las dependencias y los plugins.

### Spring Boot

[Spring Boot](https://spring.io/projects/spring-boot) es un framework de Spring que facilita la creación de aplicaciones Java/JVM con una configuración mínima. Proporciona una forma rápida y sencilla de crear aplicaciones autónomas y listas para producir. Spring Boot incluye incorporadas muchas dependencias comunes y proporciona una configuración predeterminada sensata para tus aplicaciones.

### Doxygen
[Doxygen](https://www.doxygen.nl/).Este proyecto utiliza Doxygen para generar la documentación de código. Doxygen es una herramienta poderosa que facilita la creación de documentación a partir de comentarios en el código fuente. Esto asegura que la documentación esté siempre actualizada y vinculada directamente con el código. Para la configuración del Doxygen se utiliza un archivo llamado Doxyfile, este es el archivo de configuración utilizado por Doxygen para definir cómo se generará la documentación del proyecto. Este archivo contiene una serie de parámetros que controlan diferentes aspectos de la generación de la documentación, como el nombre del proyecto, las rutas de los archivos fuente, los formatos de salida y muchas otras opciones.


## Descripción del Proyecto

Este proyecto es una aplicación de ejemplo que utiliza Maven para gestionar las dependencias y construir el proyecto, Spring Boot para la creación de la aplicación y MySQL como base de datos. 

## Ejecución del Proyecto

Para ejecutar el proyecto, puedes seguir estos pasos:

1. Clona el repositorio a tu máquina local.
2. Asegúrate de tener Maven instalado.
3. Abre una terminal y navega hasta el directorio raíz del proyecto.
4. Ejecuta el comando mysql -u root -p root
5. Ejecuta el comando source sql/pokedokuDB.sql
6. ejecuta comando exit
7. Ejecuta el comando `mvn spring-boot:run`.
8. La aplicación se ejecutará y estará disponible en `http://localhost:8080`.

## Ejecución de Tests

Para ejecutar el proyecto, puedes seguir estos pasos:

1. Clona el repositorio a tu máquina local.
2. Asegúrate de tener Maven instalado.
3. Abre una terminal y navega hasta el directorio raíz del proyecto.
4. Ejecuta el comando mysql -u root -p root
5. Ejecuta el comando source sql/pokedokuDB.sql
6. ejecuta comando exit
7. Ejecuta el comando `mvn test`.
8. los resultados de los tests seran comprobables en jacoco



