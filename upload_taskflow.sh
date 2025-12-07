#!/bin/bash
# ======================================================
# SCRIPT DE PUBLICACIÓN DE TASKFLOW EN GITHUB
# Autor: Jino Johvani Olivera Rudas
# ======================================================

# Ruta del proyecto (ajusta si no estás en htdocs)
PROJECT_PATH="/c/xampp/htdocs/taskflow"

echo "📦 Subiendo proyecto TaskFlow desde: $PROJECT_PATH"
cd "$PROJECT_PATH" || { echo "❌ No se encontró la carpeta taskflow"; exit 1; }

# Comprobación inicial
if [ ! -d ".git" ]; then
  echo "🔹 No se detectó repositorio Git. Inicializando..."
  git init
  git add .
  git commit -m "Versión inicial del MVP de TaskFlow"
else
  echo "✅ Repositorio Git existente detectado."
fi

# Pedir o comprobar el remoto
REMOTE_URL=$(git remote get-url origin 2>/dev/null)

if [ -z "$REMOTE_URL" ]; then
  echo "🌐 No hay repositorio remoto configurado."
  read -p "👉 Introduce la URL del repositorio (por ejemplo https://github.com/TU_USUARIO/taskflow.git): " NEW_URL
  git remote add origin "$NEW_URL"
  git branch -M main
else
  echo "🌐 Repositorio remoto detectado: $REMOTE_URL"
fi

# Subir cambios
echo "⬆️ Subiendo proyecto al repositorio remoto..."
git add .
read -p "📝 Escribe un mensaje de commit: " MSG
git commit -m "$MSG"
git push -u origin main

echo "✅ Proyecto subido correctamente."
echo "🚀 Puedes verlo en tu repositorio GitHub."
