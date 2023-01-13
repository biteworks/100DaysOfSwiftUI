//: [Previous](@previous)

import Foundation

/*
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    // Dynamische Variable, die beim Aufruf berechnet wird
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}
*/

struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0

    // Dynamische Variable, die beim Aufruf berechnet wird
    // mit Getter und Setter
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}



var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 4
archer.vacationRemaining = 5
print(archer.vacationAllocated)
