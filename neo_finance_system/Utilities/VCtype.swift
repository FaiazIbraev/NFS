//
//  VCtype.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 4/10/22.
//

import UIKit

enum VCtype{
    case main
    case settings
    case addNew
    case users
    case analytics
    
    var VC: UIViewController{
        switch self {
        case .main:
            return MainVC()
        case .settings:
            return SettingsVC()
        case .addNew:
            return AddNewVC()
        case .users:
            return UsersVC()
        case .analytics:
            return AnalyticsVC()
        }
    }
    
    var title: String{
        switch self {
        case .main:
            return "Главная"
        case .settings:
            return "Настройки"
        case .addNew:
            return ""
        case .users:
            return "Пользователи"
        case .analytics:
            return "Аналитика"
        }
    }
    
    var selectedIcon: UIImage{
        switch self {
        case .main:
            return UIImage(named: "main")!
        case .settings:
            return UIImage(named: "setting")!
        case .addNew:
            return UIImage(named: "add")!
        case .users:
            return UIImage(named: "users")!
        case .analytics:
            return UIImage(named: "analysis")!
        }
    }
    
    var unselectedIcon: UIImage{
        switch self {
        case .main:
            return UIImage(named: "main")!
        case .settings:
            return UIImage(named: "setting")!
        case .addNew:
            return UIImage(named: "add")!
        case .users:
            return UIImage(named: "users")!
        case .analytics:
            return UIImage(named: "analysis")!
        }
    }
    
}


