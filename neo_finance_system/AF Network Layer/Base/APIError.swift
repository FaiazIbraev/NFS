//
//  APIError.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 25/10/22.
//

import Foundation

enum APIError: Error{
    case notFound
    case serverTroubleShooting
    case unauthorized
    case badData
}

extension APIError{
    var locatedError: String{
        switch self {
        case .notFound:
            return "Server not found! 404"
        case .serverTroubleShooting:
            return "Server is on maintaining! 500+"
        case .unauthorized:
            return "Unauthorized"
        case .badData:
            return "Can't parse data from server"
        }
    }
}
