// Fig. 10.13: main.swift
// Polymorphic Employee hierarchy
import Foundation

// create a SalariedEmployee
let salariedEmployee = SalariedEmployee(name: "John Smith",
    weeklySalary: NSDecimalNumber(string: "800.00"))!

// create a CommissionEmployee
let commissionEmployee =
    CommissionEmployee(name: "Sue Jones",
        grossSales:NSDecimalNumber(string: "10000.00"),
        commissionRate: NSDecimalNumber(string: "0.06"))!

// create and test a BasePlusCommissionEmployee
let basePlusCommissionEmployee =
    BasePlusCommissionEmployee(name: "Bob Lewis",
        grossSales:NSDecimalNumber(string:"5000.00"),
        commissionRate: NSDecimalNumber(string: "0.04"),
        baseSalary: NSDecimalNumber(string: "300.0"))!

println("EMPLOYEES PROCESSED INDIVIDUALLY\n")
print("\(salariedEmployee.description)\nEarned: ")
println(formatAsCurrency(salariedEmployee.earnings))
print("\n\(commissionEmployee.description)\nEarned: ")
println(formatAsCurrency(commissionEmployee.earnings))
print("\n\(basePlusCommissionEmployee.description)\nEarned: ")
println(formatAsCurrency(basePlusCommissionEmployee.earnings))
println()

// create initially empty Array of Employees
var employees: [Employee] = []

// initialize array with Employees
employees.append(salariedEmployee)
employees.append(commissionEmployee)
employees.append(basePlusCommissionEmployee)

println("\nEMPLOYEES PROCESSED POLYMORPHICALLY\n")

// display each Employee's description and earnings properties
for currentEmployee in employees {
    println(currentEmployee.description)
    
    // if BasePlusCommissionEmployee, increase base salary
    if let employee = currentEmployee as? BasePlusCommissionEmployee {
        employee.baseSalary =
            employee.baseSalary.decimalNumberByMultiplyingBy(
                NSDecimalNumber(string: "1.1"))
        print("New base salary with 10% increase is: ")
        println(formatAsCurrency(employee.baseSalary))
    }
    
    println("Earned: \(formatAsCurrency(currentEmployee.earnings))\n")
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
