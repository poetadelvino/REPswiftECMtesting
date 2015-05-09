// Fig. 7.11: fig07_11.playground
// Dictionary methods updateValue, removeValueForKey, removeAll

// Start with empty Dictionary
var countryCodes : [String : String] = [:]

// method updateValue
// add a new key-value pair with method updateValue
// handle optional return of previous value (of type String?)
if let previous = countryCodes.updateValue("za", forKey: "South Africa") {
    println("PREVIOUS VALUE FOR KEY \"South Africa\" WAS \(previous)")
} else {
    println("KEY \"South Africa\" IS NEW")
}

println("countryCodes: \(countryCodes)\n")

// add a second key-value pair 
// "ar" is incorrect for "Australia" should be "au" -- we'll fix below
// handle optional return of previous value (of type String?)
if let previous = countryCodes.updateValue("ar", forKey: "Australia") {
    println("PREVIOUS VALUE FOR KEY \"Australia\" WAS \(previous)")
} else {
    println("KEY \"Australia\" IS NEW")
}

println("countryCodes: \(countryCodes)\n")

// update existing value (correct Australia's code from "ar" to "au"
// handle optional return of previous value (of type String?)
println("CORRECTED \"Australia\" COUNTRY CODE FROM \"ar\" TO \"au\"")
if let previous = countryCodes.updateValue("au", forKey: "Australia") {
    println("PREVIOUS VALUE FOR KEY \"Australia\" WAS \"\(previous)\"")
} else {
    println("KEY \"Australia\" IS NEW")
}

println("countryCodes: \(countryCodes)\n")

// method removeValueForKey
// remove existing key-value pair
// handle optional return (of type String?)
if let previous = countryCodes.removeValueForKey("South Africa") {
    print("KEY-VALUE PAIR \"South Africa\": ")
    println("\"\(previous)\" WAS REMOVED")
} else {
    println("KEY \"South Africa\" WAS NOT IN DICTIONARY")
}

println("countryCodes: \(countryCodes)\n")

// attempt to remove non-existing value
// handle nil return
if let previous = countryCodes.removeValueForKey("Paraguay") {
    println("KEY-VALUE PAIR \"Paraguay\": \"\(previous)\" WAS REMOVED")
} else {
    println("KEY \"Paraguay\" IS NOT IN DICTIONARY")
}

println("countryCodes: \(countryCodes)\n")

// method removaAll
countryCodes.removeAll(keepCapacity: true) 
if countryCodes.isEmpty {
    println("DICTIONARY countryCodes IS EMPTY")
}

println("countryCodes: \(countryCodes)\n")


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
