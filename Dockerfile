FROM nginx:alpine
LABEL org.opencontainers.image.title="reserva_medica"
LABEL org.opencontainers.image.description="Sitio estático académico servido con Nginx"
COPY src/ /usr/share/nginx/html/
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1
