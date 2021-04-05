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
    
    private let user = "User"
    private  let password = "Password"
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user) 🖖🏼")
        : showAlert(title: "Oops!", message: "Your password is \(password) 🤌🏼")
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.agentWelcomeLabel = user
    }
        
    @IBAction func logInPressed() {
        if nameTF.text != user || passwordTF.text != password {
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
