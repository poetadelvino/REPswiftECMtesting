// Fig. 10.11: CommissionEmployee.swift
// CommissionEmployee class derived from Employee
import Foundation

public class CommissionEmployee : Employee {
    public var grossSales: NSDecimalNumber!
    public var commissionRate: NSDecimalNumber!
    
    // failable initializer
    public init?(name: String, grossSales: NSDecimalNumber,
        commissionRate: NSDecimalNumber) {
        
        super.init(name: name) // initialize inherited property

        // if any arguments are invalid, return nil
        if (grossSales.compare(NSDecimalNumber.zero()) ==
                NSComparisonResult.OrderedAscending) ||
            (commissionRate.compare(NSDecimalNumber.zero()) ==
                NSComparisonResult.OrderedAscending) {
                
            return nil // an initializer argument was invalid, so fail
        }
        
        self.grossSales = grossSales
        self.commissionRate = commissionRate
    }
    
    // earnings computed property
    public override var earnings: NSDecimalNumber {
        return commissionRate.decimalNumberByMultiplyingBy(grossSales)
    }
    
    // description computed property
    public override var description: String {
        return String(format:"%@: %@\n%@: %@\n%@: %@",
            "Commission Employee", super.description,
            "Gross Sales", formatAsCurrency(grossSales),
            "Commission Rate", formatAsPercent(commissionRate))
    }
}



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
