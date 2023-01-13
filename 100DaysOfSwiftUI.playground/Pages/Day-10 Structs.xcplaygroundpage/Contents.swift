//: [Previous](@previous)

import Foundation

// Structs sind komplexe Datentypen
// Mit eigenen Variablen und Funktionen

struct Album {
    // Properties
    let title: String
    let artist: String
    let year: Int

    // Methods
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

// Instanzen mit Initialisierer
let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int
    
    // ohne mutating können wir keine Werte ändern,
    // da structs eigentlich Konstanten sind
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

// Instanzen der Structs müssen aber dann auch Variablen sein,
// wenn Daten geändert werde
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 12)
print(archer.vacationRemaining)
