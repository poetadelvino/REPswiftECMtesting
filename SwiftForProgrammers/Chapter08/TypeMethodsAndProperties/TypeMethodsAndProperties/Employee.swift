// Fig. 8.15: Employee.swift
// Employee class with a type property and type method
		
// global because classes do not yet support stored type properties
private var employeeCount: Int = 0

public class Employee {
    public var name: String
    
    // designated initializer
    public init(name: String) {
        self.name = name
        ++employeeCount // increment global private variable
        println("Employee init: \(name); count = \(Employee.getCount())")
    }
    
    // deinitializer
    deinit {
        --employeeCount // decrement global private variable
        println("Employee deinit: \(name); count = \(Employee.count)")
    }
    
    // computed read-only type property
    public class var count: Int {
        return employeeCount
    }
    
    // type method
    public class func getCount() -> Int {
        return self.count
    }
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