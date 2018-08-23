FROM springboot:latest as beer-catalog-service

WORKDIR /usr/local/
RUN mkdir -p beer-catalog-service
COPY . /usr/local/beer-catalog-service
RUN set -e
EXPOSE 8080

# Beer Service
RUN echo "Starting Beer Catalog Service..."
WORKDIR /usr/local/beer-catalog-service
ENTRYPOINT ["/usr/local/beer-catalog-service/run.sh"]
