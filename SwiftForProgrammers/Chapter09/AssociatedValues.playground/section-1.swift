// AssociatedValues.playground
// Demonstrating associated values with the Optional<T> enum type

// accesses an Optional Int's Some and None constants
func displayOptionalViaEnumConstants(string: String, optionalInt: Int?) {
    switch optionalInt {
        case .Some(let value):
            println("The optional \(string) contains the Int \(value)")
        case .None:
            println("The optional \(string) contains nil")
    }
}

// create Optional Int values
let emptyInt1 = Optional<Int>() // uses init() to set emptyInt1 to nil
let emptyInt2: Int? = nil // uses init(nil) to set emptyInt2 to nil

let filledInt1 = Optional<Int>(7) // uses init(7) to set filledInt1 to 7
let filledInt2: Int? = 11 // uses init(11) to set filledInt2 to 11

// display Optional contents by accessing constants Some and None
displayOptionalViaEnumConstants("emptyInt1", emptyInt1)
displayOptionalViaEnumConstants("emptyInt2", emptyInt2)
displayOptionalViaEnumConstants("filledInt1", filledInt1)
displayOptionalViaEnumConstants("filledInt2", filledInt2)

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
