# Biggest Solution
### solution 1
``` python
def biggest(a, b, c):
    if a > b:
        if a > c:
            return a
         else:               # c >= a > b
            return c
     else:                   # b >= a             
         if b > c:
             return b
         else:               # c >= b >= a 
             return c
```
### solution 2
``` python
def bigger (a, b):
    if a > b:
        return a 
    else:
        return b
       
def biggest(a, b, c):
    return bigger(bigger(a, b), c)
```
### solution 3
``` python
def biggest(a, b, c):
    return max(a, b, c)
```

# remove all spaces
``` python
# This code demonstrates a while loop with a "counting variable"
i = 0
while i < 10:
    print i
    i = i + 1
    
# This uses a while loop to remove all the spaces from a string of text
def remove_spaces(text):
    text_without_spaces = ''           # empty string for now
    while text != '':
        next_character = text[0]
        if next_character != ' ':      # that's a single spaces
            text_without_spaces = text_without_spaces + next_character
        text = text[1:]
    return text_without_spaces
print remove_spaces("hello my name is andy how are you?")
```
# Blastoff
``` Python
def countdown(n):
    while n > 0: 
        pirnt n 
        n = n - 1
    print "Blastoff!"
```
# Median
``` python
def bigger(a,b):
    if a > b:
        return a 
    else:
        return b
        
def biggest(a, b, c):
    return bigger(a, bigger(b, c))

def median(a, b, c):
    big = biggest(a, b, c)   
    if big == a:
        return bigger(b, c)
    if big == b:
        return bigger(a, c)
    else:
        return bigger(a, b)   
```
# Mad Lib
## Random Nouns
``` python
from random import randint
def random_noun():
    random_noun = randint(0, 1)
    if random_num == 0:
        return "sofa"
    else:
        return "llama"
```

## Random Verbs
``` python
from random import randint
def random_verb():
    random_num = randint(0, 1)
    if random_num == 0:
        return "run"
    else:
        return "kayak"
```
## Word Transformer
``` python
def word_transformer(word):
    if word == "NOUN":
        return random_noun()
    if word == "VERB":
        return random_verb()
    else:
        return word[0]
```
## Process Mad Lib
``` python
def process_madlib(madlib):
    processed = " "
    index = 0
    box_length = 4
    while index < len(madlib):
        frame = madlib[index : index + box_length]
        to_add = word_transformer(frame)
        processed += to_add
        if len(to_add) == 1:
            index += 1
        else:
            index += 4
    return processed
```
### whole version
``` python
# Let's put it all together. Write code for the function process_madlib, which takes in 
# a string "madlib" and returns the string "processed", where each instance of
# "NOUN" is replaced with a random noun and each instance of "VERB" is 
# replaced with a random verb. You're free to change what the random functions
# return as verbs or nouns for your own fun, but for submissions keep the code the way it is!

from random import randint

def random_verb():
    random_num = randint(0, 1)
    if random_num == 0:
        return "run"
    else:
        return "kayak"
        
def random_noun():
    random_num = randint(0,1)
    if random_num == 0:
        return "sofa"
    else:
        return "llama"

def word_transformer(word):
    if word == "NOUN":
        return random_noun()
    elif word == "VERB":
        return random_verb()
    else:
        return word[0]
        
def process_madlib(mad_lib):
    processed = ""
    # your code here
    # you may find the built-in len function useful for this quiz
    # documentation: https://docs.python.org/2/library/functions.html#len
    index = 0
    box_length = 4
    while index < len(mad_lib):
        frame = mad_lib[index : index + box_length]
        to_add = word_transformer(frame)
        processed += to_add
        if len(to_add) == 1:
            index += 1
        else:
            index += 4
    return processed
        
    
test_string_1 = "This is a good NOUN to use when you VERB your food"
test_string_2 = "I'm going to VERB to the store and pick up a NOUN or two."
print process_madlib(test_string_1)
print process_madlib(test_string_2)
```
#  Hava to Solve Problems
## Problem
``` python
# Given your birthday and the current date, calculate your age 
# in days. Compensate for leap days. Assume that the birthday 
# and current date are correct dates (and no time travel). 
# Simply put, if you were born 1 Jan 2012 and todays date is 
# 2 Jan 2012 you are 1 day old.

daysOfMonths = [ 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def isLeapYear(year):
    ##
    # Your code here. Return True or False
    # Pseudo code for this algorithm is found at
    # http://en.wikipedia.org/wiki/Leap_year#Algorithm
    ##

def daysBetweenDates(y1, m1, d1, y2, m2, d2):
    ##
    # Your code here.
    ##
    return days
```
## Solution step 1
``` python
###
### Define a simple nextDay procedure, that assumes
### every month has 30 days.
###
### For example:
###    nextDay(1999, 12, 30) => (2000, 1, 1)
###    nextDay(2013, 1, 30) => (2013, 2, 1)
###    nextDay(2012, 12, 30) => (2013, 1, 1)  (even though December really has 31 days)
###

def nextDay(year, month, day):
    """
    Returns the year, month, day of the next day.
    Simple version: assume every month has 30 days.
    """
    # YOUR CODE HERE
    if day < 30:
        return year, month, day + 1
    else:
        if month < 12:
            return year, month + 1, 1
        else:
            return year + 1, 1, 1
```
## step 2
``` python
# Define a daysBetweenDates procedure that would produce the
# correct output if there was a correct nextDay procedure.
#
# Note that this will NOT produce correct outputs yet, since
# our nextDay procedure assumes all months have 30 days
# (hence a year is 360 days, instead of 365).
# 

def nextDay(year, month, day):
    """Simple version: assume every month has 30 days"""
    if day < 30:
        return year, month, day + 1
    else:
        if month == 12:
            return year + 1, 1, 1
        else:
            return year, month + 1, 1
        
def daysBetweenDates(year1, month1, day1, year2, month2, day2):
    """Returns the number of days between year1/month1/day1
       and year2/month2/day2. Assumes inputs are valid dates
       in Gregorian calendar, and the first date is not after
       the second."""
        
    # YOUR CODE HERE!
    if year1 < year2:
        return True
    if year1 == year2:
        if month1 < month2:
            return True
        if month1 == month2:
            return day1 < day2
    return False 
    return

def test():
    test_cases = [((2012,9,30,2012,10,30),30), 
                  ((2012,1,1,2013,1,1),360),
                  ((2012,9,1,2012,9,4),3)]
    
    for (args, answer) in test_cases:
        result = daysBetweenDates(*args)
        if result != answer:
            print "Test with data:", args, "failed"
        else:
            print "Test case passed!"

test()
``` 