import Cocoa

var greeting = "Hello, playground"

let forecast = "Sunny"

// Switch Statement Example
switch forecast {
    case "sunny":
        print("it's sunny")
    case "rainy":
        print("It's rainy")
    default:
        print("Unknown weather")
}

// Ternary Operator
let hour = 23
print(hour < 12 ? "Before Noon" : "After Noon")
