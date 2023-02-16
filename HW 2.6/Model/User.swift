//
//  User.swift
//  HW 2.6
//
//  Created by Игорь Солодянкин on 16.02.2023.
//

import UIKit

struct User {
    let login: String
    let password: String
    let person: Person
    let animal: Animal
    
    static func getUserData() -> User {
        User(
            login: "Igor",
            password: "12345",
            person: Person(
                name: "Igor",
                surname: "Solodyankin",
                dateOfBirth: "12.10.1990"
            ),
            animal: Animal(
                name: "Tozik",
                age: 9
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let dateOfBirth: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

struct Animal {
    let name: String
    let age: Int
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

