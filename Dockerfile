# Step 1: Ambil 'Nginx' (Web Server) yang paling ringan sebagai base
FROM nginx:alpine

# Step 2: Salin file index.html dari laptop kau masuk ke dalam folder server dalam Docker
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Bagitahu Docker kita nak buka port 80
EXPOSE 80
