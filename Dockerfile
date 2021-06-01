FROM node:latest

LABEL Author="DJay"

ENV HOME /home
ENV APP_NAME SampleRestService
ENV APP_SERVICE_NAME RestService.js
ENV APP_DIR_NAME ${APP_NAME}
ENV APP_HOME ${HOME}/${APP_DIR_NAME}


# Update the system
RUN apt-get update -y

# Application code and configurations
RUN mkdir -p ${APP_HOME}
COPY ./RestService.js ${APP_HOME}/
COPY ./package.json ${APP_HOME}/

EXPOSE 8888

# Directory inside which commands will run
WORKDIR ${APP_HOME}

RUN npm install

# Run the application
ENTRYPOINT [ "node" ]
CMD [ ${APP_SERVICE_NAME} ]

