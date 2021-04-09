//
//  Personal.swift
//  AvtorizationApp
//
//  Created by Larisa on 08.04.2021.
//

struct Person {
    let name: String
    let generalInfo: String
    let target: String
    
    static func getPerson() -> Person {
        
        Person(name: "Лариса", generalInfo: "Привет, меня зовут Лариса, мне 27 лет, живу в Санкт-петербурге, работаю в медицинской сфере. Уже около года увлекаюсь программированием с целью войти в IT 🙌🏼, надеюсь мне хватит упорства и мотивации на преодаление этой нелегкой задачи. Также интересуюсь экономикой и философией. 🤓", target: "1. Изучить Swift. Совершенствовать английский. Устроиться на работу в IT. Иммигрировать заграницу")
    }
}
