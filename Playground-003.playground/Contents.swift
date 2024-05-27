import Cocoa

// Create Empty Array
var emptyArray = Array<Int>()
var alternativeEmptyArray = [Int]()

// Create
// Can only contain 1 type of variable
var myArray = ["Red", "Orange", "Yellow"]
print(myArray[0])

// Append
myArray.append("Green")

// Remove
myArray.remove(at: 3)

// Remove All
emptyArray.removeAll()


// ---------


// Dictionary
let employee = [
    "name": "Joe",
    "city": "Detroit",
]

// Print dictionary value with default
print(employee["name", default: "Unknown"])


// ---------


// Set
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])


// ---------


// Enum
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// Shorthand
enum Weekday2 {
    case monday, tuesday, wednesday, thursday, friday
}
