//
//  User.swift
//  LoginApp2026
//
//  Created by Yurii Luka on 11.07.2025.
//

struct User {
    let login: String
    let password: String
    let person: [Person]
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let hobbie: String
}

extension User {
    static func getPerson() -> Person {
            Person(
                name: "Yuriy",
                surname: "Luka",
                photo: "SwiftImage",
                hobbie: "Snowbording and traveling")
    }
}
