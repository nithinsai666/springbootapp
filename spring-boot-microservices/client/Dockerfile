FROM springboot:V1.0.0 as Angular-client

WORKDIR /usr/local/
RUN mkdir -p client
COPY . /usr/local/client
RUN set -e

# Client
RUN cd ./client
RUN npm install
RUN echo "Starting Angular Client..."
RUN npm start &
