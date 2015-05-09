// Fig. 11.4: Stack.swift
// Generic Stack type that uses an Array to store elements.
public struct Stack<T> {
    private var elements: [T] = [] // Array to store the Stack's elements
    
    // push element onto stack
    public mutating func push(element: T) {
        elements.append(element)
    }
    
    // pop and return the top element, or nil if the Stack is empty
    public mutating func pop() -> T? {
        return !isEmpty ? elements.removeLast() : nil
    }
    
    // return the top element, or nil if the Stack is empty
    public var top: T? {
        return elements.last
    }
    
    // return true if the Stack is empty; otherwise, return false
    public var isEmpty: Bool {
        return elements.isEmpty
    }
}

/**************************************************************************
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