# 🧩 PLAN DE DESARROLLO – TASKFLOW (FASE 1: MVP)

## 🎯 Objetivo General
Desarrollar el **mínimo producto viable (MVP)** de la aplicación web **TaskFlow**, que permita gestionar proyectos, crear tareas, asignarlas a usuarios y visualizarlas en un tablero tipo Kanban.  
El sistema será modular, escalable y preparado para incorporar seguridad, autenticación y notificaciones en fases posteriores.

---

## 🧱 Requisitos Físicos y Lógicos

### 🔹 Requisitos Físicos
| Elemento | Especificación recomendada | Uso |
|-----------|----------------------------|-----|
| Servidor local / VPS | Ubuntu 22.04 LTS o Windows 10+ | Ejecución de Apache, PHP, MySQL |
| Procesador | Dual Core 2.0 GHz o superior | Ejecución fluida del backend |
| Memoria RAM | 4 GB mínimo (8 GB recomendado) | Desarrollo + Docker |
| Almacenamiento | 20 GB mínimo | Archivos del proyecto + DB |
| Red / Conectividad | Internet estable | Acceso a dependencias y entorno remoto |
| Dispositivos cliente | PC, tablet o móvil con navegador moderno | Acceso a la aplicación web |

### 🔹 Requisitos Lógicos
| Componente | Descripción / Versión recomendada |
|-------------|----------------------------------|
| Sistema operativo | Ubuntu 22.04 / Windows 10+ |
| Servidor web | Apache 2.4 o Nginx |
| Lenguaje Backend | PHP 8.2 (modo estricto) |
| Lenguaje Frontend | JavaScript (ES6+) |
| Base de datos | MySQL 8 / MariaDB 10 |
| IDE | VS Code + extensiones PHP, Prettier, ESLint |
| Control de versiones | Git + GitHub |
| Virtualización | Docker + Docker Compose |
| Diseño responsive | HTML5, CSS3, Bootstrap 5 |
| Documentación | Markdown + README.md + Wiki técnica |

---

## 🧭 Arquitectura del Sistema

TaskFlow se implementará inicialmente bajo una **arquitectura monolítica**, donde la capa de presentación (HTML, CSS, JS) y la lógica de negocio (PHP) comparten el mismo entorno de ejecución en el servidor Apache.

Esto simplifica el despliegue del MVP y permite un control centralizado del código. En fases posteriores, el sistema podrá migrarse hacia una arquitectura modular o de microservicios si se requiere mayor escalabilidad.

### Evolución prevista
- **Fase 1:** PHP + MySQL + JavaScript nativo.  
- **Fase 2:** Autenticación segura mediante sesiones o JWT.  
- **Fase 3:** Migración opcional a framework (Laravel o Node.js) con separación de frontend/backend.

---

## 🚀 Fases de Desarrollo de Software

| Fase | Descripción | Entregables |
|------|--------------|-------------|
| 1. Planificación | Definir requerimientos, roles y alcance del MVP. | Documento de requisitos + cronograma |
| 2. Análisis | Identificar actores, casos de uso, modelo de datos y relaciones. | Diagramas de caso de uso y ER |
| 3. Diseño | Diseñar arquitectura, interfaces y estructura de carpetas. | Prototipo UI + estructura MVC |
| 4. Implementación | Codificación del MVP usando PHP + JS modular. | Proyecto funcional inicial |
| 5. Pruebas | Pruebas unitarias y funcionales. | Informe de pruebas |
| 6. Despliegue | Publicación local o remota (XAMPP/Docker). | Proyecto desplegado |
| 7. Documentación | Manual técnico y README. | Documentación final |

---

## 🧮 Fase 1 – Alcance del MVP

### ✅ Incluye
- Gestión de usuarios (registro básico sin login).
- Creación y gestión de proyectos.
- Gestión de tareas (CRUD completo).
- Tablero Kanban (JS nativo).
- Persistencia MySQL.
- Interfaz responsive.

### 🚫 Excluye (para Fase 2)
- Sistema de login y roles.
- Autenticación JWT / sesiones.
- Notificaciones por correo.
- Integración de APIs externas.

---

## 🗂️ Estructura del Proyecto

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
└── docker-compose.yml
```

---

## 🔐 Módulo de Autenticación (Fase 2)

El sistema de autenticación se incorporará en la Fase 2 mediante sesiones PHP o tokens JWT.  
Si el proyecto se migra a **Laravel**, se utilizará su módulo **Auth** (controladores, middlewares y hashing seguro).  
En todos los casos se aplicará el estándar **bcrypt** para contraseñas y el uso de **CSRF tokens**.

---

## 🧠 Buenas prácticas (según MDN)

- `"use strict";` en todo script JS.  
- Validación de entradas en cliente y servidor.  
- Separación MVC.  
- Uso de `fetch()` para AJAX.  
- Código comentado con PHPDoc / JSDoc.  
- Formato y linting automático con Prettier + ESLint.  

---

## 📘 Publicación del Proyecto y Documentación en GitHub

### 🔹 1. Crear el repositorio local
```bash
cd /ruta/del/proyecto
git init
git add .
git commit -m "Versión inicial del MVP de TaskFlow"
```

### 🔹 2. Crear el repositorio en GitHub
1. Entra a [https://github.com](https://github.com)
2. Clic en **New Repository**
3. Nombre: `taskflow`
4. Visibilidad: Pública o privada (a elección)
5. Sin README (ya lo tienes)
6. Crear repositorio

### 🔹 3. Conectar el repositorio local con GitHub
```bash
git remote add origin https://github.com/TU_USUARIO/taskflow.git
git branch -M main
git push -u origin main
```

### 🔹 4. Añadir documentación
Guarda este archivo como `/docs/PLAN_DESARROLLO_TASKFLOW.md`  
y añade también un `README.md` en la raíz con un resumen del proyecto.

```bash
git add docs/PLAN_DESARROLLO_TASKFLOW.md
git commit -m "Agregar plan de desarrollo"
git push
```

### 🔹 5. Ver el resultado
Ve a tu repositorio y GitHub mostrará el README automáticamente.  
Puedes navegar a `/docs/PLAN_DESARROLLO_TASKFLOW.md` para ver el plan completo.

---

## ✅ Resultado Esperado
- Proyecto funcional monolítico (PHP + JS + MySQL).  
- Documentación completa en Markdown en GitHub.  
- Base sólida para Fase 2 (autenticación y seguridad).
