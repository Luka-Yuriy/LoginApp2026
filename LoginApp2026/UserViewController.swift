//
//  UserViewController.swift
//  LoginApp2026
//
//  Created by Yurii Luka on 11.07.2025.
//

import UIKit

class UserViewController: UIViewController {
    //MARK: - Propherties
    var user: User!
    
    //MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = user.person.name
    }
}
