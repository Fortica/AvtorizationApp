//
//  GeneralInfoViewModel.swift
//  AvtorizationApp
//
//  Created by Larisa on 26.08.2021.
//

import Foundation

protocol GeneralInfoViewModelProtocol {
    var userName: String { get }
    var userInfo: String { get }
    var userImage: String { get }
    init(user: User)
}

class GeneraleInfoViewModel: GeneralInfoViewModelProtocol {
    
    var userName: String {
        user.person.name
    }
    var userInfo: String {
        user.person.generalInfo
    }
    var userImage: String {
        user.person.photo
    }
    
    private let user: User
    
    required init(user: User) {
        self.user = user
    }
    
    
}
