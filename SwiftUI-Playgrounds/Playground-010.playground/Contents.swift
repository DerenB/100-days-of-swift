import Cocoa

var greeting = "Hello, playground"

// Struct example
// Capitalize the struct name
struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}


// Stored Struct property
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationTaken - vacationTaken
        }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

// Struct didSet
// Runs the code everytime the property changes
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

// Willset runs before the property changes
// Willset not used as often as didset
// Old value / new value shows the previous / new value
struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Bobby B")
app.contacts.append("Joey")


// Self Initializer
struct Player {
    let name: String
    let number: Int
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}
