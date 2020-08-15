curl https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -o /tmp/go.tar.gz
tar -C /usr/local -xzf /tmp/go.tar.gz
mkdir -p /home/vagrant/go/bin
mkdir -p /home/vagrant/go/src
mkdir -p /home/vagrant/go/pkg
echo 'export PATH=$PATH:/usr/local/go/bin' >> /home/vagrant/.bashrc
echo 'export GOPATH=/home/vagrant/go' >> /home/vagrant/.bashrc
