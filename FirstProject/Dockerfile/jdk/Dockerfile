FROM harbor.guobb.com/baseimages/debian:10.9
LABEL author="Guobb <g632302493@163.com>"

ADD  jdk-8u301-linux-x64.tar.gz  /usr/local/

ENV JAVA_HOME=/usr/local/jdk1.8.0_301  
ENV PATH=$JAVA_HOME/bin:$PATH  
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar 


