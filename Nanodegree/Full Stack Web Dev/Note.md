# Environment
## Step1:Create a HTML page
Create a `LocalServer` folder, then create a html page.

## Step2:Create a SimpleHTTPServer
``` python
python -m SimpleHTTPServer 8080
```

# Python
## time counter
### step 1 Open browser
``` python
import webbrowser
webbrowser.open("https://www.youtube.com/watch?v=BCr7y4SLhck&index=6&list=PLBkZCsC9hx0xAK185lYy3dmkE9IKSUi4K")
```
### step 2 wait time
``` python
import time
import webbrowser
time.sleep(10)
webbrowser.open("https://www.youtube.com/watch?v=BCr7y4SLhck&index=6&list=PLBkZCsC9hx0xAK185lYy3dmkE9IKSUi4K")
```
### step 3 loop
``` python
import time 
import webbrowser

total_breaks = 3
break_count = 0

print("This program started on " + time.ctime())
while(break_count < total_breaks):
    time.sleep(2 * 60 * 60)
    webbrowser.open("https://www.youtube.com/watch?v=BCr7y4SLhck&index=6&list=PLBkZCsC9hx0xAK185lYy3dmkE9IKSUi4K")
    break_count = break_count + 1
```
## Secret Message
### step 1 get file names
``` python
import os
def rename_files():
    # (1) get file names from a folder
    file_list = os.listdir(r"/Users/storm/Downloads")
    print(file_list)
    
    # (2) for each file, rename filename
    
rename_files()
```
### step 2
``` python
import os
def rename_files():
    # (1) get file names from a folder
    file_list = os.listdir(r"/Users/storm/Downloads/prank")
    #print(file_list)
    saved_path = os.getcwd()      # "cwd" current Working Directory
    print("Current Working Directory is " + saved_path)
    os.chdir(r"/Users/storm/Downloads/prank")
    # (2) for each file, rename filename
    for file_name in file_list:
        print("Old Name - " + file_name)
        print("New Name - " + file_name.translate(None, "0123456789"))
        os.rename(file_name, file_name.translate(None, "0123456789"))
    os.chdir(saved_path)

rename_files()
```
## Drawing a Square
### step 1
``` python
import turtle

def draw_square():
    window = turtle.Screen()
    window.bgcolor("red")
    
    brad = turtle.Turtle()
    brad.forward(100)
    brad.right(90)
    brad.forward(100)
    brad.right(90)
    brad.forward(100)
    brad.right(90)
    brad.forward(100)
    brad.right(90)
    
    window.exitonclick()
    
draw_square()
```
### step 2
``` python
import turtle

def draw_square():
    window = turtle.Screen()
    window.bgcolor("red")
    
    brad = turtle.Turtle()
    brad.shape("turtle")
    brad.color("yellow")
    brad.speed(2)
    
    brad.forward(100)
    brad.right(90)
    brad.forward(100)
    brad.right(90)
    brad.forward(100)
    brad.right(90)
    brad.forward(100)
    brad.right(90)
    
    window.exitonclick()
    
draw_square()
```
### step 3
``` python
import turtle

def draw_square():
    window = turtle.Screen()
    window.bgcolor("red")
    
    brad = turtle.Turtle()
    brad.shape("turtle")
    brad.color("yellow")
    brad.speed(2)
    
    brad.forward(100)
    brad.right(90)
    brad.forward(100)
    brad.right(90)
    brad.forward(100)
    brad.right(90)
    brad.forward(100)
    brad.right(90)
    
    angie = turtle.Turtle()
    angie.shape("arrow")
    angie.color("blue")
    angie.circle(100)
    
    window.exitonclick()
    
draw_square()
```
### step 4
``` python
import turtle

def draw_square(some_turtle):
    for i in range(1, 5):
        some_turtle.forward(100)
        some_turtle.right(90)

def draw art():
    window = turtle.Screen()
    window.bgcolor("red")
    #Create the turtle Brad - Draws a Square
    brad = turtle.Turtle()
    brad.shape("turtle")
    brad.color("yellow")
    brad.speed(2)
    draw_square(brad)
    #Create the turtle Angie - Draws a circle
    angie = turtle.Turtle()
    angie.shape("arrow")
    angie.color("blue")
    angie.circle(100)
    
    window.exitonclick()

draw_art()
```
### step 5
``` python
import turtle

def draw_square(some_turtle):
    for i in range(1, 5):
        some_turtle.forward(100)
        some_turtle.right(90)
        
def draw_art():
    window = turtle.Screen()
    window.bgcolor("red")
    #Create the turtle Brad - Draws a Square
    brad = turtle.Turtle()
    brad.shape("turtle")
    brad.color("yellow")
    brad.speed(2)
    for i in range(1, 5):
        draw_square(brad)
        brad.right(10)
    #Create the turtle Angie - Draws a circle
    #angie = turtle.Turtle()
    #angie.shape("arrow")
    #angie.color("blue")
    #angie.circle(100)
    
    window.exitonclick()

draw_art()
```

## Send Text Messages
### Environment
- `sudo easy_install twilio`
- install with pip
  1. `sudo easy_install pip`
  2. `sudo pip install twilio`
- install verification
  ```
  import twilio
  print(twilio.__version__)
  ```
### code 1 (doesn't work beacuse i live in china)
``` python
from twilio.rest import TwilioRestClient
# Your Account Sid and Auth Token from twilio.com/user/Account
account_sid = "AXCdalfalsdfjasdf....."
auth_token = "fabldjad......"
client = TwilioRestClient(account_sid, auth_token)

message = client.sms.messages.create(
    body = "My name is Rom Burgandy?",
    to = "+14159352345",        # Replace with your phone number
    from_=" + 14158141829")     # Replace with your Twilio number
print message.sid
```
### code 2
```python
from twilio import rest

# Your Account Sid and Auth Token form twilio.com/user/account
account_sid = "...."
auth_token = "...."
client = rest.TwilioRestClient(account_sid, auth_token)

message = client.sms.messages.create(
    body = "My name is Ron Burgandy?",
    to = "+16504555",           # Replace with your phone number
    from_="+16502854887")       # Replace with your Twilio number
print message.sid 
```

## Reading from a file
### step 1 read text from document
``` python
def read_text():
    quotes = open("/Users/storm/Downloads/movie_quotes.txt")
    contents_of_file = quotes.read()
    print(contents_of_file)
    quotes.close()
read_text()
```
### step 2 check text for curse words
``` python
import urllib
def read_text():
    quotes = open("/Users/storm/Downloads/movie_quotes.txt")
    contents_of_file = quotes.read()
    print(contents_of_file)
    quotes.close()
    check_profanity(contents_of_file)
    
def check_profanity(text_to_check):
    connection = urllib.urlopen("http://www.wdylike.appspot.com/?q=shot" + text_to_check)
    output = connection.read()
    print(output)
    connection.close()

read_text()
```
### step 3
``` python
import urllib

def read_text():
    quotes = open("/Users/storm/Downloads/movie_quotes.txt")
    contents_of_file = quotes.read()
    #print(contents_of_file)
    quotes.close()
    check_profanity(contents_of_file)

def check_profanity(text_to_check):
    connection = urllib.urlopen("http://www.wdylike.appspot.com/?q="+text_to_check)
    output = connection.read()
    #print(output)
    connection.close()
    if "true" in output:
        print("Profanity Alert!!")
    elif "false" in output:
        print("This document has no curse words!")
    else:
        print("Could not scan the document properly.")

read_text()
```
    

