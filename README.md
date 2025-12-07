# 🧩 TaskFlow – Sistema de Gestión de Tareas

## 📘 Descripción
**TaskFlow** es una aplicación web diseñada para facilitar la gestión y seguimiento de tareas en equipo mediante un tablero tipo **Kanban**.  
Permite crear proyectos, asignar tareas, establecer fechas límite y visualizar el progreso de forma colaborativa.  
Su diseño responsive y su arquitectura monolítica en PHP y JavaScript nativo la hacen ligera, didáctica y perfecta para entornos académicos y profesionales.

---

## 🎯 Objetivo del Proyecto
Desarrollar un **mínimo producto viable (MVP)** funcional con estructura modular y escalable, preparado para integrar autenticación, roles y seguridad en futuras fases.

---

## ⚙️ Tecnologías Utilizadas
| Componente | Tecnología |
|-------------|-------------|
| **Frontend** | HTML5, CSS3, JavaScript (ES6), Bootstrap 5 |
| **Backend** | PHP 8.2 (modo estricto) |
| **Base de Datos** | MySQL / MariaDB |
| **Servidor Web** | Apache 2.4 (XAMPP o Docker) |
| **Control de Versiones** | Git + GitHub |
| **Entorno de Desarrollo** | Visual Studio Code |
| **Documentación** | Markdown + Diagramas (Draw.io) |

---

## 🧱 Arquitectura
TaskFlow utiliza una **arquitectura monolítica MVC**, donde las capas de presentación, lógica y datos se integran en un único entorno PHP.

```
Cliente (HTML, CSS, JS)
        │
        ▼
Servidor PHP (Controladores + Modelos)
        │
        ▼
Base de datos MySQL
```

---

## 📂 Estructura del Proyecto
```
/taskflow
├── index.php
├── /app
│   ├── config.php
│   ├── /controllers
│   ├── /models
│   └── /views
├── /public
│   ├── css/
│   ├── js/
│   └── img/
├── /database
│   └── taskflow.sql
├── /docs
│   └── PLAN_DESARROLLO_TASKFLOW.md
└── README.md
```

---

## 🚀 Cómo Ejecutar el Proyecto

### 🔹 Opción 1: Usando XAMPP
1. Instala [XAMPP](https://www.apachefriends.org/es/index.html)
2. Copia la carpeta `taskflow` dentro de:
   ```
   C:\xampp\htdocs\
   ```
3. Inicia **Apache** y **MySQL** desde el panel de control de XAMPP.
4. Crea la base de datos:
   ```sql
   CREATE DATABASE taskflow;
   ```
5. Importa el archivo `database/taskflow.sql`
6. Abre en tu navegador:  
   👉 [http://localhost/taskflow](http://localhost/taskflow)

---

### 🔹 Opción 2: Usando Docker (opcional)
1. Asegúrate de tener **Docker Desktop** instalado.
2. Crea un archivo `docker-compose.yml`:
   ```yaml
   version: '3.9'
   services:
     web:
       image: php:8.2-apache
       volumes:
         - .:/var/www/html
       ports:
         - "8080:80"
       depends_on:
         - db
     db:
       image: mysql:8.0
       environment:
         MYSQL_ROOT_PASSWORD: root
         MYSQL_DATABASE: taskflow
   ```
3. Ejecuta:
   ```bash
   docker-compose up -d
   ```
4. Abre en tu navegador:  
   👉 [http://localhost:8080](http://localhost:8080)

---

## 🔐 Fase 2 (Próxima)
- Implementación del módulo de autenticación (login y roles).
- Hash seguro de contraseñas (`bcrypt`).
- Control de sesiones y middleware.
- Posible migración a **Laravel** o API modular.

---

## ✍️ Autores y Créditos
- **Desarrollador:** Jino Johvani Olivera Rudas  
- **Proyecto:** Intermodular FP – Desarrollo de Aplicaciones Web  
- **Centro:** IES Peñacastillo (Cantabria)  
- **Año:** 2025  

---

## 📄 Licencia
Este proyecto se distribuye bajo licencia **MIT**, permitiendo su uso y modificación con fines educativos.
