#!/bin/bash -x

# update system
yum update -y 

# install python and flask
yum install python3 -y
yum install pip -y
pip install flask 

# install code #

# change to user directory
cd /home/ec2-user

# get the app.py raw file into current directory
FOLDER="https://raw.githubusercontent.com/mnw-hub/my-repository/refs/heads/main/001-roman-numerals-converter"
wget ${FOLDER}/app.py

# get the templates into the templates/ directory
mkdir templates
cd templates
wget ${FOLDER}/templates/index.html
wget ${FOLDER}/templates/result.html

# run the python app
cd ..
python3 app.py

# go to aws console and go to the public dns to open the app, see below to confirm app is running
# ec2-44-204-72-43.compute-1.amazonaws.com