# jboss
base image rhel 7 in java 1.8_191 installing and jboss 7.1 installation docker file with automatic  

jboss jar file installization:
==============================
url : https://developers.redhat.com/products/eap/download/?sc_cid=701f2000000tvTfAAI&gclid=CjwKCAiAlb_fBRBHEiwAzMeEdhp9Wk9Pu7WxWfLGbAyTITN3CjNhxdskNhR3MB3HF_vGII1xpX0-PhoCQPAQAvD_BwE&gclsrc=aw.ds
jboss installization manual:
===========================
url : https://opensource.io/it/installing-jboss-7-1-1-final-on-centos-6-x/ (manual)


			steps:
			======

1. install jboss .jar file

2. copy jboss .jar file windows to redhat 7
     scp -i "pranav_11.pem" jboss-eap-7.1.0-installer.jar ubuntu@ec2-18-222-200-215.us-east-2.compute.amazonaws.com:/tmp

3. install java 

Java install:
=============
url: https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html

java using no cookie:
=====================
url : https://stackoverflow.com/questions/10268583/downloading-java-jdk-on-linux-via-wget-is-shown-license-page-instead

4. run jboss .jar file
   java -jar jboss-eap-7.1.0-installer.jar

===============================================================
Select language :
0: eng
1: chn
2: deu
3: fra
4: jpn
5: por
6: spa
Please choose [0] :
0


press 1 to continue, 2 to quit, 3 to redisplay.
1

Select the installation path:  [/root/EAP-7.1.0]

press 1 to continue, 2 to quit, 3 to redisplay.
1


Select the packs you want to install:
1    [x] [Required]      [Red Hat JBoss Enterprise Application Platform] (27.13 MB)
2    [x]                 [AppClient] (39.29 KB)
3    [x]                 [Docs] (10.89 MB)
4    [x] [Required]      [Modules] (167.32 MB)
5    [x] [Required]      [Welcome Content] (2.11 MB)
Total Size Required: 207.49 MB
Press 0 to confirm your selections
Please select which packs you want to install
0
Pack Selection Done
press 1 to continue, 2 to quit, 3 to redisplay.
1

Create an Administrative User
This user will be added to the host container's management realm for administrative purposes. It can be used to access the management console, the management CLI, or other applications secured in this realm.

For minimal security, the password should be at least eight characters long, with one alphabetic character, one digit, and one non-alphanumeric symbol excluding "&".

Admin username: [admin]
jboss

Admin password: []
*****
Confirm admin password: [*****]
*****
Validation warning:
Username and password cannot match.
Password should have at least eight characters.
Password should have at least one digit.
Password should have at least one non-alphanumeric symbol.
press 1 to continue, 2 to quit, 3 to redisplay.
1

[ Starting to unpack ]
[ Processing package: Red Hat JBoss Enterprise Application Platform (1/5) ]
[ Processing package: AppClient (2/5) ]
[ Processing package: Docs (3/5) ]
[ Processing package: Modules (4/5) ]
[ Processing package: Welcome Content (5/5) ]
[ Unpacking finished ]

Configure Runtime Environment
There are several additional options for configuring Red Hat JBoss Enterprise Application Platform now that the server has been installed. Each option can be individually chosen, and will be configured in the order displayed upon pressing "Next". What would you like to do now?
0  [x] Perform default configuration
1  [ ] Perform advanced configuration
Input Selection:
0

press 1 to continue, 2 to quit, 3 to redisplay.
1

[ Starting processing ]
Starting process Logging installation information (1/3)
IzPack variable state written to /root/EAP-7.1.0/installation/InstallationLog.txt
Starting process Adding admin user (2/3)
Starting process Cleanup extraneous folders and temporary files (3/3)
Installation has completed successfully.
Application installed on /root/EAP-7.1.0

Would you like to generate an automatic installation script and properties file? (y/n) [n]:
y
Select path for the automatic installation script: [/root/EAP-7.1.0/auto.xml]

XML written successfully.
[ Console installation done ]



===============================================================
step 5: Start the JBoss AS 7 server

   cd /root/EAP-7.1.0/bin
   ./standalone.sh -Djboss.bind.address=0.0.0.0 -Djboss.bind.address.management=0.0.0.0&

step 6: Test your JBoss 7 installation
	http://yourip::9990/

step 7: deploy jar files in jboss
 url : https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html(youtube)
