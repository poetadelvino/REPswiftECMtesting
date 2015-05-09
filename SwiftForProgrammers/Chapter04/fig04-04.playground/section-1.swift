// fig04-04: Converting numeric grades to letter grades with switch

// function to return a numeric grade's letter equivalent
func convertToLetterGrade(grade: Int) -> String {
    var letterGrade = "Invalid grade"
    
    switch grade {
    case 90...100: // grade was 90-100
        letterGrade = "A"
    case 80...89: // grade was between 80 and 89
        letterGrade = "B"
    case 70...79: // grade was between 70 and 79
        letterGrade = "C"
    case 60...69: // grade was between 60 and 69
        letterGrade = "D"
    case 0...59: // grade was between 0 and 59
        letterGrade = "F"
    default: // grade was out of range
        break
    }
    
    return letterGrade
}

println("Letter grade for 100: \(convertToLetterGrade(100))")
println("Letter grade for 95:  \(convertToLetterGrade(95))")
println("Letter grade for 89:  \(convertToLetterGrade(89))")
println("Letter grade for 70:  \(convertToLetterGrade(70))")
println("Letter grade for 63:  \(convertToLetterGrade(63))")
println("Letter grade for 32:  \(convertToLetterGrade(32))")
println("Letter grade for -1:  \(convertToLetterGrade(-1))")
println("Letter grade for 101: \(convertToLetterGrade(101))")


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
