#!/bin/bash

yum -y update
cd /etc/yum.repos.d/
wget https://download.opensuse.org/repositories/security:zeek/CentOS_8/security:zeek.repo
yum -y install zeek
cd
yum -y install cmake make gcc gcc-c++ flex bison jemalloc-devel libpcap-devel openssl-devel platform-python-devel swig zlib-devel
yum -y --enablerepo=extras install epel-release
yum -y install libmaxminddb-devel

