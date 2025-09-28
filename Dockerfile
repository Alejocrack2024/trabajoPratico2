# Imagen madre
FROM python:3.11-slim

# Configuración para poder ver logs de manera correcta
ENV PYTHONUNBUFFERED=1

# Directorio de trabajo
WORKDIR /crud

# Copiar archivos de dependencias
COPY requirements.txt .

# Instalar las dependencias via pip
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos código fuente del proyecto dentro de la imagen
# Corregido: quitar la barra inicial para que Docker encuentre la carpeta correctamente
COPY crud_1 .
