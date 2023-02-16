//
//  WelcomeViewController.swift
//  HW 2.6
//
//  Created by Игорь Солодянкин on 13.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var user: User!
    
    private let colorTop =  UIColor(
        red: 215.0/255.0,
        green: 196.0/255.0,
        blue: 215.0/255.0,
        alpha: 1
    )
    private let colorBottom = UIColor(
        red: 220.0/255.0,
        green: 120.0/255.0,
        blue: 150.0/255.0,
        alpha: 1.0
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradient(colorTop: colorTop, colorBottom: colorBottom)
        welcomeLabel.text = "Welcome,\n\(user.person.fullName)!"
    }
}
