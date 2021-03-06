FROM progrium/busybox

RUN mv /lib/libgcc_s.so.1 /lib/libgcc_s.so.1.bak && mkdir -p /var/lib/nginx
RUN opkg-install nginx
RUN echo "Service-iot, nanti hapus nginx ini kalau webservice sudah dibuat" > /var/www/index.html

ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
ENTRYPOINT ["/bin/sh","-c","--"]
