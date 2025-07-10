# Fase de construcción (build)
FROM node:18 AS build  
# Imagen con Node.js 18
WORKDIR /app
COPY package*.json ./  
# Copiar package.json y package-lock.json
ARG VITE_REACT_APP_API_URL
ENV VITE_REACT_APP_API_URL=$VITE_REACT_APP_API_URL
RUN npm install  
# Instalar dependencias
COPY . .  
# Copiar el resto del código

RUN npm run build  
# Compilar la app React

# Fase de ejecución con Nginx
FROM nginx:alpine  
# Imagen ligera con Nginx
COPY --from=build /app/dist /usr/share/nginx/html  
# Copiar los archivos compilados
COPY nginx.conf /etc/nginx/conf.d/default.conf  
# Configuración de Nginx
EXPOSE 3000  
# Puerto expuesto (Nginx escuchará aquí)
CMD ["nginx", "-g", "daemon off;"]  
# Iniciar Nginx en primer plano