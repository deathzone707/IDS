#!/bin/bash

yum -y update
yum -y install cmake make gcc gcc-c++ flex bison jemalloc-devel libpcap-devel openssl-devel platform-python-devel swig zlib-devel
yum -y --enablerepo=extras install epel-release
yum -y install libmaxminddb-devel
