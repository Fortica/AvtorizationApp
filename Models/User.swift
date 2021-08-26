//
//  User.swift
//  AvtorizationApp
//
//  Created by Larisa on 08.04.2021.
//

struct User {
    let userName: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "",
            password: "",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let generalInfo: String
    let myHobby: String
    let target: String
    let photo: String
    
    static func getPerson() -> Person {
        Person(
            name: "Лариса",
               generalInfo: "Привет, мне 27 лет, живу в Санкт-петербурге, работаю в медицинской сфере. Уже около года увлекаюсь программированием с целью войти в IT 🙌🏼.",
               myHobby: "\n・Катание на велосипеде \n・Программирование \n・Философия \n・Экономика \n・Сноуборд.",
               target: "・Изучение Swift \n・Получение опыта в программировании,\n・Совершенствование английского языка \n・Научиться верховой езде \n・Вырастить дерево",
               photo: "myPhoto"
        )
    }
}
