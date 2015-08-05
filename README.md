# dynamic_ip_management
Python notebook/script that manages and updates a csv file(pandas dataframe) with a (non-static) public ip address.
(Tested on python2)

The file that records the ip address is called the variable: ip_file.

Each time the program is called it downloads the latest version of this file from Gdrive and appends the current ip address with a timestamp, and finally re-uploads the csv file.

##Requirements:
This routine requires the following modules to be installed:

pydrive

pandas

time

os

pwd

urllib2


##Authentication:
As this program interacts with Gdrive it requires a clien_secrets.json file. Therefore the user must create an app for Gdrive and save the json file in their clone of 
dynamic_ip_management. 

First time this script is called (with the above criteria met) the Gdrive Auth section will prompt the user for permission to access their Gdrive, subsequent calls will load the stored 'mycreds.txt' which was created after first authenticaion.

##Current State:
Presently I edit this script in the ipython/jupyter notebook but use smake to create a python script for use with cron. The idea is that I wish to ssh into remote computer whose public IP is changing daily. This scripts allows me to always have the latest IP.

##To Do:
Add script to update ssh hostname with new IP automatically...
