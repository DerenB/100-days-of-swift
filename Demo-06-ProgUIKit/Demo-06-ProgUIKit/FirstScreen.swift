//
//  ViewController.swift
//  Demo-06-ProgUIKit
//
//  Created by Deren Bozer on 6/25/24.
//

import UIKit

class FirstScreen: UIViewController {
    
    /// Creates instance of a button
    let nextButton = UIButton()
    
    
    /// Main Function
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Calls button function
        setupNextButton()
        
        /// Background color
        view.backgroundColor = .systemBackground
        
        /// View Title
        title = "First Screen"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    
    /// Settting up the Next Button
    func setupNextButton() {
        /// Adds button to view
        view.addSubview(nextButton)
        
        /// Sets button to filled button style
        nextButton.configuration = .filled()
        
        /// Button Background Color
        nextButton.configuration?.baseBackgroundColor = .systemPink
        
        /// Button Title
        nextButton.configuration?.title = "Next"
        
        /// Click Button Function
        nextButton.addTarget(self, action: #selector(goToNextScreen), for: .touchUpInside)
        
        /// Use Auto Layout
        /// Have to do this for every UI element
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        
        /// Constraints
        NSLayoutConstraint.activate([
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            nextButton.widthAnchor.constraint(equalToConstant: 200),
            nextButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    
    /// Function for Next Button Click
    @objc func goToNextScreen() {
        let nextScreen = SecondScreen()
        navigationController?.pushViewController(nextScreen, animated: true)
    }
}

