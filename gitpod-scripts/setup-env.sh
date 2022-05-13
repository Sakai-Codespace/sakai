# install maridb
sudo apt-get update -y
sudo apt-get install mariadb-server -y

# setup mysql(unsecure)
sudo service mysql start

# create database(without password)
sudo mysql -uroot -Bse  "create database sakaidb  default character set utf8; create user 'sakaiuser'@'localhost' identified by 'sakaipassword';grant all on *.* to 'sakaiuser'@'localhost';
  create user 'sakaiuser'@'127.0.0.1' identified by 'sakaipassword';
  grant all on *.* to 'sakaiuser'@'127.0.0.1';
  flush privileges;
"

# create sakai.properties in workspace directory
cd

cd /workspace

wget https://github.com/kunaljaykam/kj-sakai/raw/main/sakai-gitpod-template/sakai.properties.zip

# we need to install "unzip" to un-zip the zip files
sudo apt-get install unzip -y

unzip sakai.properties.zip

# we don't need the zip file anymore
rm sakai.properties.zip


# install apache tomcat
wget https://github.com/kunaljaykam/kj-sakai/raw/main/sakai-gitpod-template/tomcat9.zip

unzip tomcat9.zip

# we don't need the zip file anymore
rm tomcat9.zip

# make the tomcat bin directory executable
chmod +x tomcat9/bin/*.sh
