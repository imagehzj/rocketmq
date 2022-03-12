FROM ttbb/compile:jdk8-git-mvn AS build
RUN git clone https://github.com/apache/rocketmq-dashboard.git --depth 1 && \
cd rocketmq-dashboard && \
mvn clean package -Dmaven.test.skip=true

FROM ttbb/base:jdk8

COPY --from=build /opt/sh/rocketmq-dashboard/target/rocketmq-dashboard-1.0.1-SNAPSHOT.jar /opt/sh/rocketmq/dashboard/rocketmq-dashboard.jar

WORKDIR /opt/sh/rocketmq/dashboard
