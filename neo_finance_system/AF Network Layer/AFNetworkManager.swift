//
//  AFNetworkManager.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 25/10/22.
//

import Foundation
import Alamofire

protocol AFNetworkManagerProtocol{
    func authorize(email: String, password: String, onSuccess: @escaping (AuthModel) -> Void, onError: @escaping (APIError) -> Void)
}

class AFNetworkManager: AFNetworkManagerProtocol{
    let provider = BaseAPI<APIService>()
    
    func authorize(email: String, password: String, onSuccess: @escaping (AuthModel) -> Void, onError: @escaping (APIError) -> Void){
        provider.getData(target: .authorize(email: email, password: email), response: AuthModel.self) {
            (response) in
            onSuccess(response)
            print("Data: \(response)")
        } onError: { (error) in
            onError(error)
            print("Error: \(error)")
        }
    }
    
    func refreshToken(refreshToken: String){
        provider.getData(target: .refreshToken(refreshToken: refreshToken), response: RefreshTokenModel.self) { (response) in
            print("Data: \(response)")
        } onError: { (error) in
            print("Error: \(error)")
        }

    }
    
}
