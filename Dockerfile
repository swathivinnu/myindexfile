FROM nginx:alpine
EXPOSE 80
RUN rm -rf /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/
RUN chown -R nginx:nginx /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off;"]
