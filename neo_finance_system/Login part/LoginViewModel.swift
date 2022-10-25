//
//  LoginViewModel.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 4/10/22.
//

import UIKit

protocol LoginViewModelProtocol{
    var isUserAuthorized: ((Bool) -> Void)? {get set}
    func authorizeUser(login: String, password: String)
}

class LoginViewModel: LoginViewModelProtocol{

    let networkManager: AFNetworkManagerProtocol
    
    init(networkManager: AFNetworkManagerProtocol = AFNetworkManager()){
        self.networkManager = networkManager
    }
    
    var isUserAuthorized: ((Bool) -> Void)?
    
    func authorizeUser(login: String, password: String){
        
        
        
        networkManager.authorize(email: login.lowercased(), password: password) { (response) in
            print("VM Resp: \(response)")
            if let accessToken = response.access, let refreshToken = response.refresh{
                DSGenerator.sharedInstance.setAccessToken(accessToken)
                DSGenerator.sharedInstance.setRefreshToken(refreshToken)
                self.isUserAuthorized?(true)
            } else{
                self.isUserAuthorized?(false)
            }
        } onError: { (error) in
            print("VM Error: \(error)")
            self.isUserAuthorized?(false)
        }


    }
    
}
