//
//  ViewController.swift
//  LoginApp2026
//
//  Created by Yurii Luka on 09.07.2025.
//

import UIKit

final class LogInViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    //MARK: - Private propherties
    private let user = User.getUserData()
    
    //MARK: - Override methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user
            } else if let navigationVC = viewController as? UINavigationController {
                guard let userVC = navigationVC.topViewController as? UserViewController else { return }
                userVC.user = user
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    //MARK: - IBActions
    @IBAction func logInPressed() {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(
                title: "Wrong login or password!",
                message: "Enter the correct login and password "
            )
            return
        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)
    }
    
    @IBAction func fogotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user.login)")
        : showAlert(title: "Oops!", message: "Your password is \(user.password)")
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
