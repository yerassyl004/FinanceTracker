# Build stage
FROM dart:3.0.0 AS build

WORKDIR /app

# Copy source code
COPY . .

# Enable web support and get dependencies
RUN apt-get update && apt-get upgrade -y \
    && flutter channel stable \
    && flutter upgrade \
    && flutter config --enable-web \
    && flutter pub get \
    && flutter build web

# Serve using Nginx
FROM nginx:stable-alpine

COPY --from=build /app/build/web /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
