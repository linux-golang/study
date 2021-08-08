#!/bin/bash 
#author paulin
#create time 2021/7/19
#Version 0.1

# 配置apt 源
cat > /etc/apt/sourcess.list <<EOF
deb http://mirrors.ustc.edu.cn/debian stable main contrib non-free
deb http://mirrors.ustc.edu.cn/debian stable-updates main contrib non-free
EOF

apt-get update
apt-get install -y apt-transport-https


# 禁用swap 分区
sed -i '/swap/d' /etc/fstab
swapoff -a





