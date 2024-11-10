# Gunakan image nginx sebagai base image
FROM nginx:alpine

# Hapus konten default nginx dan buat direktori yang diperlukan
RUN rm -rf /usr/share/nginx/html/* && \
    mkdir -p /usr/share/nginx/html/{CSS,Images,js}

# Salin file HTML utama
COPY ./FrontEnd/Homepages.html /usr/share/nginx/html/index.html
COPY ./FrontEnd/ /usr/share/nginx/html/

# Salin file CSS
COPY ./FrontEnd/CSS/ /usr/share/nginx/html/CSS/

# Salin file gambar
COPY ./Images/ /usr/share/nginx/html/Images/

# Salin file JavaScript dari Backend (jika ada)
COPY ./Backend/Homepage.js/usr/share/nginx/html/js/

# Set izin (opsional, jika diperlukan)
RUN chmod -R 755 /usr/share/nginx/html

# Buka port 80 untuk akses web
EXPOSE 80

# Jalankan nginx
CMD ["nginx", "-g", "daemon off;"]
