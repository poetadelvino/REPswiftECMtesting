// Fig. 8.2: main.swift
// Testing class Time
import Foundation

// displays a Time object in 24-hour and 12-hour formats
func displayTime(header: String, time: Time) {
    println(String(format: "%@\nUniversal time: %@\nStandard time: %@\n",
        header, time.universalDescription, time.description))
}

// create and initialize a Time object
let time = Time() // invokes Time default initializer
displayTime("AFTER TIME OBJECT IS CREATED", time)

// change time then display new time
println("SETTING A NEW TIME")
time.hour = 13
time.minute = 27
time.second = 6
displayTime("\nAFTER SETTING NEW HOUR, MINUTE, AND SECOND VALUES", time)

// attempt to set time with invalid values
println("ATTEMPTING TO SET INVALID PROPERTY VALUES")
time.hour = 99
time.minute = 99
time.second = 99
displayTime("\nAFTER ATTEMPTING TO SET INVALID VALUES", time)



/*************************************************************************
* (C) Copyright 1992-2015 by Deitel & Associates, Inc. and               *
* Pearson Education, Inc. All Rights Reserved.                           *
*                                                                        *
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
