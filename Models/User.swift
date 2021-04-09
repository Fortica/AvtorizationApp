//
//  User.swift
//  AvtorizationApp
//
//  Created by Larisa on 08.04.2021.
//

struct User {
    let userName: String
    let password: String
    let person = Person.getPerson()
    
    static func getUser() -> User {
        User(userName: "", password: "")
    }
}
