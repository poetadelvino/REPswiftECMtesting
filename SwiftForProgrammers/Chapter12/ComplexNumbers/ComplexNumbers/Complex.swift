// Complex.swift
// Defining operators for a custom type Complex
import Foundation

public struct Complex: Printable {
    public var real: Double = 0.0
    public var imaginary: Double = 0.0
    
    public var description: String {
        return String(format: "(%.1f %@ %.1fi)", real,
            imaginary < 0 ? "-" : "+", abs(imaginary))
    }
}

// overload the addition operator
public func +(x: Complex, y: Complex) -> Complex {
    return Complex(real: x.real + y.real,
        imaginary: x.imaginary + y.imaginary)
}

// overload the subtraction operator
public func -(x: Complex, y: Complex) -> Complex {
    return Complex(real: x.real - y.real,
        imaginary: x.imaginary - y.imaginary)
}

// overload the multiplication operator
public func *(x: Complex, y: Complex) -> Complex {
    return Complex(real: x.real * y.real - x.imaginary * y.imaginary,
        imaginary: x.real * y.imaginary + y.real * x.imaginary)
}

// overload the addition assignment operator
public func +=(inout left: Complex, right: Complex) {
    left = left + right
}

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
**************************************************************************/