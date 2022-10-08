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
            return UIImage(named: "main")!.withTintColor(UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1))
        case .settings:
            return UIImage(named: "setting")!.withTintColor(UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1))
        case .addNew:
            return UIImage(named: "add")!.withTintColor(UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1))
        case .users:
            return UIImage(named: "users")!.withTintColor(UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1))
        case .analytics:
            return UIImage(named: "analysis")!.withTintColor(UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 1))
        }
    }
    
    var unselectedIcon: UIImage{
        switch self {
        case .main:
            return UIImage(named: "main")!.withTintColor(UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 0.6))
        case .settings:
            return UIImage(named: "setting")!.withTintColor(UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 0.6))
        case .addNew:
            return UIImage(named: "add")!.withTintColor(UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 0.6))
        case .users:
            return UIImage(named: "users")!.withTintColor(UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 0.6))
        case .analytics:
            return UIImage(named: "analysis")!.withTintColor(UIColor(red: 0.231, green: 0.239, blue: 0.31, alpha: 0.6))
        }
    }
    
}


