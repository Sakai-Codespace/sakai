# Now build Sakai(skip tests)
cd

cd /workspace/sakai

mvn clean install -Dmaven.test.skip=true -T 4C -Dmaven.tomcat.home=/workspace/tomcat9 -Dsakai.home=/workspace/ sakai:deploy
