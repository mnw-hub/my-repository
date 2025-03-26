#! /bin/bash -x
yum update -y
yum install python3 -y
yum install python3-pip -y
pip3 install flask
pip3 install flask_mysql
echo "phone-book.c676sosgkc1o.us-east-1.rds.amazonaws.com" > /home/ec2-user/dbserver.endpoint
FOLDER="https://raw.githubusercontent.com/mnw-hub/my-repository/refs/heads/main/Project-004-Phonebook-Application/"
curl -s --create-dirs -o "/home/ec2-user/templates/index.html" -L "$FOLDER"templates/index.html
curl -s --create-dirs -o "/home/ec2-user/templates/add-update.html" -L "$FOLDER"templates/add-update.html
curl -s --create-dirs -o "/home/ec2-user/templates/delete.html" -L "$FOLDER"templates/delete.html
curl -s --create-dirs -o "/home/ec2-user/phonebook-app.py" -L "$FOLDER"phonebook-app.py
python3 /home/ec2-user/phonebook-app.py