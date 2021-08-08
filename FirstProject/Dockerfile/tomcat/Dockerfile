FROM harbor.guobb.com/baseimages/jdk:1.8.301
LABEL author="Guobb <g632302493@163.com>"

ADD apache-tomcat-8.5.69.tar.gz /usr/local/
ADD catalina.sh /usr/local/apache-tomcat-8.5.69/bin/
ADD server.xml /usr/local/apache-tomcat-8.5.69/conf/

EXPOSE 8080 8443
ENTRYPOINT ["/usr/local/apache-tomcat-8.5.69/bin/catalina.sh","run"]
