# 1. Define la imagen base oficial de Linux Ubuntu desde Docker Hub
# Usamos la etiqueta de versión estable más reciente (24.04)
FROM alpine:3.20

# 2. Copia el script 'app.sh' desde tu computadora hacia la raíz del contenedor
# El formato es: COPY <origen_en_tu_pc> <destino_en_el_contenedor>
COPY app.sh /app.sh

# 3. Ejecuta un comando en la fase de construcción para dar permisos de ejecución
# 'chmod +x' asegura que el sistema operativo Linux pueda correr el script como un programa
RUN chmod +x /app.sh

# 4. Establece el comando definitivo que se ejecutará al encender el contenedor
# Llama al intérprete de Bash para que procese de forma automática nuestro script
CMD ["/bin/sh", "/app.sh"]