//: [Previous](@previous)

import Foundation

struct Player {
    let name: String
    let number: Int

    // number darf dann nicht mehr im Initializer sein
    init(name: String) {
        self.name = name.uppercased()
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan R")
print(player.name)
print(player.number)
