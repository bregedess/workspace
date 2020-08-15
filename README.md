# workspace

## Installation Instructions

1. Install Git [here](https://git-scm.com/downloads "Install Git")
2. Install VirtualBox [here](https://www.virtualbox.org/wiki/Downloads "Install VirtualBox")
3. Install Vagrant [here](https://www.vagrantup.com/downloads.html "Install Vagrant")
4. Restart your computer/laptop
5. Clone this repo
    *  Via SSH `git clone git@github.com:bregedess/calculator.git`
    *  Via HTTPS `git clone https://github.com/bregedess/workspace`
6. Change directory into the folder `cd workspace`
7. Set vargrant memory (default 8000 mb) first at file `Vagrantfile` in `vb.memory`
8. Create your machine `vagrant up`
9. Access vagrant machine `vagrant ssh`
10. Starts cloning repo and contributes in `~/work` folder

## FAQ

__My local MySQL is not responding!__

Start your MySQL service first  
Go to the `workspace` folder then ssh into the machine `vagrant ssh`  
Start the service `docker container start mysql`

__Where to work?__

Go to the `workspace` folder then ssh into the machine `vagrant ssh`  
And cd to the folder `cd ~/work`  
Start pulling your repositories on `~/work`

__Vagrant Cheat Sheet__

```
vagrant up #start or create vagrant machine
vagrant ssh #access vagrant machine
vagrant halt #stop vagrant machine
vagrant reload #restart vagrant machine
vagrant destroy #delete machine, won't delete synced folder
```

## Notes

FAQ on synced folder and forwarded ports  
need to add NVM for future node js development  
auto pull repo script  
upgrade docker provision https://www.vagrantup.com/docs/provisioning/docker.html
