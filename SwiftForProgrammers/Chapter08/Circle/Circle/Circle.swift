// Circle.swift
// Circle class with read-write computed properties
import Darwin

public class Circle {
    public var radius: Double = 0.0
    
    // computes diameter or sets radius based on new diameter
    public var diameter: Double {
        get {
            return 2.0 * radius
        }
        set {
            radius = newValue / 2.0
        }
    }
    
    // computes circumference or sets radius based on new circumference
    public var circumference: Double {
        get {
            return M_PI * diameter
        }
        set {
            radius = newValue / (2.0 * M_PI)
        }
    }

    // computes area or sets radius based on new area
    public var area: Double {
        get {
            return M_PI * radius * radius
        }
        set {
            radius = sqrt(newValue / M_PI)
        }
    }
}


/*************************************************************************
* (C) Copyright 1992-2015 by Deitel & Associates, Inc. and               *
* Pearson Education, Inc. All Rights Reserved.                           *
*                           	                                         *
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
