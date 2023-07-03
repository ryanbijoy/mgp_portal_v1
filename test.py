import mysql.connector
from datetime import datetime
from flask import request

mydb = mysql.connector.connect(host="localhost", user="root", password="root1234", database="mgp_portal")
date = datetime.now().date().strftime("%d-%m-%Y")
time = datetime.now().time().strftime("%H:%M:%S")
cursor = mydb.cursor()

username = "pranitsingh"

