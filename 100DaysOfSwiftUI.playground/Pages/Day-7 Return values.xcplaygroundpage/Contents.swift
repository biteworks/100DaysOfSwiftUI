//: [Previous](@previous)

import Foundation

func rollDice(diceSides: Int = 6) -> Int {
    return Int.random(in: 1...diceSides)
}

let result = rollDice(diceSides: 20)
print(result)

// Reduzierte Version ohne Return
func areLettersIdentical(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted()
}

var firstString = "Hello"
var secondString = "Hello"

print(areLettersIdentical(string1: firstString, string2: secondString))


func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 2, b: 4)
print(c)
