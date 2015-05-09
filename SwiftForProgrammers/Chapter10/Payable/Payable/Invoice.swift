// Fig. 10.12: Invoice.java
// Invoice class that adopts the Payable protocol
import Foundation

public class Invoice : Payable, Printable {
    let partNumber: String!
    let partDescription: String!
    var quantity: Int!
    var price: NSDecimalNumber!
    
    // initializer
    public init?(partNumber: String, partDescription: String,
        quantity: Int, price: NSDecimalNumber) {
            
        if partNumber.isEmpty || partDescription.isEmpty ||
            quantity < 0 || (price.compare(NSDecimalNumber.zero()) ==
            NSComparisonResult.OrderedAscending) {
            return nil
        }
        
        self.partNumber = partNumber
        self.partDescription = partDescription
        self.quantity = quantity
        self.price = price
    }
    
    // conform to the Payable protocol
    public var paymentAmount: NSDecimalNumber {
        let quantity = NSDecimalNumber(string: self.quantity.description)
        return quantity.decimalNumberByMultiplyingBy(price)
    }
    
    // conform to the Printable protocol
    public var description: String {
        let pricePerItem = NSNumberFormatter.localizedStringFromNumber(
            price, numberStyle: .CurrencyStyle)
        return String(format: "%@:\n%@: %@ (%@) \n%@: %d\n%@: %@",
            "Invoice", "Part number", partNumber, partDescription,
            "Quantity", quantity, "Price per item", pricePerItem)
    }
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