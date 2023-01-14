//: [Previous](@previous)

import Foundation

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
    }
}

class Corgi: Dog {
    override func speak() {
        print("I am a corgi, wuff wuff")
    }
}

class Poodle: Dog {
    override func speak() {
        print("I am a beautiful poodle, wuff wuff")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak() {
        print("Miau")
    }
}

var filou = Cat(legs: 4, isTame: true)
filou.speak()
