# Gunakan image resmi n8n
FROM n8nio/n8n:latest

# Set direktori kerja
WORKDIR /data

# Expose port agar Railway tahu n8n jalan di sini
ENV N8N_PORT=5678
ENV N8N_HOST=0.0.0.0
EXPOSE 5678

# Jalankan n8n
CMD ["n8n"]
