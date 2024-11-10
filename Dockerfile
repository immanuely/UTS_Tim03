FROM nginx:alpine

# Hapus konten default nginx dan buat direktori yang diperlukan
RUN rm -rf /usr/share/nginx/html/* && \
    mkdir -p /usr/share/nginx/html/{CSS,Images,js}

# Salin file-file dari direktori proyek ke dalam container
COPY ./FrontEnd/Homepages.html /usr/share/nginx/html/index.html
COPY ./FrontEnd/CSS/ /usr/share/nginx/html/CSS/
COPY ./Images/ /usr/share/nginx/html/Images/
COPY ./Backend/js/ /usr/share/nginx/html/js/

# Set izin (opsional, jika diperlukan)
RUN chmod -R 755 /usr/share/nginx/html

# Buka port 80 untuk akses web
EXPOSE 80
