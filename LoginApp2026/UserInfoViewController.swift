//
//  UserInfoViewController.swift
//  LoginApp2026
//
//  Created by Yurii Luka on 11.07.2025.
//

import UIKit

class UserInfoViewController: UIViewController {
    
    @IBOutlet var userPhotoImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurnameLabel: UILabel!
    @IBOutlet var userHobiesLabel: UILabel!
    
    private let userModel = User.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        userPhotoImageView.image = UIImage(named: userModel.photo)
        userNameLabel.text = "Name: \(userModel.name)"
        userSurnameLabel.text = "Surname: \(userModel.surname)"
        userHobiesLabel.text = "Hobies: \(userModel.hobbie)"
    }
}
