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
cd ..

wget https://github.com/kunaljaykam/kj-sakai/raw/main/sakai-github-codespaces-template/sakai.properties.zip

# we need to install "unzip" to un-zip the zip files
sudo apt-get install unzip -y

unzip sakai.properties.zip

# we don't need the zip file anymore
rm sakai.properties.zip


# install apache tomcat
wget https://github.com/kunaljaykam/kj-sakai/raw/main/sakai-github-codespaces-template/tomcat9.zip

unzip tomcat9.zip

# we don't need the zip file anymore
rm tomcat9.zip

# make the tomcat bin directory executable
chmod +x tomcat9/bin/*.sh

# set up Java and Maven Paths(only required in Gihub Codespaces)
source ./export-paths.sh

# restart terminal in case it is not updated
source ~/.profile


# Now build Sakai(skip tests)
cd sakai

mvn clean install -Dmaven.test.skip=true -T 4C -Dmaven.tomcat.home=/workspaces/tomcat9 -Dsakai.home=/workspaces/ sakai:deploy


# Finally, start the tomcat
cd ../tomcat9

bin/startup.sh; tail -f logs/catalina.out

