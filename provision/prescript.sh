apt-get update
sudo apt-mark hold grub*
apt-get upgrade -y
apt-get install -y build-essential curl apt-transport-https ca-certificates gnupg2 software-properties-common gcc g++ make git screen default-libmysqlclient-dev libcurl3-dev gnupg2
apt-get install -y parted
# fdisk
# https://unix.stackexchange.com/questions/319382/a-start-job-is-running-for-dev-disk-by-x2duuid-error-take-1min-30s-to-boot-de
# https://linuxhint.com/uuid_storage_devices_linux/
# sudo tune2fs -U random /dev/sda3
# https://linuxize.com/post/how-to-add-swap-space-on-debian-9/

# parted print
# Number  Start   End     Size    Type      File system     Flags
#  1      1049kB  20.2GB  20.2GB  primary   ext4            boot
#  2      20.2GB  21.3GB  1071MB  extended
#  5      20.2GB  21.3GB  1071MB  logical   linux-swap(v1)

# (parted) print free
# Model: ATA VBOX HARDDISK (scsi)
# Disk /dev/sda: 80.5GB
# Sector size (logical/physical): 512B/512B
# Partition Table: msdos
# Disk Flags:

# Number  Start   End     Size    Type      File system     Flags
#         32.3kB  1049kB  1016kB            Free Space
#  1      1049kB  20.2GB  20.2GB  primary   ext4            boot
#         20.2GB  20.2GB  1048kB            Free Space
#  2      20.2GB  21.3GB  1071MB  extended
#  5      20.2GB  21.3GB  1071MB  logical   linux-swap(v1)
#         21.3GB  80.5GB  59.3GB            Free Space

# vagrant@contrib-stretch:~$ sudo /sbin/fdisk -l
# Disk /dev/sda: 75 GiB, 80530636800 bytes, 157286400 sectors
# Units: sectors of 1 * 512 = 512 bytes
# Sector size (logical/physical): 512 bytes / 512 bytes
# I/O size (minimum/optimal): 512 bytes / 512 bytes
# Disklabel type: dos
# Disk identifier: 0x1ad3f31b

# Device     Boot    Start      End  Sectors  Size Id Type
# /dev/sda1  *        2048 39438335 39436288 18.8G 83 Linux
# /dev/sda2       39440382 41531391  2091010 1021M  5 Extended
# /dev/sda5       39440384 41531391  2091008 1021M 82 Linux swap / Solaris

# mkpart logical linux-swap 70.0GB 80.5GB
# sudo blkid
# (parted) mkpart logical linux-swap(v1) 70.0GB 80.5GB
# (parted) set 2 lba off
# (parted) set 5 lba off

# sudo resize2fs /dev/sda1





# vagrant@contrib-stretch:~$ sudo /sbin/fdisk -l
# Disk /dev/sda: 75 GiB, 80530636800 bytes, 157286400 sectors
# Units: sectors of 1 * 512 = 512 bytes
# Sector size (logical/physical): 512 bytes / 512 bytes
# I/O size (minimum/optimal): 512 bytes / 512 bytes
# Disklabel type: dos
# Disk identifier: 0x1ad3f31b

# Device     Boot    Start      End  Sectors  Size Id Type
# /dev/sda1  *        2048 39438335 39436288 18.8G 83 Linux
# /dev/sda2       39440382 41531391  2091010 1021M  5 Extended
# /dev/sda5       39440384 41531391  2091008 1021M 82 Linux swap / Solaris




