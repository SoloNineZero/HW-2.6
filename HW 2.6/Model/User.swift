//
//  User.swift
//  HW 2.6
//
//  Created by Игорь Солодянкин on 16.02.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "Igor",
            password: "12345",
            person: Person(
                name: "Igor",
                surname: "Solodyankin",
                dateOfBirth: "12.10.1990"
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
