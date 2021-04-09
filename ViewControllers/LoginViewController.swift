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
    
    let user = User.getUser()
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your name is \(user.userName) 🖖🏼")
            : showAlert(title: "Oops!", message: "Your password is \(user.password) 🤌🏼")
    }

    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
        for viewController in tabBarController.viewControllers! {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.agentWelcomeLabel = user.person.name
            } else if let navigationVC = viewController as? UINavigationController {
                let targetVC = navigationVC.topViewController as? TargetViewController
                targetVC?.contentTarget = user.person.target
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
