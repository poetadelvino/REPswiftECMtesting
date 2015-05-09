// Fig. 10.x: BasePlusCommissionEmployee.swift
// BasePlusCommissionEmployee class
import Foundation

public class BasePlusCommissionEmployee : CommissionEmployee {
    public var baseSalary: NSDecimalNumber!
    
    // failable initializer
    public init?(name: String, grossSales: NSDecimalNumber,
        commissionRate: NSDecimalNumber, baseSalary: NSDecimalNumber)
    {
        super.init(name: name, grossSales: grossSales,
            commissionRate: commissionRate)

        // validate baseSalary
        if baseSalary.compare(NSDecimalNumber.zero()) ==
            NSComparisonResult.OrderedAscending {
                
            return nil // baseSalary was invalid, so fail
        }
        
        self.baseSalary = baseSalary
    }
    
    // earnings computed property
    public override var earnings: NSDecimalNumber {
        return baseSalary.decimalNumberByAdding(super.earnings)
    }
    
    // description property to conform to Printable protocol
    public override var description: String {
        return String(format:"%@ %@\n%@: %@",
            "Base-Salaried", super.description, "Base Salary",
            formatAsCurrency(baseSalary))
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
