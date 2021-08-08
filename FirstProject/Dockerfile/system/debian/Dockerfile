FROM debian:10.9
LABEL maintainer="Guobb <g632302493@163.com>"

ADD init-os.sh /opt/


# 安装所需要的
RUN  chmod +x /opt/init-os.sh && bash /opt/init-os.sh &&   apt-get install -y  vim wget net-tools tcpdump traceroute telnet  \
 unzip  curl  zip ntpdate  nfs-common  && rm  -f /etc/localtime && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime  && useradd -u 2000 xfsweb
