import Cocoa

// Closure example
let sayHello = { (name: String) -> String in
    "Hi \(name)"
}

// Convert Function to Closure:

// Function
func pay(user: String, amount: Int) {
    // code
}

// Closure
let payment = { (user: String, amount: Int) in
    // code
}

// Closure with parameter, no return
let paymento = { (user: String) in
    print("Paying \(user) ...")
}

// Closure with parameter, return variable
let paymentos = { (user: String) -> Bool in
    print("Paying \(user) ...")
    return true
}

// Closure with no parameter, has return variable
let paymentomos = { () -> Bool in
    print("Paid the user")
    return true
}
