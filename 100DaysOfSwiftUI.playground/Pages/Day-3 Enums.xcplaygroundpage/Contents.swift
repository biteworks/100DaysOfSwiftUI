//: [Previous](@previous)

import Foundation

//Enums sichern, dass man nur Werte vergibt, die passend sind.
// Man definiert quasi einen eigenen Typ und Xcode sagt direkt, welche Möglichkeiten es gibt

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday
print(day)

//Alternative Schreibweise
enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}

// Beim weiteren Zuweisen braucht man den Namen des Enums nicht mehr
var day2 = Weekday2.monday
day2 = .tuesday
day2 = .friday
