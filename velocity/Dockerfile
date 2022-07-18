ARG JAVA_VERSION=17
FROM openjdk:${JAVA_VERSION}
ARG JAVA_VERSION
ARG VERSION=3.1.2-SNAPSHOT
ARG BUILD=161
ARG PROJECT_URL=https://api.papermc.io/v2/projects/velocity
ARG JAR=velocity-${VERSION}-${BUILD}.jar
ARG DOWNLOAD_URL=${PROJECT_URL}/versions/${VERSION}/builds/${BUILD}/downloads/${JAR}
RUN mkdir -p /srv/velocity/data
WORKDIR /srv/velocity
ADD ${DOWNLOAD_URL} ${JAR}
ADD start.sh start.sh
ADD velocity.toml velocity.toml
ADD forwarding.secret forwarding.secret
RUN chmod a+rx . *
ENV JAR=${JAR}
CMD sh start.sh