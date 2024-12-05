FROM archlinux:latest

WORKDIR /app

RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm nginx

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
