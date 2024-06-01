import Cocoa


// Function
func welcome() {
    print("Hello World")
}
welcome()


// Function with Parameters
func intro(fname: String, lname: String) {
    print("My name is \(fname) \(lname)")
}
intro(fname: "Joe", lname: "Mama")


// Function with Return statement
// Arrow assigns the return type
func sqRoot(num: Int) -> Int {
    return num * num
}
print(sqRoot(num: 2))

// Return multiple values with Tuples
func findUser() -> (firstName: String, lastName: String) {
    return (firstName: "Bob", lastName: "Boo")
}
let user = findUser()
print("User: \(user.firstName), \(user.lastName)")
