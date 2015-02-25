echo Installing dependencies...
#apt-get update
apt-get install -y unzip curl

echo Fetching Consul...
cd /tmp/
if [ ! -f consul.zip ]
  then
    #wget http://dl.bintray.com/mitchellh/consul/0.5.0_linux_amd64.zip -O consul.zip
    cp /consul/consul.zip consul.zip
fi

echo Installing Consul...
unzip consul.zip
chmod +x consul
mv consul /usr/bin/consul
