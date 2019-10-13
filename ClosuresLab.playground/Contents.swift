import UIKit

// Question One

// Write a function named applyKTimes that takes an integer K and a closure and calls the closure K times. The closure will not take any parameters and will not have a return value.


func applyKTimes(_ num: Int, action: () -> ()) {
    for _ in 0..<num {
        action()
    }
}


// Uncomment out the following lines to check your solution

var myVal = 0

applyKTimes(5) {
    myVal += 1
}
assert(myVal == 5, "Expected myVal to be five, but was \(myVal)")

// Question Two

// Write a function called multiples(of:in) that takes in an array of Ints and returns all of the Ints that are a multiple of a given number n.  Use filter in your function.

//func multiples(of: Int, inOf: [Int]) -> [Int] {
//    var multiplesArray = [Int]()
//    for num in inOf {
//        if num % of == 0 {
//            multiplesArray.append(num)
//        }
//    }
//    return multiplesArray
//}

func multiples(of: Int, inOf: [Int]) -> [Int] {
    return inOf.filter { $0 % of == 0 }
}


// Uncomment out the following lines to check your solution

let numbers = [1, 2, 3, 4, 6, 8, 9, 3, 12, 11]
let expectedOutputTwo = [3, 6, 9, 3, 12]
let outputTwo = multiples(of: 3, inOf: numbers)
assert(outputTwo == expectedOutputTwo, "Expected output to be \(expectedOutputTwo), but found \(outputTwo)")
print(outputTwo)

// Question Three

// Write a function called largestValue(in:) that finds the largest Int in an array of Ints. Use reduce to solve this exercise.

func largestValue(inArr: [Int]) -> Int {

    var largeNum = inArr[0]
    inArr.reduce(0) { x, y in
        if y >= x {
            largeNum = y
        }
        return y
    }
    return largeNum
        
    //    var largeNum = inArr[0]
    //    for num in inArr {
    //        if num >= largeNum {
    //            largeNum = num
    //        }
    //    }
    //    return largeNum
    //    return inArr.reduce(0, { x, y in x + y })
}


// Uncomment out the following lines to check your solution
// ????? not sure how to use reduce ????

let moreNumbers = [4, 7, 1, 9, 6, 5, 6, 9]
let expectedOutputThree = 9
let outputThree = largestValue(inArr: moreNumbers)
assert(outputThree == expectedOutputThree, "Expected output to be \(expectedOutputThree), but found \(outputThree)")
print(largestValue(inArr: moreNumbers))
//let numMax = moreNumbers.reduce(moreNumbers.min(), moreNumbers.max())

// Question Four

// Write a function called sortedNamesByLastName(in:) that takes in an array of tuples of type (String, String) and returns an array of tuples sorted by last name.

func sortedNamesByLastName(inArr: [(first: String, last: String)]) -> [(String, String)] {
    return inArr.sorted { $0.last < $1.last }
}
// Uncomment out the following lines to check your solution

let firstAndLastTuples = [
    ("Johann S.", "Bach"),
    ("Claudio", "Monteverdi"),
    ("Duke", "Ellington"),
    ("W. A.", "Mozart"),
    ("Nicolai","Rimsky-Korsakov"),
    ("Scott","Joplin"),
    ("Josquin","Des Prez")
]

print(sortedNamesByLastName(inArr: firstAndLastTuples))
let expectedOutputFour = [
    ("Johann S.", "Bach"),
    ("Josquin","Des Prez"),
    ("Duke", "Ellington"),
    ("Scott","Joplin"),
    ("Claudio", "Monteverdi"),
    ("W. A.", "Mozart"),
    ("Nicolai","Rimsky-Korsakov")
]

let outputFour = sortedNamesByLastName(inArr: firstAndLastTuples)
assert(outputFour.elementsEqual(expectedOutputFour, by: { $0 == $1 }), "Expected output to be \(expectedOutputFour), but found \(outputFour)")


// Question Five

// Write a function called sumOfSquaresOfOddNumbers(in:) that returns the sum of the squares of all the odd numbers from an array of Ints.  Use filter, map and reduce in your function.

func sumOfSquaresOfOddNumbers(inArr: [Int]) -> Int {
    let oddNumbers = inArr.filter { $0 % 2 != 0 }
    let squaredOdds = oddNumbers.map { $0 * $0 }
    return squaredOdds.reduce(0, +)
}
// Uncomment out the following lines to check your solution

let evenMoreNumbers = [1, 2, 3, 4, 5, 6]
let expectedOutputFive = 35 // Explanation: 1 + 9 + 25 -> 35
let outputFive = sumOfSquaresOfOddNumbers(inArr: evenMoreNumbers)
assert(outputFive == expectedOutputFive, "Expected output to be \(expectedOutputFive), but found \(outputFive)")
print(sumOfSquaresOfOddNumbers(inArr: evenMoreNumbers))
