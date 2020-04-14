#!/bin/bash

yum -y update
cd /etc/yum.repos.d/
wget https://download.opensuse.org/repositories/security:zeek/CentOS_8/security:zeek.repo
yum -y install zeek
cd
yum -y install cmake make gcc gcc-c++ flex bison jemalloc-devel libpcap-devel openssl-devel platform-python-devel swig zlib-devel
yum -y --enablerepo=extras install epel-release
yum -y install libmaxminddb-devel
wget https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=qYMmUa3EXUCtzEw9&suffix=tar.gz
tar xzvf geoip_download*
mkdir /usr/share/GeoIP 
cd
cd GeoLite2*
mv GeoLite2-City.mmdb /usr/share/GeoIP/GeoLite2-City.mmdb
