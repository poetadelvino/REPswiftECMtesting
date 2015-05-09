// Fig. 11.5: main.swift
// Stack test program.

// test push method with Stack<Double>
func testPush<T>(inout stack: Stack<T>, values: [T], name: String) {
    print("Pushing elements onto \(name): ")
    
    // push elements
    for value in values {
        print("\(value) ")
        stack.push(value)
    }
    
    println()
}

// test pop method with Stack<Double>
func testPop<T>(inout stack: Stack<T>, name: String) {
    print("Popping elements from \(name): ")
    
    // remove all elements from Stack
    while let value = stack.pop() {
        print("\(value) ")
    }
    
    println()
}

// Create and test a Stack<Double> 
let doubles = [1.1, 2.2, 3.3]
var doubleStack = Stack<Double>()
testPush(&doubleStack, doubles, "doubleStack")
testPop(&doubleStack, "doubleStack")

// Create and test a Stack<Int>
let integers = [1, 2, 3]
var intStack = Stack<Int>()
testPush(&intStack, integers, "intStack")
testPop(&intStack, "intStack")

// Create and test a Stack<Int>
let strings = ["apple", "banana", "cherry"]
var stringStack = Stack<String>()
testPush(&stringStack, strings, "stringStack")
testPop(&stringStack, "stringStack")

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