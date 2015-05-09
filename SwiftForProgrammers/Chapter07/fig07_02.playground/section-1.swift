// Fig. 7.2: fig07_02.playground
// Declaring and printing mutable and immutable Dictionary objects.

// declare immutable Dictionary with traditional generic type syntax
// and a Dictionary literal with one key-value pair
let countryCodes1: Dictionary<String, String> = ["Argentina" : "ar"]

// declare mutable Dictionary with shorthand type syntax
// and a Dictionary literal with multiple key-value pairs
var countryCodes2: [String : String] = ["Finland" : "fi",
    "South Africa" : "za", "Nepal" : "np"]

// declare mutable Dictionary with type inference and a Dictionary literal
var countryCodes3 = ["Argentina" : "ar"] // prefer this approach

// print with Dictionary description property (from Printable protocol)
// Printable protocol's description property returns String
// invoke description property explicitly
println("PRINT DICTIONARIES USING THE DESCRIPTION PROPERTY EXPLICITLY")
println("countryCodes1: \(countryCodes1.description)")
println("countryCodes2: \(countryCodes2.description)")
println("countryCodes3: \(countryCodes3.description)")

println()

// invoke description property implicitly
println( "PRINT DICTIONARIES USING THE DESCRIPTION PROPERTY IMPLICITLY")
println("countryCodes1: \(countryCodes1)")
println("countryCodes2: \(countryCodes2)")
println("countryCodes3: \(countryCodes3)")


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
