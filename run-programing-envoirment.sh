#!/bin/sh

#set -m

#MySQL Stack
echo -n "\e[0;36mStarting MySQL Server \e[0m"
systemctl start mysql.service </dev/null &>/dev/null &
echo "\e[0m- \e[0;32mDone\e[0m"

echo -n "\e[0;36mStarting MySQL Workbench \e[0m"
nohup mysql-workbench </dev/null &>/dev/null &
echo "\e[0m- \e[0;32mDone\e[0m"

# IDE
echo -n "\e[0;36mStarting IntelliJ Idea \e[0m"
nohup /opt/IntelliJ-IDEA-2020.2.1/bin/idea.sh </dev/null &>/dev/null &
echo "\e[0m- \e[0;32mDone\e[0m"

#Browser
echo -n "\e[0;36mStarting Firefox \e[0m"
nohup firefox </dev/null &>/dev/null &
echo "\e[0m- \e[0;32mDone\e[0m"

#Test
echo -n "\e[0;36mStarting Postman \e[0m"
nohup /usr/bin/flatpak run --branch=stable --arch=x86_64 --command=Postman --file-forwarding com.getpostman.Postman @@u %U @@ </dev/null &>/dev/null &
echo "\e[0m- \e[0;32mDone\e[0m"
