//
//  LoginViewModel.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 4/10/22.
//

import UIKit

class LoginViewModel{
    private let userName: String = "user"
    private let password: String = "user"
    
    var isUserAuthorized: ((Bool) -> Void)?
    
    func authorizeUser(login: String, password: String){
        if login.lowercased() == userName.lowercased() && password == self.password{
            UserDefaults.standard.set("\(login.lowercased())", forKey: "login")
            isUserAuthorized!(true)
        } else {
            isUserAuthorized!(false)
        }
    }
    
}
