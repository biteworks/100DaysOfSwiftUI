//: [Previous](@previous)

import Foundation

// Sets merken sich die Reihenfolge nicht
// Daher sind sie extrem schnell

// Set aus Array
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(people)

// Leeres Set
var actors = Set<String>()
actors.insert("Denzel Washington")
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")
actors.insert("Samuel L Jackson")
print(actors)

var searchFor = "Tom Cruise"

print("Enthält Liste der Schauspieler: \"\(searchFor)\"?: \(actors.contains(searchFor))")

// Umwandlung eines Arrays zum Set
let array = ["Wert 1","Wert 2", "Wert 3"]
print(array)
let arrayToSet = Set(array)
print(arrayToSet)
