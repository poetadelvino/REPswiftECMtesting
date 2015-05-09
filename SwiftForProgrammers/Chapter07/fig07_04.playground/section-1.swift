// Fig. 7.4: fig07_04.playground
// Iterating through a Dictionary with for...in and tuple decomposition.

let months = ["January" : 31, "February" : 29,
    "March" : 31, "April" : 30,  "May" : 31, "June" : 30,
    "July" : 31, "August" : 31, "September" : 30,
    "October" : 31, "November" : 30, "December" : 31]

// print table of month numbers and names
// use for...in to iterate through months Dictionary
println("ITERATING THROUGH A DAYS-PER-MONTH-IN-A-LEAP-YEAR DICTIONARY")
println("WITH FOR...IN DECOMPOSING KEY-VALUE PAIRS INTO THE TUPLE")
println("(monthName, monthDays), THEN PRINTING THE TUPLE ELEMENTS")
for (monthName, monthDays) in months {
    println("\(monthName):  \(monthDays)")
}

println()

// replace (key, value) form with tuple identifier like monthTuple,
// then say monthTuple.0 and monthTuple.1
println("ITERATING THROUGH A DAYS-PER-MONTH-IN-A-LEAP-YEAR DICTIONARY")
println("WITH FOR...IN USING A TUPLE NAME LIKE monthTuple")
println("THEN DECOMPOSING THE TUPLE WITH monthTuple.0 and monthTuple.1")
for monthTuple in months {
    println("\(monthTuple.0):  \(monthTuple.1)")
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
