FROM nginx:alpine

# Copy the static web files to the nginx default public folder
COPY public/ /usr/share/nginx/html

# Copy the nginx template that will use the Cloud Run $PORT
COPY nginx.conf.template /etc/nginx/templates/default.conf.template
