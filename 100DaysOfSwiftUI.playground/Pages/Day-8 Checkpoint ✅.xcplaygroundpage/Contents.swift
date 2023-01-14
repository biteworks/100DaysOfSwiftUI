//: [Previous](@previous)

import Foundation

enum ownSqrtError: Error {
    case toLow, toHigh, noRoot
}

func ownSqrt(of number: Int) throws -> Int {
    if number < 1 {
        throw ownSqrtError.toLow
    }

    if number > 10_000 {
        throw ownSqrtError.toHigh
    }
    let i = 1...10_000
    var result: Int = 0
    
    for j in i{
        var calc = j * j
        if calc == number {
            result = j
            break
        }
        else{
            continue
        }
    }
    return result
}

let base = 25

do{
    var result = try ownSqrt(of: base)
    print(result)
} catch ownSqrtError.toLow {
    print("Number is to low")
} catch ownSqrtError.toHigh {
    print("Number is to high")
} catch ownSqrtError.noRoot {
    print("No Root")
} catch {
    print("Something else went wrong")
}

