//
//  User.swift
//  HW 2.6
//
//  Created by Игорь Солодянкин on 16.02.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    let animal: Animal
    
    static func getUserData() -> User {
        User(
            login: "Igor",
            password: "12345",
            person: Person.getPerson(),
            animal: Animal.getAnimal()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let dateOfBirth: String
    let photo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Igor",
            surname: "Solodyankin",
            dateOfBirth: "12.10.1990",
            photo: "igor"
        )
    }
}

struct Animal {
    let name: String
    let age: Int
    let photo: String
    
    static func getAnimal() -> Animal {
        Animal(
            name: "Tozik",
            age: 9,
            photo: "tozik"
        )
    }
}
