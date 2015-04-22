// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

var stop = false
var level: Double = 0.0
var totalMembers: Double = 0.0
var membersInThisLevel = 0.0

while stop == false
{
  //  members = members + pow (members, level)
    
    membersInThisLevel = membersInThisLevel + 1
    
    totalMembers = totalMembers + membersInThisLevel
    
  //  println("%d/n",members)
    
    if totalMembers >= 100 {
        stop = true
    }
    level = level + 1
}
println("hello, we finished")
totalMembers
level
//here's a test for github:
level + 1

