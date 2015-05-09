// Fig. 10.6: main.swift
// Testing the CommissionEmployee-BasePlusCommissionEmployee hierarchy
import Foundation

// create and test a CommissionEmployee
let commissionEmployee =
    CommissionEmployee(name: "Sue Jones",
        grossSales:NSDecimalNumber(string: "10000.00"),
        commissionRate: NSDecimalNumber(string: "0.06"))

// get commission employee data
if let employee = commissionEmployee {
    println("COMMISSIONEMPLOYEE DATA VIA PROPERTIES")
    println("Name: \(employee.name)")
    println("Gross Sales: \(formatAsCurrency(employee.grossSales))")
    println("Commission Rate: \(formatAsPercent(employee.commissionRate))")
    println("Earnings: \(formatAsCurrency(employee.earnings))")
    
    employee.grossSales = NSDecimalNumber(string: "5000.00")
    employee.commissionRate = NSDecimalNumber(string: "0.10")
    println("\nAFTER UPDATING GROSSSALES AND COMMISSIONRATE")
    println(employee.description)
    println("Updated Earnings: \(formatAsCurrency(employee.earnings))")
}

// create and test a BasePlusCommissionEmployee
let basePlusCommissionEmployee =
    BasePlusCommissionEmployee(name: "Bob Lewis",
        grossSales:NSDecimalNumber(string:"5000.00"),
        commissionRate: NSDecimalNumber(string: "0.04"),
        baseSalary: NSDecimalNumber(string: "300.00"))

// get commission employee data
if let employee = basePlusCommissionEmployee {
    println("\nBASEPLUSCOMMISSIONEMPLOYEE DATA VIA PROPERTIES")
    println("Name: \(employee.name)")
    println("Gross Sales: \(formatAsCurrency(employee.grossSales))")
    println("Commission Rate: \(formatAsPercent(employee.commissionRate))")
    println("Base Salary: \(formatAsCurrency(employee.baseSalary))")
    println("Earnings: \(formatAsCurrency(employee.earnings))")
    
    employee.baseSalary = NSDecimalNumber(string: "1000.00")
    println("\nAFTER UPDATING BASESALARY")
    println(employee.description)
    println("Updated Earnings: \(formatAsCurrency(employee.earnings))")
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
