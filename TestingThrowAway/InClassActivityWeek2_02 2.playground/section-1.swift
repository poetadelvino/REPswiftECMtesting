// Playground - noun: a place where people can play
// Lesson 05

// Complete these, in order, writing code under each TODO statement. Each statement calls for a function to be written, write each of them and then immediately call it after the function definition.

// TODO: Write a function that prints out "Hello world!" 10 times
func printHelloTenTimes(){
    for var i = 1; i  <= 10; i++ {
        println("hello \(i)")
    }
}
printHelloTenTimes()


// TODO: Write a function that prints out "Hit this line {number of iterations of the loop} times!" 20 times

func hitThisLine(){
    for var i = 1; i  <= 20; i++ {
        println("hit this line \(i) times")
    }
}
hitThisLine()
// TODO: Write a function that accepts a string as a parameter. Print "Hello {value of string}!"

func printThisLine(theString printThisString: String) {
    println("\(printThisString)")
}

printThisLine(theString: "Vincent")

// TODO: Write a function accepts a string optional. If the string optional exists, print "Hello {value of string}!". If it doesn't, print "Hello world!"

func printThisLineIfnotEmpty(theString printThisString: String?) {
    if let itWasBorn = printThisString {
    println("\(printThisString)")
    } else {
        println("Hello world")
    }
}

printThisLineIfnotEmpty(theString: "itExists")


// TODO: Write a function that takes one parameter, n, and returns an integer, the nth series in the fibonacci
// sequence. The first fibonacci number is 0, the second is 1, the third is 1, the fourth is 2, fifth is 3, sixth is 5, etc. fibonacci numbers at sequence n are the sum of the n-1 and n-2 fibonacci number.

import UIKit

var str = "Hello, playground"

func printFibonacci(nrOfSeries nth: Int)-> Int {
    var fibIs: Int = 0
    if (nth == 1) {
        //println("the \(n)th fibonacci nr is 0")
        return (0)
    } else if (nth == 2) {
        //println("the \(n)th fibonacci nr is 1")
        return (1)
    }
        
        
    else {
        fibIs = (printFibonacci (nrOfSeries: (nth - 1)) +
            printFibonacci(nrOfSeries: (nth - 2)))
        
        //println("the \(nth)th fibonacci nr is \(fibIs)")
        
        return (fibIs)
    }
    
}
printFibonacci(nrOfSeries: 5)



func reallyPrintFibonacci(nrOfSeries nth: Int) {
    if (nth == 1) {
        println("0")
    }
    else if (nth == 2) {
        println("1")
    }
    else {
        var reallyPrint = printFibonacci(nrOfSeries: nth)
        println(" \(reallyPrint)")
    }
}

reallyPrintFibonacci(nrOfSeries: 20)





// TODO: Write a function that calls the above function in order to print the sum of the first 20 fibonacci numbers.

// TODO: Write a function that takes in a number and prints out whether it is prime, composite or neither.

// TODO: Write a function that prints out each of the first 20 fibonacci numbers and whether they are prime. (e.g. 0 is not prime or composite, 1 is prime, etc)

// TODO: Write a function that takes in two numbers, a bill amount and an optional tip percentage (represented as a float, e.g. .2 = 20% tip). Return a tuple with the total bill amount and the tip amount (if included).

// TODO: Write a function that takes in a string and returns a string that is the reverse of the input. Append two strings using the + operator.

// BONUS TODO: Write a function that takes in an array of strings and a search term string. Return a boolean indicating whether the search term string exists in the array.

// BONUS TODO: Write a function that accepts a string and returns a boolean indicating whether a string is a palindrome (reads the same backwards or forwards).

// BONUS TODO: Write a function that takes in two strings and returns a boolean indicating whether the two strings are equal

// BONUS TODO: Write a function that accepts two parameters, a string and a function that accepts a string and returns a string. Print the result of passing the string into the function 10 times.
