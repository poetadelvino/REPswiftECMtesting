// Fig. 8.13: main.swift
// Composition demonstration.
import Foundation

let dateFormatter = NSDateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd" // "2015-07-04" is July 4, 2015

let birthDate = dateFormatter.dateFromString("1969-07-20")!
let hireDate = dateFormatter.dateFromString("2014-10-15")!
let employee = Employee(firstName: "Bob", lastName: "Blue",
    birthDate: birthDate, hireDate: hireDate)
println(employee.description)

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
