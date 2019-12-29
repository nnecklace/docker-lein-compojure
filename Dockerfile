FROM ubuntu:latest
RUN apt-get update && apt-get install -y postgresql postgresql-contrib
RUN apt-get install -y default-jdk
RUN apt-get install -y leiningen
COPY . ./
RUN chmod +x ./start.sh
RUN lein ring uberjar
CMD ["./start.sh"]
EXPOSE 3000
