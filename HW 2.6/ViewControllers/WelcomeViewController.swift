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
        red: 100.0/255.0,
        green: 120.0/255.0,
        blue: 190.0/255.0,
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

extension UIView {
    func addGradient(colorTop: UIColor, colorBottom: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [colorTop.cgColor, colorBottom.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}

