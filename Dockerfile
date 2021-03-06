FROM node:10.14.1-alpine

ENV SERVICE_USER=watsonwork
ENV APP_DIR=/home/$SERVICE_USER/app/

ADD . $APP_DIR
RUN adduser -D -g '' $SERVICE_USER
RUN chown -R $SERVICE_USER.$SERVICE_USER $APP_DIR
USER $SERVICE_USER

WORKDIR $APP_DIR

EXPOSE 3000

CMD ["npm", "run", "start"]
