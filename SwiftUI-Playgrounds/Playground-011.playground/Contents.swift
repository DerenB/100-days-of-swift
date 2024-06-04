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
