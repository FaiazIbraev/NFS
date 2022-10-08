//
//  CustomButtonType.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 8/10/22.
//

import UIKit

enum CustomButtonType{
    case saveButton
    case deleteButton
}

extension CustomButtonType{
    var textColor: UIColor{
        switch self {
        case .saveButton:
            return UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        case .deleteButton:
            return UIColor(red: 0.749, green: 0.267, blue: 0.267, alpha: 1)
        }
    }
    
    var textFont: UIFont{
        switch self {
        case .saveButton:
            return .systemFont(ofSize: 17, weight: .semibold)
        case .deleteButton:
            return .systemFont(ofSize: 17, weight: .regular)
        }
    }
    
    var backgroundColor: UIColor{
        switch self {
        case .saveButton:
            return UIColor(red: 0.4, green: 0.755, blue: 0.285, alpha: 1)
        case .deleteButton:
            return .white
        }
    }
    

    
}
