

# save these paths for all terminals
echo "export JAVA_HOME=/opt/java/11.0.14" >> ~/.bashrc
echo "export PATH=$PATH:$JAVA_HOME/bin" >> ~/.bashrc
echo "export MAVEN_HOME=/opt/maven/3.6.3" >> ~/.bashrc
echo "export PATH=$PATH:$MAVEN_HOME/bin" >> ~/.bashrc

exec bash