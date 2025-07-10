//
//  WelcomeViewController.swift
//  LoginApp2026
//
//  Created by Yurii Luka on 09.07.2025.
//

import UIKit

final class WelcomeViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var welconeLabel: UILabel!
    
    //MARK: - propherties
    var userName = ""
    
    //MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        welconeLabel.text = "Welcome, \(userName)!"
        view.addVerticalGradientLayer()
    }
}
    //MARK: Extantions
extension UIView {
    func addVerticalGradientLayer() {
        let primayColor = UIColor(
            red: 210/255,
            green: 109/255,
            blue: 128/225,
            alpha: 1
        )
        
        let secondaryColor = UIColor(
            red: 107/255,
            green: 148/255,
            blue: 230/255,
            alpha: 1
        )
        
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [primayColor.cgColor, secondaryColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}
