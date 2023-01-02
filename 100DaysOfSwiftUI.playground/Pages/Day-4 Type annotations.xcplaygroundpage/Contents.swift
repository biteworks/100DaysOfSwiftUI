//: [Previous](@previous)

import Foundation

/* Type annotations sind wichtig,
 wenn man sicher sein will was zugewiesen werden kann.
*/ Vor allem wichtig, wenn man nicht inital Werte zuweisen möchte
let surname: String = "Lasso"
var score: Int = 0
let pi: Double = 3.141
var isAuthenticated: Bool = true


// Arrays
var albums: [String] = ["Red", "Fearless"]
// Empty Array
var teams: [String] = [String]()
var clues = [String]()

// Dicts
var user: [String: String] = ["id": "@twostraws"]

// Sets
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])


let username: String
username = "@twostraws"
print(username)

/*
 Bei enums erstellt man einen eigenen Typen, deshalb kann man bei
 der zweiten Zuweisung auch den "Typ" UIStyle weglassen
 */
enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
style = .dark
