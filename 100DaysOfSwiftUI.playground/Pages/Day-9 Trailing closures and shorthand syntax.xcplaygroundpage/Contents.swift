//: [Previous](@previous)

import Foundation

// Swift hat die Möglichkeit Code kompakter zu schreiben
// Das schauen wir uns in diesem Kapitel an

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

/*
Erste Version, Typen müssen nicht angegeben werden, da der Code bei falschen Input nicht baut
 
let captainFirstTeam = team.sorted { name1, name2 in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
}*/

// Reduziertere Version
// Swift benennt die Variablen automatisch
let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true
    } else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}

print(captainFirstTeam)

// Wenn Funktion nicht komplex, dann kann noch weiter reduziert werden
let reverseTeam = team.sorted { $0 > $1 }
print(reverseTeam)

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)
