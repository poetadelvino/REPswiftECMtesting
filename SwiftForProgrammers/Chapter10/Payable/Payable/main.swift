// Fig. 10.x: main.swift
// Processing Payables (Invoices and Employees) polymorphically
import Foundation

// create Array of Payables
var payableObjects: [Payable] = [
    SalariedEmployee(name: "John Smith",
        weeklySalary: NSDecimalNumber(string: "800.00"))!,
    Invoice(partNumber: "01234", partDescription: "seat",
        quantity: 2, price: NSDecimalNumber(string: "375.00"))!,
    CommissionEmployee(name: "Sue Jones",
        grossSales: NSDecimalNumber(string: "10000.00"),
        commissionRate: NSDecimalNumber(string: "0.06"))!,
    Invoice(partNumber: "56789", partDescription: "tire",
        quantity: 4, price: NSDecimalNumber(string: "79.95"))!,
    BasePlusCommissionEmployee(name: "Bob Lewis",
        grossSales:NSDecimalNumber(string:"5000.00"),
        commissionRate: NSDecimalNumber(string: "0.04"),
        baseSalary: NSDecimalNumber(string: "300.0"))!
]

println("INVOICES AND EMPLOYEES PROCESSED POLYMORPHICALLY\n")

// display each Payable's description and paymentAmount properties
for currentPayable in payableObjects {
    println(currentPayable) // implicitly uses description property
    let paymentAmount = formatAsCurrency(currentPayable.paymentAmount)
    println("Payment Due: \(paymentAmount)\n")
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
