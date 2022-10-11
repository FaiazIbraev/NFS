//
//  TextFieldType.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 8/10/22.
//

import UIKit

enum TextFieldType{
    case date
    case amount
    case direction
    case category
    case organization
    case poject
    case wallet
    case comments
    case fromBank
    case toBank
}

extension TextFieldType{
    var textColor: UIColor{
        switch self {
        case .date:
            return UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        case .amount:
            return UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        case .direction:
            return UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        case .category:
            return UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        case .organization:
            return UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        case .poject:
            return UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        case .wallet:
            return UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        case .comments:
            return UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        case .fromBank:
            return UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        case .toBank:
            return UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        }
    }
    
    var textFont: UIFont{
        switch self {
        case .date:
            return .systemFont(ofSize: 17, weight: .regular)
        case .amount:
            return .systemFont(ofSize: 17, weight: .regular)
        case .direction:
            return .systemFont(ofSize: 17, weight: .regular)
        case .category:
            return .systemFont(ofSize: 17, weight: .regular)
        case .organization:
            return .systemFont(ofSize: 17, weight: .regular)
        case .poject:
            return .systemFont(ofSize: 17, weight: .regular)
        case .wallet:
            return .systemFont(ofSize: 17, weight: .regular)
        case .comments:
            return .systemFont(ofSize: 17, weight: .regular)
        case .fromBank:
            return .systemFont(ofSize: 17, weight: .regular)
        case .toBank:
            return .systemFont(ofSize: 17, weight: .regular)
        }
    }
    
    var placeholder: String{
        switch self {
        case .date:
            return "data"
        case .amount:
            return "summa"
        case .direction:
            return "direction"
        case .category:
            return "category"
        case .organization:
            return "Kontragent"
        case .poject:
            return "Project"
        case .wallet:
            return "Koshelek"
        case .comments:
            return "Kommentarii"
        case .fromBank:
            return "Otkuda"
        case .toBank:
            return "Kuda"
        }
    }
    
    
    
}

