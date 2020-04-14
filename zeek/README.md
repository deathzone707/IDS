# For use with CentOS 8/ RHEL 8

# For Master
1) vim /etc/yum.repos.d/CentOS-PowerTools.repo
  change enabled to value 1 (enabled=1)
2) run ZeekMasterInstaller.sh
3) create an account at https://www.maxmind.com/en/geolite2/signup
4) Download GeoLite2 City locally, untar, and move the mmdb to the zeek manager via scp
5) mkdir /usr/share/GeoIP
6) mv GeoLite2-City.mmdb /usr/share/GeoIP/GeoLite-City.mmdb 
7) generate public key and add public key to workers

# For Workers
1) on each worker: echo "PermitRootLogin yes" |tee -a /etc/ssh/sshd_config
