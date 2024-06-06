import UIKit

var greeting = "Hello, playground"

// Class Example
class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}


class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func currentHours() {
        print("Hours: \(hours)")
    }
}

class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
}

// Class function override
class Manager: Employee {
    func work() {
        print("I worked \(hours) hours.")
    }
    
    override func currentHours() {
        print("Special Hours: \(hours)")
    }
}
