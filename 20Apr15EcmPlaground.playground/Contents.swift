//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var marker = true

var counter = 1

while marker {
    println("test")
    counter++
    if counter > 5 {
        println("printed 5 times")
        break
    }
}

println("now testing another example")


var usernameOptional: String? = nil

if let username = usernameOptional {
    println("run this code")
}

else {
    println("username is nil")
}

if usernameOptional != nil {
    let username = usernameOptional!
}

//4 vars
//1 if statement
//1 optional

var myInteger: Int = 100

var myFloatNumber: Float = 100.1

var myBoolean: Bool = true

var myString: String = "this is a string"

var myStringOptional: String? = nil

var myString: String = ""

myString= myStringOptional!

println(myString)

myStringOptional

if myStringOptional == nil {
    println()
   println("the string hasn't been born")
}
else {
    println("it was born")
}

myStringOptional = "hello"






