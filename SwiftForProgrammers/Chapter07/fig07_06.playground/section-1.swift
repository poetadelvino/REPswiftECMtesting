// Fig. 7.6: fig07_06.playground
// Dictionary equality operators == and !=
let countryCapitals1 =
    ["Belgium" : "Brussels", "Haiti" : "Port-au-Prince"]
println("\ncountryCapitals1: \(countryCapitals1)")

// different Dictionary from countryCapitals1
let countryCapitals2 = ["Nepal" : "Kathmandu", "Uruguay" : "Montevideo"]
println("countryCapitals2: \(countryCapitals2)")

// same contents as Dictionary countryContents1 but a different object
let countryCapitals3 =
    ["Belgium" : "Brussels", "Haiti" : "Port-au-Prince"]
println("countryCapitals3: \(countryCapitals3)")
    
// use == operator
if countryCapitals1 == countryCapitals3 {
    println("countryCapitals1 has the same contents as countryCapitals3")
}

// use != operator
if countryCapitals1 != countryCapitals2 {
    print("countryCapitals1 does not have the same contents ")
    println("as countryCapitals2")
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
