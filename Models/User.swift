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
    
    static func getUser(n: String? = nil, p: String? = nil) -> User {
        User(userName: "2", password: "2")
    }
}
