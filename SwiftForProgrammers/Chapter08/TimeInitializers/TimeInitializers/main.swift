// Fig. 8.4: main.swift
// Testing class Time's designated and convenience initializers
import Foundation

// displays a Time object in 24-hour and 12-hour formats
func displayTime(header: String, time: Time) {
    println(String(format:"%@\n   %@\n   %@",
        header, time.universalDescription, time.description))
}

// create and initialize Time objects
let t1 = Time() // 00:00:00
let t2 = Time(hour: 2) // 02:00:00
let t3 = Time(hour: 21, minute: 34) // 21:34:00
let t4 = Time(hour: 12, minute: 25, second: 42) // 12:25:42
let t5 = Time(time: t4) // 12:25:42
let t6 = Time(hour: 99, minute: 99, second: 99) // invalid values

println("OBJECT: INITIALIZED WITH")
displayTime("t1: all default arguments", t1)
displayTime("t2: hour; default minute and second", t2)
displayTime("t3: hour and minute; default second", t3)
displayTime("t4: hour, minute and second", t4)
displayTime("t5: Time object t4", t5)
displayTime("t6: all invalid arguments (no validation)", t6)


/*************************************************************************
* (C) Copyright 1992-2015 by Deitel & Associates, Inc. and               *
* Pearson Education, Inc. All Rights Reserved.                           *
*                           	                                             *
* DISCLAIMER: The authors and publisher of this book have used their     *
* best efforts in preparing the book. These efforts include the          *
* development, research, and testing of the theories and programs        *
* to determine their effectiveness. The authors and publisher make       *
* no warranty of any kind, expressed or implied, with regard to these    *
* programs or to the documentation contained in these books. The authors *
* and publisher shall not be liable in any event for incidental or       *
* consequential damages in connection with, or arising out of, the       *
* furnishing, performance, or use of these programs.                     *
*************************************************************************/
