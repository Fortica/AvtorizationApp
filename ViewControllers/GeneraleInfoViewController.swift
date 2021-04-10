//
//  GeneraleInfoViewController.swift
//  AvtorizationApp
//
//  Created by Larisa on 08.04.2021.
//

import UIKit

class GeneraleInfoViewController: UIViewController {
    
    @IBOutlet var generalNavigationLabel: UINavigationItem!
    @IBOutlet var generaleInfoLabel: UILabel!
    
    @IBOutlet var photoImageView: UIImageView!
    
    var generaleNavigationLabelMediator = ""
    var generaleInfoMediator = ""
    
    var imageMediator: UIImage?
    
    let userTarget = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let targetVC = segue.destination as! TargetViewController
        targetVC.myTarget = userTarget.person.target
        targetVC.myTargetNavigation = userTarget.person.name
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        generalNavigationLabel.title = "Общая информация: \(generaleNavigationLabelMediator)"
        generaleInfoLabel.text = generaleInfoMediator
        
        photoImageView.image = imageMediator
        photoImageView.layer.cornerRadius = 15

        
    }

}
