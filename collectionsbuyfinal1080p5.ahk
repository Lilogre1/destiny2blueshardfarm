#NoEnv
#KeyHistory 0
#SingleInstance Force
SetBatchLines -1
ListLines Off
SendMode Input

Alt & 1::
SetTimer, start_farm_loop_active, 1
return

Alt & 2::
SetTimer, start_dismantle_loop, 2000
return


Alt & 3::
SetTimer, start_click_loop_rapid, 100
return

start_click_loop_rapid() {
     Click
     Sleep 50
}

start_dismantle_loop() {
     Send {f down}
     Sleep, 2000
     Send {f up}
     Sleep, 200
}

start_farm_loop_active()
{
MouseMove, 732, 885
Sleep, 200
MouseGetPos, xpos1, ypos1
     Loop, 5    
     {
      MouseGetPos, xpos, ypos
          Loop, 9 
          {
               Click down
               Sleep, 4000
               Click up
               Sleep, 100
          }
     MouseMove, xpos+105, ypos
     Sleep 200
     }
Send {esc down}
Sleep 200
Send {esc up}
Sleep 200
Send {d down}
Sleep 200
Send {d up}
Sleep 200
Send {d down}
Sleep 200
Send {d up}
Sleep 300
MouseMove, 1413, 285, 30
Sleep 300

     Loop, 5    
     {
      Sleep 200
      MouseGetPos, xpos2, ypos2
      MouseGetPos, xpos, ypos
      MouseMove, xpos+93, ypos, 30
      Sleep 200
          Loop, 9 
          {
                    Send {f down}
                    Sleep, 2000
                    Send {f up}
                    Sleep, 200
          }
     MouseMove, xpos2, ypos2+114, 40
     Sleep 200
     }
Send {esc down}
Sleep 200
Send {esc up}
Sleep 1500
MouseMove, 1377, 183, 30
Sleep 200
Loop, 16 
          {
               Click down
               Sleep, 300
               Click up
               Sleep, 300
          }
MouseMove, 1568, 183, 30
Sleep 200
Loop, 4 
          {
               Click down
               Sleep, 300
               Click up
               Sleep, 300
          }
Send {i down}
Sleep 200
Send {i up}
Sleep 200
Send {a down}
Sleep 200
Send {a up}
Sleep 200
Send {a down}
Sleep 200
Send {a up}
Sleep 400
MouseMove, 831, 318, 40
Sleep 500
Click down
Sleep 300
Click up
Sleep 500
MouseMove, 342, 840, 40
Sleep 500
Click down
Sleep 300
Click up
Sleep 500
MouseMove, 1824, 615, 40
Sleep 500
Click down
Sleep 300
Click up
Sleep 500
MouseMove, xpos1, ypos1
}

Alt & `::
SetTimer, start_dismantle_loop, off
SetTimer, start_click_loop_rapid, off
SetTimer, start_farm_loop_active, off
return