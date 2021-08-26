//
//  DataManager.swift
//  AvtorizationApp
//
//  Created by Larisa on 26.08.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private let userDefaults = UserDefaults()
    
    private init() {}
    
    func setNameUser(for nameUser: String, with status: Bool) {
        userDefaults.set(status, forKey: nameUser)
    }
        
    func getNameUser(for avtorazationName: String) -> Bool {
        userDefaults.bool(forKey: avtorazationName)
    }
    
}
