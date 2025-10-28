# Gunakan image resmi n8n
FROM n8nio/n8n:latest

# Tentukan direktori kerja
WORKDIR /home/node/.n8n

# Pastikan folder data n8n ada
RUN mkdir -p /home/node/.n8n

# Set environment variable supaya Railway tahu port yang digunakan
ENV PORT=5678
ENV N8N_PORT=5678
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV GENERIC_TIMEZONE=Asia/Jakarta
ENV N8N_HOST=0.0.0.0
ENV N8N_EDITOR_BASE_URL=https://my-n8n-railway-production-57db.up.railway.app/
ENV WEBHOOK_URL=https://my-n8n-railway-production-57db.up.railway.app/

# Jalankan n8n
CMD ["n8n", "start"]
