// Fig. 7.***
// Declaring and printing empty Dictionary objects.

// declare a mutable empty Dictionary with initializer syntax
var countryCodes1 = [String : String]()

// declare a mutable empty Dictionary with an empty dictionary literal
var countryCodes2: [String : String] = [:]

// declare empty Dictionary with a minimiumCapacity
var countryCodes3 = [String : String] (minimumCapacity: 10) // no literal

// following is an invalid declaration because type inference fails
// var countryCodes4 = [:]  // cannot infer type of Dictionary

// print each of the empty Dictionary objects
println("PRINT EMPTY DICTIONARY OBJECTS")
println("countryCodes1 is \(countryCodes1)")
println("countryCodes2 is \(countryCodes2)")
println("countryCodes3 is \(countryCodes3)")


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
