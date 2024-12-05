FROM archlinux:latest

WORKDIR /app

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY cloudflare.crt /etc/nginx/cloudflare.crt
COPY cloudflare.key /etc/nginx/cloudflare.key

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
