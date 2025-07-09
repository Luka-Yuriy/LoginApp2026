//
//  ViewController.swift
//  LoginApp2026
//
//  Created by Yurii Luka on 09.07.2025.
//

import UIKit

class LogInViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //MARK: - Private propherties
    private let userName = "User"
    private let password = "1234"
    
    //MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = "Welcome, \(userName)!"
    }
    
    //MARK: - IBActions
    @IBAction func loginButtonDidTapped() {
        if userNameTF.text != userName || passwordTF.text != password {
            showAlert(
                title: "Wrong login or password!",
                message: "Enter the correct login and password "
            )
        }
    }
    
    @IBAction func userNameHintButtomDidTapped() {
        showAlert(title: "Oops!", message: "Your name is User")
    }
    
    @IBAction func userPasswordHintButtonDidTapped() {
        showAlert(title: "Oops!", message: "Your password is 1234")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    //MARK: - Private methods
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

