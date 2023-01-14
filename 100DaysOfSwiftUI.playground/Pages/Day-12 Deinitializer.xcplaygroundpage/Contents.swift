//: [Previous](@previous)

import Foundation

// Deinitializer sind optional
// Nimmt keine Parameter entgegen und gibt nichts zurück
// Wird ausgeführt, wenn die letzte Kopie zerstört wird

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}

print("Loop is finished!")
print("")
users.removeAll()
print("Array is clear!")
