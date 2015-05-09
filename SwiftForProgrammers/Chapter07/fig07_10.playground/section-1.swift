// Fig. 7.10: fig07_10.playground
// Dictionary subscript operations, optionals and optional chaining.

// mutable Dictionary maps Roman numerals to their decimal equivalents
var romanNumerals = ["I" : 1, "II" : 2, "III" : 3,
    "V" : 5, "X" : 100] // 100 should be 10 -- we'll soon correct this..

// print table of Roman numerals and decimal values
println("\nDECIMAL EQUIVALENTS OF ROMAN NUMERALS")
println(romanNumerals)

// fix decimal equivalent on Roman numeral "X"
romanNumerals["X"] = 10
println("\nAFTER CORRECTING VALUE OF KEY \"X\"")
println(romanNumerals)

// use subscripting to add a new key-value pair
romanNumerals["L"] = 50
println("\nADDED NEW KEY-VALUE PAIR [\"L\" : 50]")
println(romanNumerals)

// use subscripting to assign nil to a key to remove its key-value pair
romanNumerals["III"] = nil
println("\nAFTER ASSIGNING NIL TO \"III\" TO REMOVE ITS KEY-VALUE PAIR")
println(romanNumerals)

// prints Optional(5)
// print "without forced unwrapping" and "with forced unwrapping"
println()
print("WITHOUT FORCED UNWRAPPING: ")
println(romanNumerals["V"]) // Optional because key may not exist?
print("   WITH FORCED UNWRAPPING: ")
println(romanNumerals["V"]!) // Optional because key may not exist?

// result of access attempt with subscripting could be nil if no item
let romanSymbol = "III"
if let decimalNumber = romanNumerals[romanSymbol] {
    println("\nDECIMAL: \(decimalNumber)")
} else {
    println("\nromanNumerals DOES NOT CONTAIN: \(romanSymbol)")
}

// use subscripting to add a new key-value pair to an empty Dictionary
var romanNumerals1: [String : Int] = [:] // new empty Dictionary
romanNumerals1["C"] = 100 // insert key-value pair into empty Dictionary
println("\nAFTER ADDING THE KEY-VALUE PAIR [\"C\" : 100] TO")
println("THE EMPTY romanNumerals1 DICTIONARY")
println("romanNumerals1 IS: \(romanNumerals1)")


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
