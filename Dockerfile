# Gunakan image resmi n8n
FROM n8nio/n8n:latest

# Set direktori kerja (di image n8n biasanya /home/node/.n8n)
WORKDIR /home/node/.n8n

# Pastikan perintah n8n dikenali
ENV PATH="/usr/local/bin:${PATH}"

# Set environment penting
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# Expose port ke Railway
EXPOSE 5678

# Jalankan n8n
CMD ["n8n", "start"]
