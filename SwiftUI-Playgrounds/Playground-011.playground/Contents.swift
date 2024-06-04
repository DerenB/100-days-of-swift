import Cocoa

var greeting = "Hello, playground"

// Static property
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
}


// ---------- Checkpoint 6 ----------

struct CarInfo {
    let carMake: String
    let carModel: String
    let carSeats: Int
    var currentGear: Int = 0
    
    mutating func gearUp() {
        if currentGear == 6 {
            print("At highest gear")
        } else {
            currentGear += 1
        }
    }
    
    mutating func gearDown() {
        if currentGear == 1 {
            print("At lowest gear")
        } else {
            currentGear -= 1
        }
    }
    
    mutating func neutral() {
        currentGear = 0
        print("Car in neutral")
    }
}
