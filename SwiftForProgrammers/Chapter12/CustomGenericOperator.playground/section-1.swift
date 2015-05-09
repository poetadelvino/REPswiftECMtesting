// Fig. 12.x: CustomOperator.playground
// Creating an exponentiation operator for all SignedIntegerTypes

// declare new infix ** operator for exponentiation; precedence of 160 is
// higher than * and /; associativity is none>
infix operator ** {precedence 160 associativity none}

// define operator function that implements ** operator for integer types
func **<T: SignedIntegerType>(base: T, exponent: Int) -> T {
    precondition(exponent >= 0, "exponent must be >= 0")
    
    if exponent == 0 {
        return T(1)
    } else {
        var result = T(1)
        
        for _ in 1...exponent {
            result *= base
        }
        
        return result
    }
}

// testing the custom infix exponentiation operator **
let intValue = 2
let int64Value = Int64(10)

println("intValue ** 0 = \(intValue ** 0)")
println("int64Value ** 10 = \(int64Value ** 10)")
//println("int64Value ** 10 = \(int64Value ** -1)")



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
