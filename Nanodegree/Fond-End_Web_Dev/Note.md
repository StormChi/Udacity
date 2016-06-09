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
  functions          |           NaN
                     |
                  
                  
                  
                  
                  
                  
                  
                  
                  