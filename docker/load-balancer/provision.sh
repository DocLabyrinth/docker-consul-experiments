echo Installing dependencies...
sudo apt-get install -y unzip curl

echo Fetching Consul...
cd /tmp/
if [ ! -f consul.zip ]
  then
    wget https://dl.bintray.com/mitchellh/consul/0.5.0_linux_amd64.zip -O consul.zip
fi

echo Installing Consul...
unzip consul.zip
sudo chmod +x consul
sudo mv consul /usr/bin/consul

echo Installing Consul-Template
if [ ! -f consul-template.tar.gz ]
  then
    wget https://github.com/hashicorp/consul-template/releases/download/v0.7.0/consul-template_0.7.0_linux_amd64.tar.gz -O consul-template.tar.gz
fi
tar xvzf consul-template.tar.gz
mv consul-template_0.7.0_linux_amd64/consul-template /usr/bin/consul-template
