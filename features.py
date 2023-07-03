import socket
import pywhatkit
import smtplib
import matplotlib.pyplot as plt
from datetime import datetime


# returns the current date
def current_date():
    return datetime.now().date().strftime("%d-%m-%Y")


# returns the current time
def current_time():
    return datetime.now().time().strftime("%H:%M:%S")


# return computer's ip address
def user_ip():
    """returns user's system ip address"""
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    s.connect(("8.8.8.8", 80))

    return s.getsockname()[0]


# return computer's hostname
def user_hostname():
    """returns users system hostname"""
    hostname = socket.gethostname()

    return hostname


# Mailing System
def mailing_system(msg):
    """takes in msg and sends a mail to a specific gmail id"""
    senders_email = ""
    recievers_email = ""
    message = msg

    connection = smtplib.SMTP("smpt.gmail.com")
    connection.starttls()
    connection.login(user=senders_email, password="")
    connection.sendmail(from_addr=senders_email, to_addrs=recievers_email, msg=message)


# Whatsapp system
def whatsapp_system(msg):
    """takes in message and sends a message to a specific whatsapp group"""
    group_id = ""
    message = msg
    hour = 9
    minute = 9

    pywhatkit.sendwhatmsg_to_group(group_id=group_id, message=message, time_hour=hour, time_min=minute)
