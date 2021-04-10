//
//  WelcomeViewController.swift
//  AvtorizationApp
//
//  Created by Larisa on 04.04.2021.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var emoji: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(user.userName)!"
    }
    
}
