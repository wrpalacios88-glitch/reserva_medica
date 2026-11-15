# Proyecto DevOps: Reserva de horas médicas

Aplicación web estática de demostración para el ficticio **Centro Médico C.A.S**, servida por Nginx en Docker. No utiliza API, base de datos ni almacena solicitudes.

## Requisitos
- Git y cuenta GitHub.
- Docker Desktop iniciado (incluye Docker Compose).
- Navegador web.

## Estructura
```text
.
├── src/
│   ├── index.html
│   └── styles.css
├── .github/workflows/devops-automation.yml
├── .dockerignore
├── .env.example
├── .gitignore
├── Dockerfile
├── docker-compose.yml
└── README.md
```

## Instalación y ejecución
1. Clonar el repositorio:
   `git clone URL_DEL_REPOSITORIO`
2. Entrar a la carpeta:
   `cd reserva_medica`
3. Crear el archivo local de variables:
   - Windows PowerShell: `Copy-Item .env.example .env`
   - Linux/macOS: `cp .env.example .env`
4. Construir e iniciar:
   `docker compose up -d --build`
5. Abrir en el navegador: http://localhost:8080

## Verificación y monitoreo
```bash
docker compose ps
docker ps
docker logs reserva_medica
docker stats --no-stream reserva_medica
curl -I http://localhost:8080
```
Detener el servicio:
`docker compose down`

## Seguridad y privacidad
- No se incluyen credenciales, tokens ni datos reales.
- `.env.example` contiene únicamente un valor de ejemplo no sensible.
- `.env` está excluido mediante `.gitignore`.
- La aplicación es estática y no procesa ni persiste datos.
- Utilizar únicamente datos ficticios durante las pruebas.
- Revisar los cambios antes de publicar y no subir capturas que expongan información personal.

## Automatización
El flujo de GitHub Actions valida la presencia de los archivos requeridos y comprueba que el HTML y el Dockerfile contengan elementos básicos. No publica la aplicación en servidores externos.
