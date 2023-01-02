//: [Previous](@previous)

import Foundation

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let luggageCode = "1" + "2" + "3" + "4" + "5"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// Variablen in Strings einbauen
let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

// Zahlen in Strings
let number = 11
var missionMessage = "Apollo " + String(number) + " landed on the moon."
missionMessage = "Apollo \(number) landed on the moon."

// Rechnungen in Strings
print("5 x 5 is \(5 * 5)")
