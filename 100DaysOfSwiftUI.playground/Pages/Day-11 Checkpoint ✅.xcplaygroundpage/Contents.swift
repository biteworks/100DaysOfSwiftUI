//: [Previous](@previous)

import Foundation

struct Car {
    public let carModel: String
    public let seatNumber: Int
    public let maxGear: Int
    
    private(set) var currentGear: Int {
        didSet {
            if oldValue != currentGear{
                print("Der \(carModel) schaltet vom \(oldValue). in den \(currentGear). Gang")
            }
            else {
                print("Der \(carModel) ist schon im richtigen Gang")
            }
        }
    }
    
    init(carModel: String, seatNumber: Int, maxGear: Int) {
        self.carModel = carModel
        self.seatNumber = seatNumber
        self.maxGear = maxGear
        self.currentGear = 1
    }
    
    mutating func changeGear(to newGear: Int) {
        if newGear >= 1 && newGear <= maxGear {
            currentGear = newGear
        }
        else if newGear > maxGear{
            currentGear = maxGear
        }
        else if newGear < 1 {
            currentGear = 1
        }
    }
}

var nissanSilvia = Car(carModel: "Nissan Silvia 300", seatNumber: 4, maxGear: 6)
nissanSilvia.changeGear(to: 4)
nissanSilvia.changeGear(to: 1)
nissanSilvia.changeGear(to: 6)
nissanSilvia.changeGear(to: 6)
