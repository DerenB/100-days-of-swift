//
//  ViewController.swift
//  Demo-04-StoryboardDemo
//
//  Created by Deren Bozer on 6/12/24.
//

import UIKit

class ViewController: UIViewController {

    /// Label 1
    @IBOutlet weak var Label1: UILabel!
    
    /// Label 2
    @IBOutlet weak var Label2: UILabel!
    
    /// Greetings for label 1
    let greetings = ["Willkommen", "Welcome", "Bienvenido", "おかえりなさい", "Ласкаво просимо", "환영", "Bienvenue"]
    
    /// Count for label 2
    var clicks = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /// Button 1
    @IBAction func Button1(_ sender: Any) {
        // Create random number
        let randomNumber = Int.random(in: 0...6)
        
        // Change label 1 to item in array
        Label1.text = greetings[randomNumber]
    }
    
    /// Button 2
    @IBAction func Button2(_ sender: Any) {
        clicks += 1
        if clicks == 1 {
            Label2.text = "Clicked \(clicks) time"
        } else {
            Label2.text = "Clicked \(clicks) times"
        }
        
    }
}

