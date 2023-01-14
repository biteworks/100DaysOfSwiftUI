//: [Previous](@previous)

import Foundation

// Access control mit private um die Property von außen zu schützen
// So ist kein Zugriff von außen auf die Variable direkt möglich
struct BankAccount {
    private(set) var funds = 0

    mutating func deposit(amount: Int) {
        funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 10)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}

print(account.funds)

/*
 Swift provides us with several options, but when you’re learning you’ll only need a handful:
 
 Use private for “don’t let anything outside the struct use this.”
 
 Use fileprivate for “don’t let anything outside the current file use this.”
 
 Use public for “let anyone, anywhere use this.”
 
 Use private(set), wenn man die Property lesen, aber nicht schreiben können soll
*/
