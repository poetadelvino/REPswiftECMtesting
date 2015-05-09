// Fig. 7.9: fig07_09.playground
// Dictionary keys and values properties.

let winterMonths =
    [12 : "December", 1 : "January", 2 : "February", 3 : "March"]

// print the winterMonths Dictionary
println("winterMonths DICTIONARY IS")
println(winterMonths)
    
// print winterMonth's keys
println("\nwinterMonths KEYS ARE:")
for key in winterMonths.keys {
    println(key)
}

// print winterMonths values
println("\nwinterMonths VALUES ARE:")
for value in winterMonths.values {
    println(value)
}

// use for...in to iterate through the iterable keys collection
println("\nfor...in ITERATING THROUGH keys COLLECTION")
    
for monthNumber in winterMonths.keys { 
    println("winterMonths[\(monthNumber)] \(winterMonths[monthNumber]!)")
}

println()
    
// convert iterable keys collection to an Array and process it
println("ARRAY OF winterMonths.keys")
let winterMonthsNumbersArray = [Int](winterMonths.keys)
for monthNumber in winterMonthsNumbersArray {
    println("\(monthNumber)  ")
}

println()
    
// convert iterable values collection to an Array and process it
println("ARRAY OF winterMonths.values")
let winterMonthsNamesArray = [String](winterMonths.values)
for monthName in winterMonthsNamesArray {
    println("\(monthName)  ")
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


