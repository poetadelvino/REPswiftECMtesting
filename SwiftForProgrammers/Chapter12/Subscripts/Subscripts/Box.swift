// Fig. 12.x: Box.swift
// Box type with dimensions accessed via subscripts
import Foundation

public struct Box {
    private static let names = ["length", "width", "height"]
    private var dimensions = [0.0, 0.0, 0.0]
    
    // initializer
    public init(length: Double, width: Double, height: Double) {
        dimensions[0] = length
        dimensions[1] = width
        dimensions[2] = height
    }
    
    // subscript to access dimensions by their Int indices
    public subscript(index: Int) -> Double {
        get {
            precondition(index >= 0 && index < dimensions.count)
            return dimensions[index]
        }
        set {
            precondition(index >= 0 && index < dimensions.count)
            dimensions[index] = newValue
        }
    }

    // subscript to access dimensions by their String names
    public subscript(name: String) -> Double {
        get {
            precondition(
                Box.names.filter({$0 == name.lowercaseString}).count == 1)
            return dimensions[nameToIndex(name)]
        }
        set {
            precondition(
                Box.names.filter({$0 == name.lowercaseString}).count == 1)
            dimensions[nameToIndex(name)] = newValue
        }
    }
    
    // utility function to convert a name into a dimensions Array index
    private func nameToIndex(name: String) -> Int {
        var i = 0
        
        while i < Box.names.count {
            if name.lowercaseString == Box.names[i] {
                return i // name is in names at position i
            }
            
            ++i
        }
        
        return -1 // preconditions in subscript(name: String) prevent this
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