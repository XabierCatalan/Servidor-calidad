**README.md**

# Aplicación con Maven, Spring Boot y SQLite

Este repositorio contiene una aplicación que utiliza tecnologías como Maven, Spring Boot y SQLite. A continuación, se proporciona una descripción de cada una de estas tecnologías y cómo se utilizan en conjunto en este proyecto.

## Tecnologías Utilizadas

### Maven

[Maven](https://maven.apache.org/) es una herramienta de gestión de proyectos de software que se utiliza principalmente para la construcción y gestión de dependencias. Con Maven, puedes definir fácilmente la estructura de tu proyecto, gestionar las dependencias y automatizar tareas de construcción. Utiliza un archivo de configuración XML llamado `pom.xml` para definir la configuración del proyecto, las dependencias y los plugins.

### Spring Boot

[Spring Boot](https://spring.io/projects/spring-boot) es un framework de Spring que facilita la creación de aplicaciones Java/JVM con una configuración mínima. Proporciona una forma rápida y sencilla de crear aplicaciones autónomas y listas para producir. Spring Boot incluye incorporadas muchas dependencias comunes y proporciona una configuración predeterminada sensata para tus aplicaciones.

### SQLite

[SQLite](https://www.sqlite.org/) es una biblioteca de software que proporciona una base de datos relacional ligera. A diferencia de otros sistemas de gestión de bases de datos como MySQL o PostgreSQL, SQLite no requiere un servidor separado y se almacena en un solo archivo de disco. Es ideal para aplicaciones que requieren una base de datos local sin la complejidad de un servidor de base de datos.

## Descripción del Proyecto

Este proyecto es una aplicación de ejemplo que utiliza Maven para gestionar las dependencias y construir el proyecto, Spring Boot para la creación de la aplicación y SQLite como base de datos. 

## Ejecución del Proyecto

Para ejecutar el proyecto, puedes seguir estos pasos:

1. Clona el repositorio a tu máquina local.
2. Asegúrate de tener Maven instalado.
3. Abre una terminal y navega hasta el directorio raíz del proyecto.
4. Ejecuta el comando `mvn spring-boot:run`.
5. La aplicación se ejecutará y estará disponible en `http://localhost:8080`.

