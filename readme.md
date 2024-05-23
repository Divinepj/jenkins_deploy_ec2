## How to Set Up Jenkins on Ubuntu in AWS EC2 Instance?

Jenkins is a Continuous Integration/Continuous Delivery or Deployment (CI/CD)tool in DevOps. Jenkins is developed in the “Java” language. It implements the CI/CD workflows using pipelines or automation.

Jenkins works on “Master-Slave” architecture. This means you have to set up two nodes named “Master” & “Slave”. On the “Master” node, you will configure “Jenkins” with “Java”, while on “Slave”, you have to install “Java” only.

While “Ubuntu” is an open-source operating system based on Debian Linux that runs from the desktop or any cloud platform such as “AWS”, “Google Cloud Platform” and “Microsoft Azure”. Ubuntu is used because it is easy to use, has a better user experience & has incredible support for hardware tools.

The latest version of Ubuntu is 24.04, which is the latest version & released in “April 2024”. In this blog post, we will provide you with a detailed guide, on how to install Jenkins on Ubuntu 24.04 in AWS EC2 Instance with Master-Slave architecture.
How to Set Up Jenkins on Ubuntu in AWS EC2 Instance?
How to Set Up Jenkins on Ubuntu in AWS EC2 Instance?

To know about, how to setup Jenkins on Amazon Linux in EC2 Instance, check the Jenkins Assignment 1 given below:
Trigger a Pipeline Using Git When Push on Develop Branch & Also Pull Git Content on Folder —…
Tasks to Be Performed:

medium.com
A. Create Two Amazon EC2 Instances Named As Jenkins Master & Jenkins Slave

Step 1: Go to the “Services” section & search “EC2” here. Put the cursor over “EC2” & click on “Instances”.


Step 2: Click on “Launch Instance”.


Step 3: Choose “Name” as “Jenkins-“ in the “Name and tags” section.


Step 4: Choose “AMI” as “ubuntu”.


Step 5: Choose “Instance type” as “t2.micro”.


Step 6: Choose “key pair (login)” as “Jenkins2”.


Step 7: In “Network settings”, choose “Firewall (security groups)” as “Select existing security group”. While we have chosen “launch-wizard-9” as the “Common 

Step 8: In “Summary”, write “Number of Instances” as “2”. Click on “Launch Instance”.


Step 9: Two Instances will be successfully launched. Click on “Instances” in “Breadcrumbs”.


Step 10: Rename the First “Instances” as “Jenkins-Master” & second one as “Jenkins-Slave”.

b. Install “Jenkins” Over the Master (Jenkins-Master) Machine

Step 1: Select the “Jenkins-Master” & click on “Connect”.
e

Step 2: Click on “Connect” Again.


Step 3: The “Jenkins-Master” machine will be opened. Run this command to update the machine:

`sudo apt-get update`


Step 4: Now, we will install Jenkins on the “Ubuntu” machine. Run this given command:

`sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \ https://pkg.jenkins.io/debian/jenkins.io-2023.key`


Jenkins Repo will be configured on the machine.


Step 5: Now, append the Debian package repository to the server’s sources.list.

Run this given command:

`echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \ https://pkg.jenkins.io/debian binary/ | sudo tee \ /etc/apt/sources.list.d/jenkins.list > /dev/null`

Step 6: Run this command to install the “java” on “Ubuntu Machine”:

`sudo apt install fontconfig openjdk-17-jre -y`


Step 7: First, update the machine & run the below-given commands to update & install the “Jenkins” over the “ubuntu machine.”:

`sudo apt-get update`
`sudo apt-get install jenkins -y`

Step 8: Now, enable the Jenkins to start the boot. Run the given command:

`sudo systemctl enable jenkins`


Step 9: Now, start the “Jenkins” as a service:

`sudo systemctl start jenkins`

Step 10: Now, check the “Jenkins service” status using this command:

`sudo systemctl status jenkins`

Step 11: Copy the “Public IP” of “Jenkins-Master”. Put in the browser address bar with port no 8080 [http://3.15.3.52:8080/]. The “Unlock Jenkins” option will be shown.


Step 12: Put the above-given command with sudo cat in “Jenkins-Master”.

`sudo cat /var/lib/jenkins/secrets/initialAdminPassword`

A token will be given. Copy this token: e.g

`3bdc19525af24e9f97b0d6690e2e3b41`


Step 13: Paste the given token in the “Administrator password” section. Click on “Continue”.


Step 14: Click on “Install Suggested Plugins”.


Step 15: Plugin will be started installing like this:


Step 16: Now, create your admin user. Put the following entries here:

Username: — admin

Password: — admin

Confirm Password: — admin
Create Admin User
Create Admin User

Full Name: — admin

E-mail Address: — admin@admin.com

Click on “Save and Continue”.


Step 17: Jenkins has been successfully installed. A configuration URL will be given. Click on “Save and Finish”.


Step 18: Click on “Start using Jenkins”.


Step 19: Your “Jenkins Dashboard” setup will be successfully done.
