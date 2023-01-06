//: [Previous](@previous)

import Foundation

// durch den Unterstrich vor dem Parameter müssen wird beim Nutzen der Funktion
// nicht den Parameternamen angeben
func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)
print(result)

// Man kann auch neue Namen vergeben
// Wenn man statt dem Unterstrich ein Wort vergibt
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
