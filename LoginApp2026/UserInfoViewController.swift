//
//  UserInfoViewController.swift
//  LoginApp2026
//
//  Created by Yurii Luka on 11.07.2025.
//

import UIKit

class UserInfoViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet var userPhotoImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var userSurnameLabel: UILabel!
    @IBOutlet var userHobiesLabel: UILabel!
    
    //MARK: - Private propherties
    var user: User!

    //MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        userPhotoImageView.image = UIImage(named: user.person.photo)
        userNameLabel.text = "Name: \(user.person.name)"
        userSurnameLabel.text = "Surname: \(user.person.surname)"
        userHobiesLabel.text = "Hobies: \(user.person.hobbie)"
    }
}
