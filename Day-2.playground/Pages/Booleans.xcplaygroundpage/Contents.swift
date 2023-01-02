//: [Previous](@previous)

import Foundation

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let isMultiple = 120.isMultiple(of: 3)

// Toggle Boolean
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// Toogle Funktion
var gameOver = false
print(gameOver)

gameOver.toggle()
print(gameOver)
