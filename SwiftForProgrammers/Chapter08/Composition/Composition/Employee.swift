// Fig. 8.11: Employee.swift
// Employee class composed of Strings and NSDates
import Foundation

public class Employee {
    public var firstName: String
    public var lastName: String
    public var birthDate: NSDate
    public var hireDate: NSDate
    
    // designated initializer
    public init(firstName: String, lastName: String,
        birthDate: NSDate, hireDate: NSDate) {
            
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
        self.hireDate = hireDate
    }
    
    // return String representation of an Employee
    public var description: String {
        let formatter = NSDateFormatter() // used to format dates
        formatter.timeStyle = NSDateFormatterStyle.NoStyle // no time
        formatter.dateStyle = NSDateFormatterStyle.LongStyle
        formatter.locale = NSLocale.currentLocale()
        
        return String(format: "%@, %@\nHired: %@\nBorn: %@",
            lastName, firstName, formatter.stringFromDate(hireDate),
            formatter.stringFromDate(birthDate))
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
