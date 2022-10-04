//
//  MainTabBarController.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 4/10/22.
//

import UIKit

class MainTabBarController: UITabBarController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarAppereance()
        setupVC()
    }
    
    func setupTabBarAppereance(){
        self.tabBar.isTranslucent = true
        self.tabBar.backgroundColor = .lightGray
    }
    
    func setupVC(){
        setViewControllers([setupCurrentVC(.main),  setupCurrentVC(.settings), setupCurrentVC(.addNew), setupCurrentVC(.users),setupCurrentVC(.analytics)], animated: true)
    }
    
    func setupCurrentVC(_ viewControllerType: VCtype) -> UIViewController{
        let vc = viewControllerType.VC
        vc.tabBarItem.title = viewControllerType.title
        
        return vc
    }
    
}
