//: [Previous](@previous)

import Foundation

/*
 Static heißt, dass Properties nicht einzigartig für jede
 Instanz sein. Sie gehören zum Struct
 Hier muss z.B. keine neue Instanz erzeugt werden,
 sondern kann direkt in das Struct geschrieben werden
 */
struct School {
    static var studentCount = 0

    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
}

School.add(student: "Taylor Swift")
print(School.studentCount)


struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}

print(AppData.version)

struct Employee {
    let username: String
    let password: String

    static let example = Employee(username: "cfederighi", password: "hairforceone")
}

print(Employee.example)

var employee = Employee(username: "user", password: "deedendzeb")
print(employee)
