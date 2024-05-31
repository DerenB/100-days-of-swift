import Cocoa

var greeting = "Hello, playground"

// Up to and including 5, (1,2,3,4,5)
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

// Up to 5, (1,2,3,4)
for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

var lyric = "gonna"
for _ in 1...5 {
    lyric += " fart"
}


// ---------- Checkpoint 3 ----------
print("---------- Checkpoint 3 ----------")

for i in 1...100 {
    if (i.isMultiple(of: 3)) && (i.isMultiple(of: 5)) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else {
        print(i)
    }
}
