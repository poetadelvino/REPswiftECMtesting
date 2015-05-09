// Fig. 8.16: main.swift
// Demonstrating type methods and properties

// function that creates two Employees
func createEmployees() {
    // create two Employees; count should be 2
    let e1 = Employee(name: "Susan Baker")
    let e2 = Employee(name: "Bob Blue")
    
    // show that Employee count is 2 after creating two Employees
    println("\nEMPLOYEES AFTER INSTANTIATION")
    println("   via type property: \(Employee.count)")
    println("   via type method: \(Employee.getCount())\n")
}

// show that Employee count is 0 before creating Employees
println("EMPLOYEES BEFORE INSTANTIATION")
println("   via type property: \(Employee.count)")
println("   via type method: \(Employee.getCount())\n")

createEmployees()

// show that count is 0 after Employees' references counts go to 0
println("\nEMPLOYEES AFTER ARC")
println("   via type property: \(Employee.count)")
println("   via type method: \(Employee.getCount())")



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