// Fig. 10.x: Employee.swift
// Employee class that conforms to the Payable protocol via extensions
import Foundation

public class Employee {
    public var name: String!
    
    // failable initializer: if name is empty, return nil
    public init?(name: String) {
        if name.isEmpty {
            return nil
        }
        
        self.name = name
    }
    
    // earnings computed property
    public var earnings: NSDecimalNumber {
        return NSDecimalNumber.zero()
    }
    
    // description computed property
    public var description: String {
        return name
    }
}

// add Payable conformance to entire Employee hierarchy
extension Employee : Payable {
    var paymentAmount: NSDecimalNumber {
        return earnings
    }
}

// add Printable conformance to entire Employee hierarchy; empty
// extension because all Employee's already have a description property
extension Employee : Printable {}

/**************************************************************************
* (C) Copyright 1992-2014 by Deitel & Associates, Inc. and               *
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
