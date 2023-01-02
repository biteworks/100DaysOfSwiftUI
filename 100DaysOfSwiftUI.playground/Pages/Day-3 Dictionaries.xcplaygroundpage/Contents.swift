//: [Previous](@previous)

import Foundation

// Dictionaries mit Keys
let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
print(employee["name"])
print(employee["job"])
print(employee["location"])
// Um auch einen Wert auszugeben, wenn das Schlüsselwort nicht vergeben ist
print(employee["name", default: "Unknown"])
print(employee["job", default: "Unknown"])
print(employee["location", default: "Unknown"])


let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

// Leeres Dict und dann Werte hinzufügen
// Typsicherheit über String: Int --> Key ist String und Value ist Int
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
print(archEnemies)
