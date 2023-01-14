//: [Previous](@previous)

import Foundation

class Vehicle {
    let isElectric: Bool

    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

/*
 Wenn eine Kindklasse eine neue Property hinzufügt,
 dann muss die Eltern-Property auch im initializer vorkommen
 --> super.init(isElectri: isElectric
 */
class Car: Vehicle {
    let isConvertible: Bool

    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

let teslaX = Car(isElectric: true, isConvertible: false)
print(teslaX.isElectric)
print(teslaX.isConvertible)
