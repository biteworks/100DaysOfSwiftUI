//: [Previous](@previous)

import Foundation

// Arrays
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])
print("\n")
print(beatles)
beatles.append("Adrian")
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")

for beatle in beatles{
    print(beatle)
}
print("\n")
var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])
print("\n")
// Man kann auch ohne den Hinweis "Array" ein Array aus Strings erstellen
var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print("Anzahl der Alben: \(albums.count)")

// Entfernen von Werten
print("\n")
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)

characters.removeAll()
print(characters.count)

// Auf Werte prüfen
print("\n")
let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print("Enthält die Bond-Filmliste \"Frozen\"?: \(bondMovies.contains("Frozen"))")
print("Enthält die Bond-Filmliste \"Spectre\"?: \(bondMovies.contains("Spectre"))")

// Liste umdrehen
print("\n")
let presidents = ["Bush", "Obama", "Trump", "Biden"]
print(presidents)
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
