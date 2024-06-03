import Cocoa

var greeting = "Hello, playground"

// Function Error Throwing

// Create Error Cases:
enum PasswordError: Error {
    case short, obvious
}


// Function, add "throw" keyword
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 {
        throw PasswordError.short
    }
    
    if password == "12345" {
        throw PasswordError.obvious
    }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// Test function error catching
// "Try" must be written before call function that might cause error

let testString = "123477hhhhhh"

do {
    let result = try checkPassword(testString)
    print("Password Rating: \(result)")
} catch PasswordError.short {
    print("Password is too short, try again")
} catch PasswordError.obvious {
    print("Password is too simple, try again")
} catch {
    print("There was an error")
}



// ---------- Checkpoint 4 ----------

// Error Enum
enum SquareError: Error {
    case low, high, odd
}

// Square Root Function
func squareRoot(num: Int) throws -> Int {
    if num < 1 {
        throw SquareError.low
    }
    
    if num > 10000 {
        throw SquareError.high
    }
    
    var result = -1
    
    for number in 1...100 {
        var testNumber = number * number
        
        if testNumber == num {
            result = number
            break
        }
    }
    
    if result == -1 {
        throw SquareError.odd
    }
    
    return result
}

// Test Function
let testNumber = 0

do {
    let result = try squareRoot(num: testNumber)
    print("Square Root: \(result)")
} catch SquareError.low {
    print("Test value too low, must be at least 1")
} catch SquareError.high {
    print("Test value too high, must be less than 10,000")
} catch SquareError.odd {
    print("Test value has no even square root")
} catch {
    print("There was an error")
}
