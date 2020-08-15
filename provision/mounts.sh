mkdir -p /home/vagrant/mount/work/trynode/node_modules
chown -R vagrant:vagrant /home/vagrant/mount/
mount --bind /home/vagrant/mount/work/trynode/node_modules /home/vagrant/work/trynode/node_modules

mkdir -p /home/vagrant/mount/work/showroom/node_modules
mount --bind /home/vagrant/mount/work/showroom/node_modules /home/vagrant/work/showroom/node_modules
