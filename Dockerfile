# 1. Imagen base ligera
FROM python:3.12-slim

# 2. Directorio de trabajo
WORKDIR /app

# 3. Instalación de dependencias del sistema (awscli)
# Limpiamos el caché de apt al final para reducir el tamaño de la imagen
RUN apt-get update && apt-get install -y \
    awscli \
    && rm -rf /var/lib/apt/lists/*

# 4. Copiar e instalar dependencias de Python primero 
# (Esto aprovecha el sistema de capas de Docker para no reinstalar todo si solo cambias tu código)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar el resto del código de la aplicación
COPY . .

# 6. Variables de entorno recomendadas
ENV PYTHONUNBUFFERED=1

# 7. Comando para arrancar
CMD ["python", "app.py"]