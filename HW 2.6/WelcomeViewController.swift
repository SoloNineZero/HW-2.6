//
//  WelcomeViewController.swift
//  HW 2.6
//
//  Created by Игорь Солодянкин on 13.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userName ?? "")!"
        setGradientBackground()
    }
    
    private func setGradientBackground() {
        let colorTop =  UIColor(
            red: 220.0/255.0,
            green: 120.0/255.0,
            blue: 150.0/255.0,
            alpha: 1.0
        ).cgColor
        let colorBottom = UIColor(
            red: 100.0/255.0,
            green: 120.0/255.0,
            blue: 190.0/255.0,
            alpha: 1
        ).cgColor
                    
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = view.bounds
                
        view.layer.insertSublayer(gradientLayer, at:0)
    }
}
