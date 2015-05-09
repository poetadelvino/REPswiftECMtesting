//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*

yupio

*/

var x = 0

func printit(name: String, takeMe: Int) {
    
    var xToPrint = takeMe
    println("hello \(name) \(xToPrint) times")
    x++
}


var nameToSend: String = "Vincent"
printit(nameToSend,18)
printit("vincenzo",28)
printit(nameToSend,38)
printit(nameToSend,48)

// function

func join(s1 firstString: String, s2 secondString: String, by joiner: String) {
    println("\(firstString) \(joiner) \(secondString)")
}

let firstName = "James"
let lastName = "Martinez"
let middleInitial = "D"

join(s1: firstName, s2: lastName, by: middleInitial)
