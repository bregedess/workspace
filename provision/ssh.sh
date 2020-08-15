chmod 400 /home/vagrant/.ssh/id_rsa
chmod 400 /home/vagrant/.ssh/id_rsa.pub
echo 'eval $(ssh-agent -s)' >> /home/vagrant/.bashrc
echo 'ssh-add /home/vagrant/.ssh/id_rsa' >> /home/vagrant/.bashrc
echo 'export BASE64_PRIVATE_KEY=$(base64 -w 0 /home/vagrant/.ssh/id_rsa)' >> /home/vagrant/.bashrc
echo 'export APP_ENV=testing' >> /home/vagrant/.bashrc
echo 'export LOGS_PATH=/home/vagrant/logs' >> /home/vagrant/.bashrc