FROM nginx:alpine

COPY dist /opt/app/web/quickref

RUN rm /etc/nginx/conf.d/*
COPY ./default.conf /etc/nginx/conf.d/

EXPOSE 11001

CMD ["nginx", "-g", "daemon off;"]
