//
//  URL Strings.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 13/10/22.
//

import Foundation


enum URLStrings{
    case getTotalBalance
    
    var urlString: String{
        switch self {
        case .getTotalBalance:
            return "https://neobis-finance-sistem.herokuapp.com/profit_consumption_balance/"
        }
    }
    
    
}
