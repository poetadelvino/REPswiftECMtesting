// Fig. 11.2: GenericFunction.playground
// Printing Array elements using a generic function.

// print an Array
func printArray<T>(values: [T]) {
    print("[")
    for i in 0..<values.count {
        i < values.count - 1 ? print("\(values[i]), ") : print(values[i])
    }
    print("]")
}

// create Arrays
let emptyIntegers: [Int] = []
let integers = [1, 2, 3, 4, 5, 6, 7]
let doubles = [1.1, 2.2, 3.3, 4.4]

print("emptyIntegers contains: ")
printArray(emptyIntegers) // pass empty Int Array
print("\nintegers contains: ")
printArray(integers) // pass Int Array
print("\ndoubles contains: ")
printArray(doubles) // pass Double Array
println()


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
