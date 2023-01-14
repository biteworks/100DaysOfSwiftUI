//: [Previous](@previous)

import Foundation

// https://www.hackingwithswift.com/quick-start/beginners/checkpoint-5

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let filterEvenNumbers = luckyNumbers.filter { $0 % 2 != 0}
let sortedNumbers = filterEvenNumbers.sorted { $0 < $1 }
let mappedNumbers = sortedNumbers.map { "\($0) is a lucky number" }

for number in mappedNumbers {
    print(number)
}
