// main.swift
// Card shuffling and dealing.

// format a String left aligned in a field
func formatString(var string: String, fieldWidth: Int) -> String {
    let spaces: Int = fieldWidth - countElements(string)
    let padding = String(count: spaces, repeatedValue: Character(" "))
    string += padding
    return string
}

var myDeckOfCards = DeckOfCards()

myDeckOfCards.shuffle() // place Cards in random order
println("SHUFFLED DECK OF CARDS")
var i = 0 // used to determine when to start new output line

while let card = myDeckOfCards.dealCard() { // deal and unwrap Card
    ++i
    print(formatString(card.description, 19)) // display Card
    
    if (i % 4 == 0) { // move to next line after every fourth card
        println()
    }
}

println("\nDESCRIPTIONS AND RAW VALUES OF THE FACE ENUM CONSTANTS")
for face in Card.Face.values {
    println("\(face.description) = \(face.rawValue)")
}

println("\nRAW VALUES OF THE SUIT ENUM CONSTANTS")
for suit in Card.Suit.values {
    println("\(suit.rawValue)")
}

println("\nCREATING FACES FROM RAW VALUES")
for i in 1...14 {
    if let face = Card.Face(rawValue: i) {
        println("\(i) is \(face.description)'s raw value")
    } else {
        println("There is no Face constant for the raw value \(i)")
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
