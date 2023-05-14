Postmortem Report: Extended Outage Caused by Docker Daemon Configuration Issues

Issue Summary:
While doing my ALX software engineering tasks on 0x0D-web_stack_debugging_0, I encountered Docker Configuration challenges. The response returned was "Cannot connect to the Docker " indicating that either the Docker was not running or unable to connect to the Docker socket. This outage was caused by configuration issues.
Now, this challenge made me research more on the concept while reaching out to other peers and resources for assistance.

Timeline (all times in West African Time):
27/03/2023, 6:00AM: Project 0x0D-web_stack_debugging_0 was released
28/03/2023, 10:00 AM: Began project by installing Docker on my Ubuntu 14.04 VM. 
28/03/2023, 10:45 AM: Outage began when trying to run the  “docker run -d -ti ubuntu:14.04” command which returned the response "Cannot connect to the Docker daemon". About 25% of my peers were affected by the installation challenges.
28/03/2023, 10:50 AM: Went through all the resources given for the project in order to fully understand the debugging process.
28/03/2023, 12:00 PM: Joined the PLD session to interact with fellow peers on the issues encontered 
29/03/2023, 02:00 PM: Joined the ALX Walk-In Session and learnt more of the debugging concept


29/03/2023, 03:30 PM: Docker Daemon Configuration challenges were resolved using the command “sudo journalctl -u docker.service” to check the logs for the Docker daemon


29/03/2023, 04:45 PM: Connection to the container restored to curl port 80 return a page that contains Hello Holberton. 


29/03/2023, 09:45 PM: All my scripts and command(s) that i used to fix the issue were put on my answer file.


Root Cause:
Cause: After installation of the Docker daemon, it must be configured correctly to run on the system but in my case, the response was "Cannot connect to the Docker daemon" meaning that if the daemon was not configured properly, then Docker will not function correctly. So I researched the name of the error message on the internet and using Chatgpt and found out that it was an Incorrect configuration file. I also found out that the Docker daemon configuration file is located at “/etc/docker/daemon.json”. If this file is missing or has incorrect settings, the Docker daemon may not be configured properly.
Fix: To fix the error message, I opened the Docker configuration file, searched for its location at “/etc/docker/daemon.json”  and then used a text editor to open the file. I reviewed the settings in the file, identified any incorrect settings and modified the settings to make sure that I followed the correct syntax and formatting for the configuration file. I saved the configuration file and restarted the Docker using the command “sudo systemctl restart docker.service” inorder to apply the changes to the configuration file. I verified that the Docker is running and that the configuration settings are correct. Finally, I used the command “docker run -d -ti ubuntu:14.04” again to check if the issue had been fixed. This gave an output of “Unable to find image 'ubuntu:14.04' locally” indicating that the issue had been resolved.
Corrective and Preventative measures:
Always format and utilise the proper syntax for the Docker configuration file making sure you follow the instructions on how to setup the file properly, also remember to consult the Docker manual if in doubt.
Update the Docker configuration file regularly because the configuration file might need to be modified to reflect changes in Docker when new versions are published.
To handle changes to the Docker configuration file, use a version control system to enable you to keep track of changes and, if required, go back to earlier versions.
Test the Docker configuration file frequently to make sure it is functioning properly because this can assist you in identifying any difficulties before they develop into larger ones.
Automated tools should be used to deploy and set up Docker so that the Docker configuration file is delivered uniformly throughout your infrastructure by using automation tools like Ansible or Puppet.

