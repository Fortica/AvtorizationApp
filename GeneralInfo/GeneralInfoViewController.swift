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
    
    var user = User.getUser()
    var viewModel: GeneralInfoViewModelProtocol! {
        didSet {
            generalNavigationLabel.title = viewModel.userName
            generaleInfoLabel.text = "Общая информация: \(viewModel.userInfo)"
            photoImageView.image = UIImage(named: viewModel.userImage)
        }
    }
    
    let userTarget = User.getUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = GeneraleInfoViewModel(user: user)
                
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let targetVC = segue.destination as! TargetViewController
        targetVC.myTarget = userTarget.person.target
        targetVC.myTargetNavigation = userTarget.person.name
    }

}
