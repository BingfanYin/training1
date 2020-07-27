FROM nginx:alpine

RUN echo "I AM FROM grp2 JENKINS" > /usr/share/nginx/html/index.html
