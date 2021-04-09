//
//  GeneraleInfoViewController.swift
//  AvtorizationApp
//
//  Created by Larisa on 08.04.2021.
//

import UIKit

class GeneraleInfoViewController: UIViewController {
    
    @IBOutlet var generalInfoNavigationLabel: UINavigationItem!
    @IBOutlet var generaleInfoLabel: UILabel!
    
    var generale = ""
    var generaleNavigationLabel = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        generalInfoNavigationLabel.title = "USER: \(generaleNavigationLabel)"
        
        generaleInfoLabel.text = generale
        
    }


}
