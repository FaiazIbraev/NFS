//
//  APIService.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 25/10/22.
//

import Foundation
import Alamofire

enum APIService{
    case authorize (email: String, password: String)
    case refreshToken(refreshToken: String)
}

//https://neobis-finance-sistem.herokuapp.com/account/api/token/
extension APIService: TargerType{
    var baseUrl: String {
        return "https://neobis-finance-sistem.herokuapp.com/"
    }
    
    var path: String {
        switch self {
        case .authorize:
            return "account/api/token/"
        case .refreshToken:
            return "account/api/token/refresh/"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .authorize:
            return .post
        case.refreshToken:
            return .post
        default:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .authorize(let email, let password):
            let params: [String: Any] = ["email": email,
                                         "password": password]
            
            print(" Params: \(params)")
            return .requestParameters(parameters: params, encoding: URLEncoding.default)
        case .refreshToken(let refreshToken):
            let params: [String: Any] = ["refresh": refreshToken]
            return .requestParameters(parameters: params, encoding: URLEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        switch self {
        default:
            return nil
        }
    }
    
    
}
