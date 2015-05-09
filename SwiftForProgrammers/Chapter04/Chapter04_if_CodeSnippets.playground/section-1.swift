let studentGrade = 75

// if statement
if studentGrade >= 60 {
    println("Passed")
}


// if...else statement
if studentGrade >= 60 {
    println("Passed")
} else {
    println("Failed")
}


// nested if...else statement
if studentGrade >= 90 {
    println("A")
} else {
    if studentGrade >= 80 {
        println("B")
    } else {
        if studentGrade >= 70 {
            println("C")
        } else {
            if studentGrade >= 60 {
                println("D")
            } else {
                println("F")
            }
        }
    }
}

// nested if...else statement
if studentGrade >= 90 {
    println("A")
} else if studentGrade >= 80 {
    println("B")
} else if studentGrade >= 70 {
    println("C")
} else if studentGrade >= 60 {
    println("D")
} else {
    println("F")
}


// ternary conditional operator
println(studentGrade >= 60 ? "Passed" : "Failed")



















