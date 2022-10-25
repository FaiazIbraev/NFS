//
//  DSUserDefaults.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 25/10/22.
//

import Foundation


class DSUserDefaults: UserDefaultsDataStoreProtocol{
    
    static let shared = DSUserDefaults()
    
    private let userDefaults = UserDefaults.standard
    private let pAccessToken = "AccessToken"
    private let pRefreshToken = "RefreshToken"
    
    func setAccessToken(_ token: String) {
        userDefaults.set(token, forKey: pAccessToken)
    }
    
    func getAccessToken() -> String? {
        return userDefaults.string(forKey: pAccessToken)
    }
    
    func setRefreshToken(_ token: String) {
        userDefaults.set(token, forKey: pRefreshToken)
    }
    
    func getRefreshToken() -> String? {
        return userDefaults.string(forKey: pRefreshToken)
    }
    
    func removeAll() {
        userDefaults.removeObject(forKey: pAccessToken)
        userDefaults.removeObject(forKey: pRefreshToken)
    }
    
    
}
