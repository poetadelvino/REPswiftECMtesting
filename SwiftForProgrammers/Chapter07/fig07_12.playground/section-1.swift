// Fig. 7.12: fig07_12.playground
// Example: Tokenizing a string and producing word counts
import Foundation

// format a String left aligned in a field width
func padString(string: String, # width: Int) -> String {
    let spaces: Int = width - countElements(string)
    let padding = String(count: spaces, repeatedValue: Character(" "))
    return string + padding
}

let sentence = "this is a sample sentence with several words " +
"this is another sample sentence with some different words"

// tokenize the sentence string
let words = sentence.componentsSeparatedByString(" ")

// summarize word counts
var wordCounts: [String : Int] = [:] // empty Dictionary

// summarize occurrences of each word
for word in words {
    // if word in Dictionary, increment count; otherwise, add it
    if let count = wordCounts[word] {
        wordCounts[word] = count + 1 // increment count
    } else {
        wordCounts[word] = 1 // add word to Dictionary
    }
}

// display the wordCounts contents
println("THE STRING \"\(sentence)\" CONTAINS:\n")
println(padString("WORD", width: 15) + "COUNT")

for (word, count) in wordCounts {
    println(String(format: "%@%5d", padString(word, width: 15), count))
}

println("\nNUMBER OF KEYS IN WORDCOUNTS DICTIONARY: \(wordCounts.count)")



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


