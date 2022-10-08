//
//  MainTabBarController.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 4/10/22.
//

import UIKit

class MainTabBarController: UITabBarController, UITabBarControllerDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarAppereance()
        setupVC()
    }
    
    func setupTabBarAppereance(){
        self.tabBar.isTranslucent = true
        self.tabBar.backgroundColor = .white
        self.delegate = self
    }
    
    func setupVC(){
        setViewControllers([setupCurrentVC(.main),  setupCurrentVC(.settings), setupCurrentVC(.addNew), setupCurrentVC(.users),setupCurrentVC(.analytics)], animated: true)
    }
    
    func setupCurrentVC(_ viewControllerType: VCtype) -> UIViewController{
        let vc = viewControllerType.VC
        vc.tabBarItem.title = viewControllerType.title
        vc.tabBarItem.image = viewControllerType.unselectedIcon
        vc.tabBarItem.selectedImage = viewControllerType.selectedIcon
        
        return vc
    }
    
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        let index = tabBarController.viewControllers?.firstIndex(of: viewController)
        if index == 2{
            self.present(AddNewVC(), animated: true)
            return false
        }
        return true
    }
}
