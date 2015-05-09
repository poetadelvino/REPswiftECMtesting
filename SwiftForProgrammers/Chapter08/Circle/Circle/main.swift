// main.swift
// Using read-write computed properties

// displays a Circle's data
func displayCircle(circle: Circle) {
    println("Radius: \(circle.radius)")
    println("Diameter: \(circle.diameter)")
    println("Circumference: \(circle.circumference)")
    println("Area: \(circle.area)")
}

let circle = Circle()
circle.radius = 10.0

println("CIRCLE AFTER SETTING RADIUS TO 10.0")
displayCircle(circle)

circle.diameter = 10.0
println("\nCIRCLE AFTER SETTING DIAMETER TO 10.0")
displayCircle(circle)

circle.area = 10.0
println("\nCIRCLE AFTER SETTING AREA TO 10.0")
displayCircle(circle)

circle.circumference = 10.0
println("\nCIRCLE AFTER SETTING CIRCUMFERENCE TO 10.0")
displayCircle(circle)


/*************************************************************************
* (C) Copyright 1992-2015 by Deitel & Associates, Inc. and               *
* Pearson Education, Inc. All Rights Reserved.                           *
*                           	                                         *
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
