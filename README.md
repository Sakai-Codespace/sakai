
# SakaiLMS Codespace(WIP)

One Click Dev Setup, you can try on Gitpod. (Gihub Codespaces is in progress)

*Currently Working with Sakai Master and Trinity Branch

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/Sakai-Codespace/sakai)






## How to use VS Code with Sakai Gitpod

#### After tomcat is server loaded
> It will take some time because sakai database will be created at the first start, you can watch the logs in vs code terminal.





![App Screenshot](https://github.com/kunaljaykam/kj-sakai/blob/main/Screencast%20from%2010-05-22%2001%2049%2014%20AM%20IST(1).gif?raw=true)


#### How to use database(MySQL) in VS Code:
*sakaiuser  --- sakaipassword

![App Screenshot](https://github.com/kunaljaykam/kj-sakai/raw/main/Screencast%20from%2010-05-22%2002%2021%2007%20AM%20IST.gif)






## Sakai GitPod Commands


```bash
# Build Sakai (run from sakai dir cd ~/workspace/sakai)
$ mvn clean install -Dmaven.test.skip=true -T 4C -Dmaven.tomcat.home=/home/gitpod/tomcat9 -Dsakai.home=/home/gitpod/ sakai:deploy

# Start Tomcat Server (run from cd ~/tomcat9)
$ bin/startup.sh; tail -f logs/catalina.out

# Stop Tomcat Server (run from cd ~/tomcat9)
$ bin/shutdown.sh

```

## Useful VS Code Commands/Shortcut
```bash
# If you need to find from the current file
Command/Ctrl + F

# If you need to find from the entire project
Command/Ctrl + Shift + F

# Quick file open
Command/Ctrl + P

# Open Terminal
Command/Ctrl + `

# Opening and Closing sidebar
Command/Ctrl +B
```
Use Google/DuckDuckGo for more :)
