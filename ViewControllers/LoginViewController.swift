//
//  ViewController.swift
//  AvtorizationApp
//
//  Created by Larisa on 03.04.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let user = User.getUser()
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your name is \(user.userName) 🖖🏼")
            : showAlert(title: "Oops!", message: "Your password is \(user.password) 🤌🏼")
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach {
            if let welcomeVC = $0 as? WelcomeViewController {
                welcomeVC.user = user
            } else if let hobbyVC = $0 as? HobbyViewController {
                hobbyVC.hobby = user
            } else if let navigationVC = $0 as? UINavigationController {
                let generaleVC = navigationVC.topViewController as! GeneralInfoViewController
                generaleVC.generalInfoMediator = user.person.generalInfo
                generaleVC.generalNavigationLabelMediator = user.person.name
                generaleVC.imageMediator = UIImage(named: user.person.photo)
            }
        }
    }
    
    
    @IBAction func logInPressed() {
        if nameTF.text != user.userName || passwordTF.text != user.password {
            showAlert(title: "Username or Password entered incorrect", message: "Repeat",
            textField: passwordTF)
            return
        }
        performSegue(withIdentifier: "welcomeVC", sender: nil)
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        nameTF.text = ""
        passwordTF.text = ""
    }
    
}

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
    alert.addAction(okAction)
    present(alert, animated: true)
}
}
