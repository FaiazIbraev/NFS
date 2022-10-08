//
//  TextFieldType.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 8/10/22.
//

import UIKit

enum TextFieldType{
    case basic
}

extension TextFieldType{
    var textColor: UIColor{
        switch self {
        case .basic:
            return UIColor(red: 0.773, green: 0.773, blue: 0.78, alpha: 1)
        }
    }
    
    var textFont: UIFont{
        switch self {
        case .basic:
            return .systemFont(ofSize: 17, weight: .regular)
        }
    }
}

