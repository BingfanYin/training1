FROM nginx:alpine

RUN echo "I AM FROM grp JENKINS" > /usr/share/nginx/html/index.html
