# Menggunakan image dasar Nginx
FROM nginx:alpine

# Hapus konten default nginx
RUN rm -rf /usr/share/nginx/html/*

# Menyalin file dari folder FrontEnd ke direktori default Nginx
COPY ./FrontEnd/Homepages.html /usr/share/nginx/html/index.html
COPY ./FrontEnd/CSS/ /usr/share/nginx/html/CSS/
COPY ./Images/ /usr/share/nginx/html/Images/  # Sesuaikan dengan lokasi folder Images Anda

# Set permissions agar nginx bisa membaca file
RUN chmod -R 755 /usr/share/nginx/html

# Nginx akan secara otomatis menjalankan website di port 80
EXPOSE 80
