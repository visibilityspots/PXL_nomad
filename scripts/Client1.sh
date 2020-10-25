sudo systemctl start docker
sudo systemctl start consul 
sudo systemctl start nomad 

sudo echo "192.168.2.4 server" | sudo tee -a /etc/hosts

sudo consul agent -config-file /vagrant/scripts/ConsulClientConfig.hcl /dev/null 2>&1 & 
sudo nomad agent -config /vagrant/scripts/NomadClientConfig.hcl /dev/null 2>&1 & 
