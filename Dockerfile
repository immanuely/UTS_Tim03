# Menggunakan image dasar Nginx
FROM nginx:alpine

# Menyalin file dari folder FrontEnd ke direktori default Nginx
COPY FrontEnd/ /usr/share/nginx/html/

# Membuat konfigurasi Nginx kustom
RUN echo 'server { \
    listen 80; \
    location / { \
        root /usr/share/nginx/html; \
        index Homepages.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

# Nginx akan secara otomatis menjalankan website di port 80
EXPOSE 80
