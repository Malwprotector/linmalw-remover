#This work is licensed under a CC BY-NC-SA 4.0 License.
#The links in the 89th and 90th lines are not subject to the license, these links do not belong to me, they are just an external help for the user. 
#Read it here: https://creativecommons.org/licenses/by-nc-sa/4.0/

#!/bin/bash
# Init/Start script
FILE="/tmp/out.$$"
GREP="/bin/grep"
#....
# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "this script must be run as an administrator." 1>&2
   exit 1
fi
# ...
echo "done"
echo "-----------------------------------"
echo "----welcome to linmalw remover.----"
echo "-----------------------------------"
echo ""
echo "This script will execute several advanced commands to obtain information about your system, instructions will be given to you so that you can check if there is anything wrong, and take appropriate measures to neutralize the threats."
echo "Using this script is absolutely safe for your system!"
echo ""
echo '! BEFORE YOU MANUALLY DELETE A FILE OR DO SOMETHING, LOOK UP ITS NAME ON THE INTERNET TO BE SURE! !'
echo ""
read -n 1 -s -r -p "Press any key to start..."
echo ""
netstat -antp
echo ""
echo "in the established connections, check for suspicious connections. If you see anything unusual, search the internet to see if the situation is normal."
echo ""
read -n 1 -s -r -p "Press any key to continue..."
echo ""
echo ""
netstat -la
echo ""
echo 'Now you will check which ports are currently listening. Among the established connections, if you see anything suspicious, kill the processor with the "kill" command.'
echo ""
read -n 1 -s -r -p "Press any key to continue..."
echo ""
echo ""
(ls .bash_history >> /dev/null 2>&1 && echo "the command history file exists, which means that no software deletes it to erase traces. this is a good sign.") || echo "the command history file does not exist, this means that a malicious program is probably deleting it so as not to leave any traces. This is a bad sign."
echo ""
read -n 1 -s -r -p "Press any key to continue..."
echo ""
echo ""
last
echo ""
echo "Here are the last important operations performed on your system. Check that there is nothing suspicious."
echo ""
read -n 1 -s -r -p "Press any key to continue..."
echo ""
echo ""
tail -n 100 .bash_history
echo ""
echo "Here are the last commands made on your computer. Again, check that there is nothing strange."
echo ""
read -n 1 -s -r -p "Press any key to continue..."
echo ""
echo ""
crontab -l
echo ""
echo "These are the cron jobs that are configured. Cron jobs are commands that are run at specific times, which makes them very dangerous. Normally this list should be empty, but it is possible that some of them are configured to be harmless. Again, check the Internet before doing anything."
echo ""
read -n 1 -s -r -p "Press any key to continue..."
echo ""
echo ""
ps auxf
echo ""
echo "Here are all the processes that are currently running. If you see anything suspicious, do an internet search."
echo ""
read -n 1 -s -r -p "Press any key to continue..."
echo ""
echo ""
cat /etc/passwd | grep -i "/bin/bash" | cut -d ":" -f 1
echo ""
echo "Here is the list of users of the system. Make sure you know them all. Normally you should see your username and root."
echo ""
read -n 1 -s -r -p "Press any key to continue..."
echo ""
echo ""
find  .  -ctime -2
echo ""
echo "Here are all the files created in the last 5 days. Check if anything is wrong."
echo ""
read -n 1 -s -r -p "Press any key to continue..."
echo ""
echo ""
echo "The analyses provided by this script are now complete. Again, before you do anything, always check the internet to make sure you are not trying to remove something legitimate. To go further, I can only advise you to use the ckrootkit tool which will allow you to check for rootkits on your computer ( http://www.chkrootkit.org/ ). If you think you have been compromised, you can check your linux logs, here is a very detailed article on the subject: https://stackify.com/linux-logs/ .
If you have found a user you don't know, you may be able to see the commands they have performed by logging into their account with su username, then running the history command."
echo ""
echo "Made with <3 by St4lW | https://cutt.ly/st4lwolf"