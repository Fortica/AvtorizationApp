//
//  ViewController.swift
//  AvtorizationApp
//
//  Created by Larisa on 03.04.2021.
//

import UIKit

class LoginViewController: UIViewController {
    

    @IBOutlet var forgotPasswordButton: UIButton!
    @IBOutlet var forgotUsNameButton: UIButton!
    
    @IBOutlet var nameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let trueName = "1"
    let truePassword = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func forgotUsNameButtonPressed() {
    showAlert(with: "Ooops!", and: "Your name is \(trueName) 🖖🏼")
    }

    @IBAction func forgotPasswordButtonPressed() {
        showAlert(with: "Ooops!", and: "Your password is \(truePassword) 🤌🏼")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.agentWelcomeLabel = "Welcome, \(trueName)!"
    }
    
    @IBAction func logInPressed() {
        if nameTF.text == trueName && passwordTF.text == truePassword {
        } else {
            showAlert(with: "Username or Password entered incorrect", and: "Repeat")
            passwordTF.text = ""
            
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let welcomeVC = segue.source as? WelcomeViewController else { return }
        nameTF.text = welcomeVC.nameValueEmpty
        passwordTF.text = welcomeVC.passwordValueEmpty
    }
    
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
    alert.addAction(okAction)
    present(alert, animated: true)
}
}
