import Cocoa

// Strings
let actor = "Denzel Washington"

let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

// String mit Anführungszeichen
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// Multiline String

let movie = """
A day in
the life of an
Apple engineer
"""

// Länge eines Strings
let nameLength = actor.count
print(nameLength)

// Uppercase String
print(result.uppercased())

// Auf Prefix und Suffix prüfen
print(movie.hasPrefix("A day"))
print(filename.hasSuffix(".jpg"))
