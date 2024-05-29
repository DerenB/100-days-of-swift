import Cocoa

var greeting = "Hello, playground"

// Variable Type inference
var name: String = "Roy"
let pi: Double = 3.1415

// Array
var colors: [String] = ["Red", "Green"]

// Empty Array
var teams: [String] = [String]()


// ---------- Check point 2 ----------

// String Array
var games = ["Doom", "Skyrim", "Cyberpunk 2077", "Doom", "Skyrim", "Fallout 4", "Starcraft"]

// Array Count
var arrayCount = games.count

// Copy Array into a Set
let arraySet = Set(games)

// Set Count
var setCount = arraySet.count

// Print Results
print("Array Items: \(arrayCount)")
print("Unique Items: \(setCount)")
