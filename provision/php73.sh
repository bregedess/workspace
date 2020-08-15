apt install ca-certificates apt-transport-https
wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
echo "deb https://packages.sury.org/php/ stretch main" | tee /etc/apt/sources.list.d/php.list
apt-get update

apt-get install -y zip unzip php7.0-dev php7.0-mbstring php7.0-mysql php7.0-pdo php7.0-curl php7.0-json php7.0-xmlrpc php7.0-zip php7.0-gd php-mongodb php-intl php7.0-bcmath php7.0-mcrypt php7.0-bz2 php7.0-xml
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
# composer global require "laravel/lumen-installer"
echo 'export PATH="$PATH:$HOME/.config/composer/vendor/bin"' >> /home/vagrant/.bashrc
