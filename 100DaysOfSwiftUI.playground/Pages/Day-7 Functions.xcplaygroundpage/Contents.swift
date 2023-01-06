//: [Previous](@previous)

import Foundation

func showWelcome(name: String = "Dein Name") {
    print("Welcome \(name) to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

showWelcome(name: "Tobias")
showWelcome()

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

// Die Reihenfolge der Parameter ist wichtig
printTimesTables(number: 5, end: 20)
