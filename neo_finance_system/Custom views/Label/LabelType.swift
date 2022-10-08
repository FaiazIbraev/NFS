//
//  LabelType.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 8/10/22.
//

import UIKit

enum LabelType{
    case mainLabel
    case balanceNameLabel
    case balanceAmountLabel
    case organizationLabel
    case bankLabel
    case dateLabel
    case newRecordLabel
    case recordNameLabel
    case settingsLabel
    case settingsAddLabel
    case rejectLabel
    case recordAmount
}

extension LabelType{
    var textColor: UIColor{
        switch self {
        case .mainLabel:
            return UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        case .balanceNameLabel:
            return UIColor(red: 0.627, green: 0.627, blue: 0.627, alpha: 1)
        case .balanceAmountLabel:
            return UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        case .organizationLabel:
            return UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        case .bankLabel:
            return UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        case .newRecordLabel:
            return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        case .recordNameLabel:
            return UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        case .settingsLabel:
            return UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        case .settingsAddLabel:
            return UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 0.7)
        case .dateLabel:
            return UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        case .rejectLabel:
            return UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 1)
        case .recordAmount:
            return UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1)
        }
    }
    
    var textFont: UIFont{
        switch self {
        case .mainLabel:
            return .systemFont(ofSize: 34, weight: .bold)
        case .balanceNameLabel:
            return .systemFont(ofSize: 12, weight: .regular)
        case .balanceAmountLabel:
            return .systemFont(ofSize: 18, weight: .bold)
        case .organizationLabel:
            return .systemFont(ofSize: 16, weight: .semibold)
        case .bankLabel:
            return .systemFont(ofSize: 14, weight: .semibold)
        case .newRecordLabel:
            return .systemFont(ofSize: 17, weight: .semibold)
        case .recordNameLabel:
            return .systemFont(ofSize: 15, weight: .semibold)
        case .settingsLabel:
            return .systemFont(ofSize: 16, weight: .semibold)
        case .settingsAddLabel:
            return .systemFont(ofSize: 16, weight: .semibold)
        case .dateLabel:
            return .systemFont(ofSize: 12, weight: .regular)
        case .rejectLabel:
            return .systemFont(ofSize: 17, weight: .regular)
        case .recordAmount:
            return .systemFont(ofSize: 16, weight: .bold)
        }
    }
    
}
