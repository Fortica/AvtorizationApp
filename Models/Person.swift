//
//  Personal.swift
//  AvtorizationApp
//
//  Created by Larisa on 08.04.2021.
//

struct Person {
    let name: String
    let generalInfo: String
    let myHobby: String
    
    static func getPerson() -> Person {
        
        Person(name: "Лариса", generalInfo: "Привет, мне 27 лет, живу в Санкт-петербурге, работаю в медицинской сфере. Уже около года увлекаюсь программированием с целью войти в IT 🙌🏼, надеюсь мне хватит упорства и мотивации на преодаление этой нелегкой задачи.", myHobby: "\n Спорт \n Сноуборд \n Экономика \n Философия \n Программирование \n Катание на велосипеде")
    }
}
