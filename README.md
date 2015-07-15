## Synopsis
This is a "Hello, World!" Java web application built using Gradle. This project is designed to be deployed using Vagrant. Vagrant provisions an Ubuntu box [VirtualBox VM]. Vagrant is configured to deploy a masterless, standalone SaltStack minion.

## SaltStack Minion
The minion mounts /tmp on tmpfs, upgrades the system, installs mysql, tomcat, and some other applications.
- mounts /tmp on tmpfs
- upgrade the system
- installs
 - mysql
 - tomcat
 - 'git'
 - 'htop'
 - 'nano'
 - 'rsync'
 - 'screen'
 
The MySQL and Tomcat formulas can be managed by editing their respective pillar in ./vagrant/srv/pillar/
 
## SaltStack Formulas
Formulas must be manually installed in ./vagrant/srv/formulas/, e.g.
```bash
mkdir -p vagrant/srv/formulas/mysql-formula/
git clone https://github.com/saltstack-formulas/mysql-formula.git vagrant/srv/formulas/mysql-formula/
mkdir -p vagrant/srv/formulas/tomcat-formula/
git clone https://github.com/saltstack-formulas/tomcat-formula.git vagrant/srv/formulas/tomcat-formula/
```

Edit vagrant/srv/formulas/tomcat-formula/tomcat/init.sls
```yaml
include:
  - tomcat.package
  - tomcat.manager
```