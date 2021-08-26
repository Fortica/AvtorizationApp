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
               name: "Лара",
               generalInfo: "Возраст: 28 лет \n Город: Санкт-петербург \n Название курса: SwiftBook \n Начало курса 22.02.2021г \n Конец курса: 23.08.2021г",
               myHobby: "\n・Катание на велосипеде \n・Программирование \n・Философия \n・Экономика \n・Сноуборд.",
               target: "・Изучение Swift \n・Получение опыта в программировании,\n・Совершенствование английского языка \n・Научиться верховой езде \n・Вырастить дерево",
               photo: "myPhoto"
        )
    }
}
