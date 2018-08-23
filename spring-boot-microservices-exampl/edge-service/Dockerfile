FROM springboot:latest as edge-service

WORKDIR /usr/local/
RUN mkdir -p edge-service
COPY . /usr/local/edge-service
RUN set -e

# Edge Service
RUN echo "Starting Edge Service..."
RUN cd ./edge-service
RUN mvn -q clean spring-boot:run &
