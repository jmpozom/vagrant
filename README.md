## Table of contents
* [General info](#general-info)
* [Technologies](#technologies)
* [Setup](#setup)
* [Environments](#environments)

## General info
Vagrant usage examples.

## Technologies
This project requires:
* Vagrant
* VirtualBox
* Git

## Setup
To run FULL-RHEL project:
```
# cd c/VMs/vagrant/FULL-RHEL
# time vagrant up
# time vagrant destroy -f
```
```
# git add README.md
# git commit -m "$(date +%F\ %R)"
# git push
```

## Environments

* FULL-RHEL
```
  { :hostname => "node1", :operating_system => "generic/rhel6", :ip => "192.168.100.101", :ssh_port => "2201", :cpu => 2, :memory => "1024", :extra_storage => "5GB" },
  { :hostname => "node2", :operating_system => "generic/rhel7", :ip => "192.168.100.102", :ssh_port => "2202", :cpu => 1, :memory => "1024", :extra_storage => "5GB" },
  { :hostname => "node3", :operating_system => "generic/rhel8", :ip => "192.168.100.103", :ssh_port => "2203", :cpu => 1, :memory => "1024", :extra_storage => "5GB" },
  { :hostname => "node4", :operating_system => "generic/rhel9", :ip => "192.168.100.104", :ssh_port => "2204", :cpu => 1, :memory => "1024", :extra_storage => "5GB" },
```
```
rhel7a# for SERVER in node101 node102 node103 node104; do echo -e "\n# $SERVER"; ssh vagrant@$SERVER "uname -a; cat /etc/system-release"; echo; done
```

* env01
```
  config.vm.box = "generic/rhel8"
  { :hostname => "node01", :ip => "192.168.100.101", :ssh_port => "2201", :cpu => 2, :memory => "2048", :extra_storage => "10GB" },
  { :hostname => "node02", :ip => "192.168.100.102", :ssh_port => "2202", :cpu => 1, :memory => "1024", :extra_storage => "5GB" },
  { :hostname => "node03", :ip => "192.168.100.103", :ssh_port => "2203", :cpu => 1, :memory =>  "512", :extra_storage => "1GB" },
```

* env02
```
  { :hostname => "node21", :operating_system => "almalinux/8",   :ip => "192.168.100.121", :ssh_port => "2221", :cpu => 2, :memory => "1024", :extra_storage => "5GB" },
  { :hostname => "node22", :operating_system => "generic/alma8", :ip => "192.168.100.121", :ssh_port => "2222", :cpu => 1, :memory => "1024", :extra_storage => "5GB" },
  { :hostname => "node23", :operating_system => "roboxes/alma8", :ip => "192.168.100.123", :ssh_port => "2223", :cpu => 1, :memory => "1024", :extra_storage => "5GB" },
  ```
