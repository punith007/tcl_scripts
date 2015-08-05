#!/usr/bin/wish

set kit PDK
set tech 1271
set dot 3
set ictk no
set tool IC6
set myvar hello
set selected false

proc applyIt { } {
    global kit tech dot ictk tool myvar selected
    puts $kit
    puts $tech 
    puts $dot
    puts $ictk
    puts $tool
    puts $myvar
    puts $selected 
}

proc create_readme { } {
    global kit tech dot ictk tool myvar selected 
    if { $selected == "true" } {
        puts "--- Creating a README.txt"
        set file [open README.txt w 0750]
        puts $file $kit
        puts $file $dot
        puts $file $ictk
        puts $file $tool
        puts $file $myvar
        puts $file $tech
        close $file 
    }
}  

#checkbutton .c1 -text Bold -variable bold   -anchor w
#checkbutton .c2 -text Italics -variable italics  -anchor w
#label .l1 -foreground black -text "KIT" -relief ridge -borderwidth 8 -padx 10 -pady 10 -font {Helvetica -18 bold} -height 10 -width 35 -textvariable myvariable -justify left -underline 1

#button .b -text OK -command "applyIt" 

applyIt

########## Set Window Size #####################
set width 200
set height 350
set x [expr { ( [winfo vrootwidth  .] - $width  ) / 2 }]
set y [expr { ( [winfo vrootheight .] - $height ) / 2 }]
wm title . "SETUP ENVIRONMENT" 
wm geometry . ${width}x${height}+${x}+${y}
################################################

#The "sticky" option aligns items to the left (west) side
#grid .r1 -row 0 -column 0 -sticky w 
#grid .r2 -row 1 -column 0 -sticky w
#grid .r3 -row 2 -column 0 -sticky w
#grid .r4 -row 0 -column 1 -sticky w
#grid .r5 -row 1 -column 1 -sticky w
#grid .r6 -row 2 -column 1 -sticky w
#grid .r7 -row 3 -column 0 -sticky w
#grid .r8 -row 4 -column 0 -sticky w
#grid .r9 -row 5 -column 0 -sticky w
#grid .r10 -row 6 -column 0 -sticky w
#grid .r11 -row 7 -column 0 -sticky w
#
#grid .r12 -row 6 -column 1 -sticky w
#grid .r13 -row 7 -column 1 -sticky w
#grid .r14 -row 8 -column 1 -sticky w
#
#grid .b -row 9 -column 0 -columnspan 2 

######### Creating Frames ##############################
frame .f1 -relief groove -borderwidth 2 -padx 10 -pady 10  -height 100 -width 100
frame .f2 -relief groove -borderwidth 2 -padx 10 -pady 10  -height 100 -width 100
frame .f3 -relief groove -borderwidth 2 -padx 10 -pady 10  -height 100 -width 100
frame .f4 -relief groove -borderwidth 2 -padx 10 -pady 10  -height 100 -width 100
frame .f5 -relief flat -borderwidth 2 -padx 10 -pady 10  -height 80 -width 100
frame .f6 -relief flat -borderwidth 2 -padx 10 -pady 10  -height 100 -width 100
frame .f7 -relief flat -borderwidth 2 -padx 10 -pady 10  -height 100 -width 100

place .f1 -x 0 -y 20 
place .f2 -x 85 -y 20 
place .f3 -x 0 -y 122 
place .f4 -x 85 -y 122 
place .f5 -x 0 -y 230 
place .f7 -x 20 -y 270 
place .f6 -x 30 -y 310 
########################################################

###### Creating Widgets #########################################
grid [label .f1.l1 -text "KIT" -font {Helvetica -12 bold} -justify center] -row 0 -column 0 -sticky w
grid [label .f2.l2 -text "PROCESS" -font {Helvetica -12 bold} -justify center] -row 0 -column 0 -sticky w
grid [label .f3.l3 -text "DOT" -font {Helvetica -12 bold} -justify center] -row 0 -column 0 -sticky w
grid [label .f4.l4 -text "TOOL" -font {Helvetica -12 bold} -justify center] -row 0 -column 0 -sticky w

grid [radiobutton .f1.r1 -text PDK -variable kit -value PDK] -row 1 -column 0 -sticky w
grid [radiobutton .f1.r2 -text CTK -variable kit -value CTK] -row 2 -column 0 -sticky w
grid [radiobutton .f1.r3 -text CRF -variable kit -value CRF] -row 3 -column 0 -sticky w

grid [radiobutton .f2.r4 -text 1271 -variable tech -value 1271] -row 1 -column 0 -sticky w
grid [radiobutton .f2.r5 -text 1273 -variable tech -value 1273] -row 2 -column 0 -sticky w
grid [radiobutton .f2.r6 -text 1275 -variable tech -value 1275] -row 3 -column 0 -sticky w

grid [radiobutton .f3.r7 -text 3 -variable dot -value 3] -row 1 -column 0 -sticky w
grid [radiobutton .f3.r8 -text 6 -variable dot -value 6] -row 2 -column 0 -sticky w
grid [radiobutton .f3.r9 -text 9 -variable dot -value 9] -row 3 -column 0 -sticky w

grid [radiobutton .f4.r10 -text IC6 -variable tool -value IC6] -row 1 -column 0 -sticky w
grid [radiobutton .f4.r11 -text IC12 -variable tool -value IC12] -row 2 -column 0 -sticky w
grid [radiobutton .f4.r12 -text CDES -variable tool -value CDES] -row 3 -column 0 -sticky w

grid [label .f5.l5 -text "Version" -font {Helvetica -12 bold} -width 8 -justify center] -row 0 -column 0 -sticky w
grid [entry .f5.e -relief groove -borderwidth 2 -font {Helvetica -12 } -width 10 -textvariable myvar -justify right] -row 0 -column 1 -sticky w

grid [button .f6.b1 -text OK -command "applyIt"] -row 0 -column 0 -sticky w 
grid [button .f6.b2 -text Cancel] -row 0 -column 1 -sticky w -columnspan 2 

grid [checkbutton .f7.c1 -text "Create README.txt" -command "create_readme" -onvalue true -offvalue false -variable selected]

#################################################################

#grid .b -row 9 -column 0 -columnspan 2 
