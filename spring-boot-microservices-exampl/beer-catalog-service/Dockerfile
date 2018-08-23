FROM springboot:latest as beer-catalog-service

WORKDIR /usr/local/
RUN mkdir -p beer-catalog-service
COPY . /usr/local/beer-catalog-service
RUN set -e

# Beer Service
RUN echo "Starting Beer Catalog Service..."
RUN cd ./beer-catalog-service
RUN mvn -q clean spring-boot:run &
