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
