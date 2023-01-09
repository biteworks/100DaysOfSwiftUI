//: [Previous](@previous)

import Foundation

// Funktion kann Funktion entgegen nehmen
// using ist das Keyword dafür "using functionname (parameter) -> Rückgabewert"
// über generator kann die Funktion dann innerhalb der Funktion aufgerufen werden
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

// Funktion wird als Closure übergeben
let rolls = makeArray(size: 10) {
    Int.random(in: 1...20)
}

print(rolls)

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

// Es kann auch ein Funktionsname übergeben werden
let newRolls = makeArray(size: 10, using: generateNumber)
print(newRolls)

// Es können auch mehrere Funktionen als Closure übergeben werden
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
