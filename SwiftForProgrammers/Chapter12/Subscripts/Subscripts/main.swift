// Fig. 12.x: main.swift
// Using subscripts to access Box dimensions

var box = Box(length: 3.0, width: 4.0, height: 5.0) // create a box

// show dimensions with Int subscript
println("CREATED A BOX WITH THE FOLLOWING DIMENSIONS")
println("box[0] = \(box[0])")
println("box[1] = \(box[1])")
println("box[2] = \(box[2])")

// set a dimension with the Int subscript
println("\nSetting box[0] to 10.0")
box[0] = 10.0

// set a dimension with the String subscript
println("Setting box[\"width\"] to 5.0")
box["width"] = 5.0

// show dimensions with String subscript
println("\nBOX DIMENSIONS AFTER SETTING LENGTH AND WIDTH")
print("box[\"length\"] = ")
println(box["length"])
print("box[\"width\"] = ")
println(box["width"])
print("box[\"height\"] = ")
println(box["height"])

var x = [1, 2, 3]

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