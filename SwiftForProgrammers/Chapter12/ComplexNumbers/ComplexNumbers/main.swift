// Fig 12.x: main.swift
// Overloading operators for complex numbers.

// create two Complex numbers
var x = Complex(real: 2.1, imaginary: 4.2)
var y = Complex(real: 5.2, imaginary: -1.1)

println("Complex x: \(x)")
println("Complex y: \(y)\n")

println("CALCULATION RESULTS")
println("\(x) + \(y) = \(x + y)")
println("\(x) - \(y) = \(x - y)")
println("\(x) * \(y) = \(x * y)")

println("\nADDITION ASSIGNMENT OPERATOR")
x += y
println("After x += y, x = \(x)")



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
**************************************************************************/