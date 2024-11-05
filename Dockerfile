# Menggunakan image dasar Nginx
FROM nginx:alpine

# Menyalin semua file dari direktori saat ini ke direktori default Nginx
COPY . /usr/share/nginx/html

# Nginx akan secara otomatis menjalankan website di port 80
EXPOSE 80
