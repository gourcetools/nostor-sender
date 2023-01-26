echo " 🧅 nostor-sender "
echo " "
. torsocks on
echo " "
echo "Message?"
read MESSAGE
echo " "
echo "Using tor IP:" $( curl -s ifconfig.me)
echo " "
echo "Let's send message."
echo " "
 nostr-tool -r wss://relay.nostr.ch text-note -c "$MESSAGE"
echo "OK."
sleep 1
echo "Restarting tor service to switch exit node ip"
sudo service tor restart
echo "Let tor restart."
sleep 3
echo "OK."
