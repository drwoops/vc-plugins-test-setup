ARG JAVA_VERSION=17
FROM openjdk:${JAVA_VERSION}
ARG JAVA_VERSION
ARG VERSION=1.18.2
ARG BUILD=387
ARG PROJECT_URL=https://api.papermc.io/v2/projects/paper
ARG JAR=paper-${VERSION}-${BUILD}.jar
ARG DOWNLOAD_URL=${PROJECT_URL}/versions/${VERSION}/builds/${BUILD}/downloads/${JAR}
RUN mkdir -p /srv/paper/data
WORKDIR /srv/paper
ADD start.sh start.sh
ADD server.properties server.properties
ADD ${DOWNLOAD_URL} ${JAR}
RUN chmod a+rx . *
ENV JAR=${JAR}
CMD sh start.sh
