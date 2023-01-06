//: [Previous](@previous)

import Foundation

/*
 Tuple-Rückgabe (name: type)
 Tuples haben den Vorteil, dass Swift weiß, ob Werte vorhanden sind.
 Wenn nicht genügend Werte zurückgegeben werden, wird ein Fehler ausgeworfen
 */
func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

// Die Tuple-Namen müssen nicht angegeben werden
func getUser2() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let user2 = getUser2()
print("Name: \(user2.firstName) \(user2.lastName)")

// Es geht noch reduzierter
func getUser3() -> (String, String) {
    ("Taylor", "Swift")
}

let user3 = getUser3()
print("Name: \(user3.0) \(user3.1)")

// Man kann die Variablen auch auf diese Weise zuweisen
// Destructering
let (firstName, lastName) = getUser3()
print("Name: \(firstName) \(lastName)")

// Wenn man nur einen Wert braucht
let (firstName2, _) = getUser3()
