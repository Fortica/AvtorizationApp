//
//  TargetViewController.swift
//  AvtorizationApp
//
//  Created by Larisa on 10.04.2021.
//

import UIKit

class TargetViewController: UIViewController {

    @IBOutlet var targetLable: UILabel!
    
    @IBOutlet var targetInfoNavigation: UINavigationItem!
    
    var myTarget = ""
    var myTargetNavigation = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        targetLable.text = myTarget
        targetInfoNavigation.title = "Цели: \(myTargetNavigation)"
        
    }
    


}
