//: Playground - noun: a place where people can play

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




