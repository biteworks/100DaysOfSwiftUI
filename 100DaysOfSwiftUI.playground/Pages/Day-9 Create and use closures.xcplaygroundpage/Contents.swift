//: [Previous](@previous)

import Foundation

// Closures werden viel in SwiftUI gebraucht
// Daher muss man sie verstehen

func greetUser() {
    print("Hi there!")
}

greetUser()

// Kopie der Funktion ohne Klammern
var greetCopy = greetUser
greetCopy()

// Closure Expression
let sayHello = {
    print("Hi there!")
}

sayHello()

// Closures sind innerhalb der geschweiften Klammern
// Daher müssen auch Parameter und Rückgabewert innerhalb sein
// der "in" Hinweis beendet die Deklarierung von Eingabe und Ausgabewerten
let sayHello2 = { (name: String) -> String in
    "Hi \(name)!"
}


func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

// Bei einer Kopie der Funktion get der Parametername verloren
let data: (Int) -> String = getUserData
let user = data(1989)
print(user)


// Funktionen können Funktionen entgegen nehmen (wie bei JS sort, filter)
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}

// let captainFirstTeam = team.sorted(by: captainFirstSorted)
// print(captainFirstTeam)

// Closures und Funktionen in Funktionen lassen sich zu inline Funktionen kombinieren
// Ähnlich wie Callback Funktionen in JS
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})

print(captainFirstTeam)

let filterTeamByNameLength = team.filter { name in
    if name.count > 6 {
        return true
    }
    else {
        return false
    }
}

print(filterTeamByNameLength)
