FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY site/ /usr/share/nginx/html/
EXPOSE 80
# Coolify gates Traefik registration on container health. Correct busybox-wget
# form (-O /dev/null, 127.0.0.1) — the earlier "-qO-" glued form exited 1.
HEALTHCHECK --interval=10s --timeout=3s --start-period=8s --retries=6 \
  CMD wget -q -O /dev/null http://127.0.0.1/ || exit 1
