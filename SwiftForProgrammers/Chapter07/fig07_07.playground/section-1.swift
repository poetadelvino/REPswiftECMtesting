// Fig. 7.7: fig07_07.playground
// Dictionary properties count and isEmpty
var countryCodes = ["Argentina" : "ar", "Jamaica" : "jm"] 

// Use count property to determine number of key-value pairs in Dictionary
println("\ncountryCodes CONTAINS \(countryCodes.count) KEY-VALUE PAIRS")

// Use method isEmpty to determine if a contryCodes is empty
if countryCodes.isEmpty {
    println("\nDictionary countryCodes IS EMPTY")
} else {
    println("\nDictionary countryCodes IS NOT EMPTY")
}

countryCodes = [:] // empty the Dictionary using empty Dictionary literal

// Use method isEmpty to determine if a contryCodes1 is empty
println("\nAFTER ASSIGNING [:] TO countryCodes")
if countryCodes.isEmpty {
    println("Dictionary countryCodes IS EMPTY")
} else {
    println("Dictionary countryCodes IS NOT EMPTY")
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
