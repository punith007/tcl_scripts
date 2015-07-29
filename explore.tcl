#!/usr/intel/bin/tclsh

### Comments in tcl
# This is the commented line

### Multiple line comments
if 0 {
 these are commented lines
 this forms the second line
}

### Printing in tcl
puts "hello world"

### Setting variables in tcl
set a "hello world"
set b {hello world}
set c hello
puts $a
puts $b
puts $c

### Arguments 
puts $argc
puts $argv
puts $argv0

###Environment variables
puts $env(USER)

### Command substitution
puts [expr 1+6+9]

### Lists 
set mylist {red blue green}
puts [lindex $mylist 2]

### Associate Arrays
set marks(english) 80
set marks(maths) 90
puts $marks(english)
puts $marks(maths)

### -N- check how to print/puts multiple variables in one line

### Variables
set var "10"
set result1 [expr $var/9]
set result2 [expr $var/9.0]
puts $result1
puts $result2
#-N- Try tcl_precison variable also

### Decisions
set a 1
set b [expr $a==1 ? 20 : 30]
puts $b

if { $a==1 } {
  puts "a is 1"
}

set grade B
switch $grade {
 A {
    puts "Well Done!"
   }
 B {
    puts "Not Bad"
   }
 c {
    puts "Need to work more"
   }
 default {
    puts "Grade not yet disclosed"
   } 
}

### Loops
set a 0 
while { $a < 5 } {
  puts $a
  incr a 
}

for { set a 10 } { $a < 20 } { incr a } {
  puts $a 
}

### -N- Try constructs like break and continue 

 
##### Future Additions ######  
