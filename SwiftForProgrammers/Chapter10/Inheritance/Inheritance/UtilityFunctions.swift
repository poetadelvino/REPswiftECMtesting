// Fig. 10.3: UtilityFunctions.Swift
// Locale-specific currency and percentage formatting functions
import Foundation

// convert a numeric value to localized percent string
public func formatAsPercent(number: NSNumber) -> String {
    let percentFormatter = NSNumberFormatter()
    percentFormatter.numberStyle = .PercentStyle
    percentFormatter.minimumFractionDigits = 2
    percentFormatter.locale = NSLocale.currentLocale()
    return percentFormatter.stringFromNumber(number)!
}

// convert a numeric value to localized currency string
func formatAsCurrency(number: NSNumber) -> String {
    return NSNumberFormatter.localizedStringFromNumber(
        number, numberStyle: .CurrencyStyle)
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
