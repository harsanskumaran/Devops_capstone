from ubuntu
workdir /var/www/html/
run apt-get update && \
    apt-get install -y nginx && \
    apt-get install -y net-tools git vim 
copy . .
expose 80
cmd ["nginx", "-g", "daemon off;"]
