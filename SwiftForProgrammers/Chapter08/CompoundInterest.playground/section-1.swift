// Fig. 8.14: CompoundInterest.playground
// Compound-interest calculations with NSDecimalNumber
import Foundation

// format a String right aligned in a field
func rightAlignedString(string: String, fieldWidth: Int) -> String {
    let spaces: Int = fieldWidth - countElements(string)
    let padding = String(count: spaces, repeatedValue: Character(" "))
    return padding + string
}

var amount = NSDecimalNumber(string: "1000.00") // amount before interest
let rate = NSDecimalNumber(string: "0.05") // interest rate

// display headers
println(String(format:"%@%@", "Year",
    rightAlignedString("Amount on deposit", 20)))

// calculate amount on deposit for each of five years
for year in 1...5 {
    // calculate new amount for specified year	
    amount = amount.decimalNumberByMultiplyingBy(
        rate.decimalNumberByAdding(NSDecimalNumber.one()))
    
    let formattedAmount = NSNumberFormatter.localizedStringFromNumber(
        amount, numberStyle: .CurrencyStyle)
    
    // display the year and the amount
    println(String(format: "%4d%@",
        year, rightAlignedString(formattedAmount, 20)))
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
