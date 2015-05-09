// Fig. 11.3: Maximum.playground
// Generic function maximum with a type constraint on its type parameter

// determines the largest of three Comparable objects
func maximum<T : Comparable>(x: T, y: T, z: T) -> T {
    var max = x // assume x is initially the largest
    
    if y > max {
        max = y // y is the largest so far
    }
    
    if z > max {
        max = z // z is the largest
    }
    
    return max // returns the largest object
}

println("Maximum of 3, 4 and 5 is \(maximum(3, 4, 5))")
println("Maximum of 6.6, 8.8 and 7.7 is \(maximum(6.6, 8.8, 7.7))")
print("Maximum of pear, apple, orange is ")
println(maximum("pear", "apple", "orange"))



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
