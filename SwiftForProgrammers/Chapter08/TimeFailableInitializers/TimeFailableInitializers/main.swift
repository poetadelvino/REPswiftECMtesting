// Fig. 8.6: main.swift
// Testing class Time's failable initializers
import Foundation

// attempt to create a Time object with failable designated initializer
if let time1 = Time(hour: 99, minute: 99, second: 99) {
    println("Time is \(time1.description)")
} else {
    println("time1: initializer failed due to invalid arguments")
}

// attempt to create a Time object with a failable convenience initializer
if let time2 = Time(hour: 99) {
    println("Time is \(time2.description)")
} else {
    println("time2: initializer failed due to invalid argument")
}

// create a Time object, then use it to initialize another Time object
if let time3 = Time(hour: 16, minute: 4, second: 0) {
    println("time3 is \(time3.description)")

    // attempt to create a Time object with an implicitly
    // unwrapped failable convenience initializer
    let time4 = Time(time: time3)
    println("time4 is \(time4.description)")
}

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
