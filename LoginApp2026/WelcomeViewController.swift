//
//  WelcomeViewController.swift
//  LoginApp2026
//
//  Created by Yurii Luka on 09.07.2025.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welconeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welconeLabel.text = userName

        // Do any additional setup after loading the view.
    }

}
