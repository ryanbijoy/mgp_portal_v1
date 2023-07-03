from flask import Flask, render_template, jsonify, request, url_for, redirect, flash, session
from features import *
import mysql.connector


app = Flask(__name__, template_folder="templates")
app.secret_key = "root1234"
mydb = mysql.connector.connect(host="localhost", user="root", password="root1234", database="mgp_portal")
cursor = mydb.cursor()


cursor.execute("select * from employee_details")
data = cursor.fetchall()


@app.route("/employee_portal", methods=["POST"])
def functions():
    signout = request.form.get("signout")
    punch = request.form.get("mgplogin")
    punchout = request.form.get("mgplogout")

    username = session["username"]

    cursor.execute("select employee_id from employee_details where username = %s", (username,))
    employee_id = cursor.fetchall()[0][0]

    if signout:
        flash("Signned Out Successfully!")
        return redirect("/login")

    if punch:
        cursor.execute("insert into login_details(employee_id, login_date, login_time, system_ip, system_hostname)"
                       "values(%s, %s, %s, %s, %s)",
                       (employee_id, current_date(), current_time(), user_ip(), user_hostname()))
        mydb.commit()

        flash("Punched In Successfully!")
        return redirect("/login")

    if punchout:
        cursor.execute("insert into login_details(employee_id, login_date, logout_time, system_ip, system_hostname)"
                       "values(%s, %s, %s, %s, %s)",
                       (employee_id, current_date(), current_time(), user_ip(), user_hostname()))
        mydb.commit()

        flash("Punched Out Successfully!")
        return redirect("/login")


@app.route("/login")
def index():
    return render_template("login-portal.html")


@app.route("/employee_details", methods=["GET"])
def get():
    return jsonify({"employee_details": data})


@app.route("/employee_details/<int:employee_id>", methods=["GET"])
def employee_details(employee_id):
    return jsonify({"employee_details": data[employee_id]})


@app.route("/login", methods=["POST"])
def post():
    username = request.form.get("username")
    password = request.form.get("password")
    session["username"] = username

    cursor.execute("select exists(select * from employee_details "
                   "where username = %s and password = %s) as truth", (username, password))

    returned_data = cursor.fetchall()[0][0]

    if returned_data == 1:
        # cursor.execute("select first_name from employee_details where username = %s", (username,))
        # first_name = cursor.fetchall()[0][0]

        return redirect("employee_portal")

    else:

        flash("Invalid Username Or Password!")
        return redirect("/login")
        # cursor.execute("select username from employee_details")
        # all_usernames = cursor.fetchall()
        #
        # usernames = []
        #
        # for i in all_usernames:
        #     usernames += i
        #
        # if username not in usernames:
        #     flash("Invalid Username! ")
        #
        # else:
        #     flash("Invalid Password! ")
        #
        # return redirect("/login")


@app.route("/employee_portal")
def portal():

    username = session["username"]
    cursor.execute("select first_name from employee_details where username = %s", (username,))
    first_name = cursor.fetchall()[0][0]

    return render_template("homepage.html", name=first_name)


if __name__ == "__main__":
    app.run(debug=True)
