//
//  GeneraleInfoViewController.swift
//  AvtorizationApp
//
//  Created by Larisa on 08.04.2021.
//

import UIKit

class GeneralInfoViewController: UIViewController {
    
    @IBOutlet var generalNavigationLabel: UINavigationItem!
    @IBOutlet var generaleInfoLabel: UILabel!
    
    @IBOutlet var photoImageView: UIImageView! {
        didSet {
            photoImageView.layer.cornerRadius = 15
        }
    }
    
    var generalNavigationLabelMediator = ""
    var generalInfoMediator = ""
    
    var imageMediator: UIImage?
    
    let userTarget = User.getUser()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let targetVC = segue.destination as! TargetViewController
        targetVC.myTarget = userTarget.person.target
        targetVC.myTargetNavigation = userTarget.person.name
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        generalNavigationLabel.title = "Общая информация: \(generalNavigationLabelMediator)"
        generaleInfoLabel.text = generalInfoMediator
        
        photoImageView.image = imageMediator

        
    }

}
