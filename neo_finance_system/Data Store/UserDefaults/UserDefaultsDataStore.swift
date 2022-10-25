//
//  UserDefaultsDataStore.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 25/10/22.
//

import Foundation

protocol UserDefaultsDataStoreProtocol{
    func setAccessToken(_ token: String)
    func getAccessToken() -> String?
    
    func setRefreshToken(_ token: String)
    func getRefreshToken() -> String?
    
    func removeAll()
}
