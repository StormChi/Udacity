# Ruby Basics
### pring and puts
``` Ruby
print "Hello"
Hello => nil
```
```Ruby
puts "Hello"
Hello
=> nil
```

### Data Types
```Ruby
'Ruby ' + 'Rocks'
```
``` Ruby
"hello".length
#=> 5
```
``` Ruby
"hello".reverse
#=> "olleh"
```
``` Ruby
"stay calm".upcase
#=> "STAY CALM"
```

``` Ruby
"LOL funny joke".downcase
#=> "lol funny joke"
```
``` Ruby
-100.abs      #=> 100
95.abs        #=> 95
-9.9.abs      #=> 9.9
```
``` Ruby
3.1456.floor     #=> 3
9.9999999.floor  #=> 9
20.floor         #=> 20
```
``` Ruby
3.1415.round     #=> 3
20.9.round       #=> 21
3.1415.round(2)  #=> 3.15
0.3999.round(1)  #=> 0.4
```

### Variables
```Ruby
name = "jim"
puts "Welcome #{name}, it is nice to meet you!"
```
# Operators and Control Flow
_In Ruby, only `false` and `nil` are **falsey**, while everything else is **truthy**._

```Ruby
weather = "rainy"

if weather == "sunny"
  puts "Go for a run!"
end
```
``` Ruby
weather = "rainy"
puts "Go for a run!" if weather == "sunny"
```
#### Unless
``` Ruby
busy = true
unless busy                               # if i am **NOT** busy, then i **WILL** hang out with my friends. 
    puts "Hang out with your friends!"    # So, an unless statement checks if the condition is `false`, instead of `true`.
else
    puts "I have things to take care of :("
end
```
# Arrays & Hashes
### Arrays
```Ruby
friends = ["Mike", "Julia", "Georgia", "Walter"]

puts "I LIKE #{friends[0].upcase}!!!"
=> I LIKE MIKE!!!

puts "#{friends[3]} backwards is #{friends[3].reverse}"
=> Walter abckward is retlasW
```
``` Ruby
puts friends.length              # Output: 4

last_index = friends.length - 1
puts friends[last_index]         # Output: "Walter"

puts friends.first               # Output: Mike
puts friends.last                # Output: Walter
```
### Array Methods
#### reverse
``` Ruby
cheer = [2, 4, 6, 8, "Who do we appreciate?"]
puts cheer.reverse

=> ["Who do we appreciate?", 8, 6, 4, 2]

cheer

=> [2, 4, 6, 8, "Who do we appreciate?"]
```
``` Ruby
cheer = [2, 4, 6, 8, "Who do we appreciate?"]
cheer.reverse!
puts cheer

=> ["Who do we appreciate?", 8, 6, 4, 2]
```
#### sort
``` Ruby
numbers = [99, -4, 37, 22]
numbers.sort

=> [-4, 22, 37, 99]
```
``` Ruby
letters = ["z", "Z", "a", "A", "b"]
letters.sort

=> ["A", "Z", "a", "b", "z"]
```
``` Ruby
cheer = [2, 4, 6, 8, "Who do we appreciate?"]
cheer.sort

=> ArgumentError: comparison of Fixnum with String failed
```
#### push
``` Ruby
cheer = [2, 4, 6, 8, "Who do we appreciate?"]
cheer.push("Georgia")

=> [2, 4, 6, 8, "Who do we appreciate?", "Georgia"]

# same
cheer = [2, 4, 6, 8, "Who do we appreciate?"]
index = cheer.length
cheer[index] = "Georgia"
```
#### pop
``` Ruby
cats = ["Rocket", "Scout", "Juliet", "Momofuku"]
cats.pop

=> ["Rocket", "Scout", "Juliet"]
```

