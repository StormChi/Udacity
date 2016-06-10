# JavaScript Basics
### quick look
`$(".super-header-wrapper").html("<img style='width:100%' src='http://goo.gl/WCrBmS'>");`
`$("#header").append()`
`$("#main").append("xufeng ji");`
### String.replace()
``` JavaScript
[string].replace([old],[new])
var email = "cameron@udacity.com";
var newEmail = email.replace("udacity", "gamil");

console.log(email);
console.log(newEmail);
```
``` JavaScript
var awesomeThoughts = "My name is Cameron and I am AWESOME!";
var funThoughts = awesomeThoughts.replace("AWESOME!", "FUN");
$("#main").append(funThoughts);
```
### Mixing.replace() and .append()
``` JavaScript
var formattedName = HTMLheaderNmae.replace("%data%", name);
$("#header").append(formattedName);
```
### Format Data
``` JavaScript
name = "xufeng ji"
var formattedName = HTMLheaderName.replace("%data%", name);
var role = "Web Developer";
var formattedRole = HTMLheaderRole.replace("%data%", role);

$("#header").prepend(formattedRole);
$("#header").prepend(formattedName);
```
### String Manipulatoin
``` JavaScript
var s = "audacity";

var udacityizer = function(s) {  
    // Right now, the variable s === "audacity"
    // Manipulate s to make it equal to "Udacity"
    // Your code goes here!
    s = s[1].toUpperCase() + s.slice(2);
    
    return s;
};

console.log(udacityizer(s));
```
### Truthy/Falsy
  Truthy             |          Falsy
---------------------|-----------------------
  true               |          false
  non-zero numbers   |           0
  "Strings"          |           ""
  objects            |          undefined
  arrays             |           null
  functions          |           NaN(not a number)

### Arrays
``` JavaScript
var skills = ["awesomess", "programming", "teaching", "JS"];

$("#main").append(skills);
$("#main").append(skills[0]);
$("#main").append(skills.length);
```                    
### Array Manipulation
``` JavaScript
var sampleArray = [0,0,7];

var incrementLastArrayElement = function(_array) {
    var newArray = [];
    // Your code should make newArray equal to an array that has the same
    // values as _array, but the last number has increased by one.
    
    // For example:
    // _array = [1, 2, 3];
    // turns into:
    // newArray = [1, 2, 4];
    
    // Your code goes in here!
    newArray = _array.slice(0);
    var lastNumber = newArray.pop();
    newArray.push(lastNumber + 1);
    return newArray;
    
    // Don't delete this line!
    return newArray;
};

console.log(incrementLastArrayElement(sampleArray));
```
### String Manipulation 2
``` JavaScript
var name = "AlbERt EINstEiN";

function nameChanger(oldName) {
    var finalName = oldName;
    // my solution
    //one = finalName[0].toUpperCase() + finalName.slice(1, 6).toLowerCase();
    //two = finalName.slice(6).toUpperCase();
    //finalName = one + two;
    
    var names = oldName.split(" ");
    names[1] = names[1].toUpperCase();
    names[0] = names[0].slice(0,1).toUpperCase() + names[0].slice(1).toLowerCase();
    finalName = names.join(" ");
    
    
    return finalName;
};

console.log(nameChanger(name));
```                  
### Object Literal Notation
``` JavaScript
var skills = ["awesomeness", "programming", "teaching", "JS"];
var bio = {
    "name" : "James",
    "age" : 32,
    "skills" : skills
};
$("#main").append(bio.name);
```
### Dot and Bracket Notation
``` JavaScript
var skills = ["awesomeness", "programming", "teaching", "JS"];
var bio = {
    "name": "James",
    "age": 32,
    "skills": skills
};
// dot notation
bio.city = "Mountain View";
bio.email = "james.williams@udacity.com";

// bracket notation
bio["city"] = "Mountain View";
bio["email"] = "james@udacity.com";

$("#main").append(bio.city);
$("#main").append(bio["city"]);

```
### Practice With Objects
``` JavaScript
var work = {};
work.position = "Course Developer";
work.employer = "Udacity";
work.years = 0.3;

var education = {};
education["name"] = "Nova Southeastern University";
education["years"] = "2005 - 2013"
education["city"] = "Font Lauderdale, FL, US";;

$("#main").append(work["position"]);  // it's ok 
$("#main").append(education.name);
```              
### JSON （JavaScript Object Notation)
``` JSON
var education = {
  "schools": [
    {
      "name": "Eckerd College",
      "city": "Saint Petersburg, FL, US",
      "degree": "BA",
      "major": ["CompSci", "French"]
    },
    {
      "name": "Nova Southeastern University",
      "city": "Fort Lauderdale, FL, US",
      "degree": "Masters",
      "major": ["CompSci"]
    }
  ]
};
```
### Validating JSON 
``` JSON
var education = {
  "schools": [
    {
      "name": "Nova Southeastern University",
      "location": "Fort Lauderdale, FL",
      "degree": "Masters",
      "majors": ["CS"],
      "dates": 2013,
      "url": "http://example.com"
    },
    {
      "name": "Eckerd College",
      "location": "Saint Petersburg, FL",
      "degree": "BA",
      "majors": ["CS"],
      "dates": 2003,
      "url": "http://example.com"
    }
  ],
  "onlineCourses": [
    {
      "title": "JavaScript Syntax",
      "school": "Udacity",
      "date": 2014,
      "url": "http://www.udacity.com/course/ud804"
    }
  ]
}
```                  
### All the Resume Sections
``` JavaScript

var bio = {
  "name": "Jonh Doe",
  "role": "Web Developer",
  "contacts": {
    "mobile": "650-555-5555",
    "email": "john@example.com",
    "github": "johndoe",
    "twitter": "johndoe",
    "location": "San Francisco"
  },
  "welcomeMessage": "Welcome",
  "skills": [
    "awesomeness", "delivering things", "cryogenic sleep", "saving the universe"
  ],
  "bioPic": "images/fry.jpg"
}
var education = {
  "schools": [
    {
      "name": "Nova Southeastern University",
      "city": "Fort",
      "degree": "Masters",
      "majors": ["CS"],
      "dates": 2013,
      "url": "http://example.com"
    },
    {
      "name": "Eckerd College",
      "city": "Saint Petersburg, FL",
      "degree": "BA",
      "majors": ["CS"],
      "dates": 2003,
      "url": "http://example.com"
    }
  ],
  "onlineCourses": [
    {
      "title": "JavaScript Crash Course",
      "school": "Udacity",
      "dates": 2014,
      "url": "http://www.udacity.com/course/ud804"
    }
  ]
}

var work = {
  "jobs": [
    {
      "employer": "Planet Express",
      "title": "Delivery Boy",
      "dates": "January 3000 - Future"
      "description": "who moved my cheese"
    },
    {
      "employer": "Panucci's Pizza",
      "title": "Delivery Boy",
      "dates": "1998",
      "description": "who moved"
    }
  ]
}

var projects = {
  "projects": [
    {
      "title": "Sample Project 1",
      "dates": "2014",
      "description": "Who moved",
      "images": [
        "http://",
        "http://"
      ]
    }
  ]
}
```
###  If Statements
``` JavaScript
if(bio.skills.length > 0) {

  $("#header").append(HTMLskillsStart);
  
  var formattedSkill = HTMLskills.replace("%data%", bio.skills[0]); 
  $("#skills").append(formattedSkill);
  formattedSkill = HTMLskills.replace("%data%, bio.skills[1]");
  $("#skills").append(formattedSkill);
  formattedSkill = HTMLskills.replace("%data%", bio.skills[2]);
  $("#skills").append(formattedSkill);
  formattedSkill = HTMLskills.replace("%data%", bio.skills[3]);
  $("#skills").append(foramttedSkill);
}
```                   
### While Loops
``` JavaScript
var cameron = {};
cameron.job = "course dev";

var courses = 0;
while(cameron.job === "course dev") {
  makeCourse();
  courses = courses + 1;
}
```
                  
                  
                  
                  
                  