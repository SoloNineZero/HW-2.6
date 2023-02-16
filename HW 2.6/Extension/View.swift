//
//  View.swift
//  HW 2.6
//
//  Created by Игорь Солодянкин on 16.02.2023.
//

import UIKit

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


