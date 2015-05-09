// Fig. 7.5: fig07_05.playground
// Metric weight abbreviations Dictionary

// Dictionary with common metric weight abbreviations
let metricWeightAbbreviations = ["mg" : "milligram",
    "g" : "gram",  "kg" : "kilogram", "mt" : "metric ton"]

func printDictionary<K, V>(dictionary: [K : V]) {
    for (key, value) in dictionary {
        println("\(key):  \(value)")
    }
}

// call the generic printDictionary function
println("PRINT METRIC WEIGHT ABBREVIATIONS WITH")
println("GENERIC printDictionary FUNCTION")
printDictionary(metricWeightAbbreviations)


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
