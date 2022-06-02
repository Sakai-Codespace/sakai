

# build sakai(skip tests) and deploy
cd /workspace/sakai

mvn clean install -Dmaven.test.skip=true -T 4C -Dmaven.tomcat.home=/home/gitpod/tomcat9 -Dsakai.home=/home/gitpod/ sakai:deploy


# Finally, start the tomcat
cd ~/tomcat9

bin/startup.sh; tail -f logs/catalina.out
