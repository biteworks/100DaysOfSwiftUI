//: [Previous](@previous)

import Foundation

/*
 Kopien sind nur Pointer auf diesselbe Klasse
 "Reference types"
 */

class User {
    var username = "Anonymous"

    // Deep Copy
    // Man kopiert die Eigenschaften
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()

var user2 = user1
user2.username = "Taylor"

var user3 = user1.copy()
user3.username = "Not Taylor"
print(user1.username)
print(user2.username)
print(user3.username)
