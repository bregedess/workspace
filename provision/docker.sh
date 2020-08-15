curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
sh /tmp/get-docker.sh
usermod -aG docker vagrant

mkdir -p /home/vagrant/database/mongo/db /home/vagrant/database/mongo/log /home/vagrant/database/mysql /home/vagrant/database/rabbitmq /home/vagrant/logs
echo 'export LOGS_PATH=/home/vagrant/logs' >> /home/vagrant/.bashrc
echo 'export NETWORK=vagrant' >> /home/vagrant/.bashrc

# docker run -d --name memcached 	-p 11211:11211  memcached:alpine
# docker run -d --name redis 		-p 6379:6379    redis:alpine
# docker run -d --name mysql5637	-p 3306:3306    -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -v /home/vagrant/database/mysql:/var/lib/mysql mysql:5.6.37
# docker run -d --name rabbitmq	-p 5672:5672 -p 15672:15672 --hostname 0.0.0.0 -v /home/vagrant/database/rabbitmq:/var/lib/rabbitmq rabbitmq:3-management-alpine
# docker run -d --name mongo      -p 27017:27017  -v /home/vagrant/database/mongo/db:/data/db -v /home/vagrant/database/mongo/log:/data/log mongo:3.6.14

# docker network create vagrant
# docker network connect vagrant memcached
# docker network connect vagrant redis
# docker network connect vagrant rabbitmq
# docker network connect vagrant mysql5637
# docker network connect vagrant mongo
