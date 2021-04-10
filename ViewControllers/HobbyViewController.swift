//
//  HobbyViewController.swift
//  AvtorizationApp
//
//  Created by Larisa on 09.04.2021.
//

import UIKit

class HobbyViewController: UIViewController {
    
    @IBOutlet var hobbyLabel: UILabel!
    
    var hobby: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyLabel.text = hobby.person.myHobby

    }
    



}
