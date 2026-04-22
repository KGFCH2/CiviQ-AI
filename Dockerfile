FROM nginx:alpine

# Security: Run NGINX as non-root user
RUN chown -R nginx:nginx /usr/share/nginx/html \
    && chown -R nginx:nginx /var/cache/nginx \
    && chown -R nginx:nginx /var/log/nginx \
    && chown -R nginx:nginx /etc/nginx/conf.d \
    && touch /var/run/nginx.pid \
    && chown -R nginx:nginx /var/run/nginx.pid

# Copy the static web files to the nginx default public folder
COPY --chown=nginx:nginx public/ /usr/share/nginx/html

# Copy the nginx template that will use the Cloud Run $PORT
COPY --chown=nginx:nginx nginx.conf.template /etc/nginx/templates/default.conf.template

USER nginx

EXPOSE 8080
