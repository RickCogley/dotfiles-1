#*
#*                  _    __ _ _
#*   __ _ ___  __ _| |_ / _(_) |___ ___  WEBSITE: https://goatfiles.github.io
#*  / _` / _ \/ _` |  _|  _| | / -_|_-<  REPOS:   https://github.com/goatfiles
#*  \__, \___/\__,_|\__|_| |_|_\___/__/  LICENCE: https://github.com/goatfiles/dotfiles/blob/main/LICENSE
#*  |___/
#*          MAINTAINERS:
#*              AMTOINE: https://github.com/amtoine antoine#1306 7C5EE50BA27B86B7F9D5A7BA37AAE9B486CFF1AB
#*              ATXR:    https://github.com/atxr    atxr#6214    3B25AF716B608D41AB86C3D20E55E4B1DE5B2C8B
#*

#####################################
# Remotes management file for CliFM #
#####################################

# Blank and commented lines are omitted

# The syntax is as follows:

# A name for this remote. It will be used by the 'net' command
# and will be available for TAB completion
# [work_smb]

# Comment=My work samba server
# Mountpoint=/home/user/.config/clifm/mounts/work_smb

# Use %m as a placeholder for Mountpoint
# MountCmd=mount.cifs //WORK_IP/shared %m -o OPTIONS
# UnmountCmd=umount %m

# Automatically mount this remote at startup
# AutoMount=true

# Automatically unmount this remote at exit
# AutoUnmount=true

# A few examples

# A. Samba share
#[samba_share]
#Comment=my samba share
#Mountpoint="~/.config/clifm/mounts/samba_share"
#MountCmd=sudo mount.cifs //192.168.0.26/resource_name %m -o mapchars,credentials=/etc/samba/credentials/samba_share
#UnmountCmd=sudo umount %m
#AutoUnmount=false
#AutoMount=false

# B. SSH file system (sshfs)
#[my_ssh]
#Comment=my ssh
#Mountpoint="/media/ssh"
#MountCmd=sshfs user@192.168.0.12: %m -C -p 22
#UnmountCmd=fusermount3 -u %m
#AutoUnmount=false
#AutoMount=false

# C. Mounting a local file system
#[local]
#Comment=Local filesystem
#Mountpoint="/media/extra"
#MountCmd=sudo mount -U 1232dsd761278... %m
#UnmountCmd=sudo umount %m
#AutoUnmount=false
#AutoMount=true

# D. Mounting a removable device
#[USB]
#Comment=My USB drive
#Mountpoint="/media/usb"
#MountCmd=sudo mount -o gid=1000,fmask=113,dmask=002 -U 5647-1... %m
#UnmountCmd=sudo umount %m
#AutoUnmount=true
#AutoMount=false
