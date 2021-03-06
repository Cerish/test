FROM java:8

# 设置环境变量 url
# ENV url /cerish/springboot

# 读取 url 中的目录，并切换工作空间到对应目录
# WORKDIR ${url}

COPY *.jar /app.jar

VOLUME /tmp

ENTRYPOINT ["java","-jar","/app.jar"]
EXPOSE 8088
