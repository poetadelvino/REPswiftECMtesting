// Card.swift
// Card struct represents a playing card as a Face and a Suit
public struct Card {
    public let face: Face
    public let suit: Suit
        
    // computed property that returns String representation of Card
    public var description: String {
        get {
            return face.description + " of " + suit.description
        }
    }

    // enumeration of the four suits in a standard deck of playing cards
    public enum Suit: String {
        case Hearts = "Hearts"
        case Diamonds = "Diamonds"
        case Clubs = "Clubs"
        case Spades = "Spades"
        
        // stored type property: Array of all Suit constants
        public static let values = [Hearts, Diamonds, Clubs, Spades]
        
        // returns the raw value of a given constant
        public var description: String {
            return self.rawValue
        }
    }

    // enumeration of the 13 faces in a standard deck of playing cards
    public enum Face: Int {
        case Ace = 1, Two, Three, Four, Five, Six, Seven, Eight, Nine,
            Ten, Jack, Queen, King
        
        // stored type property: Array of all Face constants
        public static let values = [Ace, Two, Three, Four, Five, Six,
            Seven, Eight, Nine, Ten, Jack, Queen, King]
        
        // stored type property: String representations of Face constants
        private static let nameStrings = ["Ace", "Two", "Three", "Four",
            "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack",
            "Queen", "King"]
        
        // returns a String from the nameStrings stored type property
        public var description: String {
            return Face.nameStrings[self.rawValue - 1]
        }
    }
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
*************************************************************************/
