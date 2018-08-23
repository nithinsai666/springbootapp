FROM springboot:latest as eureka-service

WORKDIR /usr/local/
RUN mkdir -p eureka-service
COPY . /usr/local/eureka-service
RUN set -e
EXPOSE 8761:8761
# Eureka
RUN echo "Starting Eureka Service..."
WORKDIR /usr/local/eureka-service
ENTRYPOINT ["/usr/local/eureka-service/run.sh"]
