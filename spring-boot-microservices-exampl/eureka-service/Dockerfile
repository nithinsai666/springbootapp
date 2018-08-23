FROM springboot:latest as eureka-service

WORKDIR /usr/local/
RUN mkdir -p eureka-service
COPY . /usr/local/eureka-service
RUN set -e

# Eureka
RUN cd ./eureka-service
RUN echo "Starting Eureka Service..."
RUN mvn -q clean spring-boot:run &
