//
//  AppDelegate.swift
//  neo_finance_system
//
//  Created by Faiaz Ibraev on 4/10/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigController: UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        
        window.makeKeyAndVisible()
        
        if let user = UserDefaults.standard.string(forKey: "login"){
            if user.isEmpty{
                loginApp()
            }else{
                mainApp()
            }
        } else{
            loginApp()
        }
            
        
        return true
    }


    func navController(vc: UIViewController) -> UINavigationController{
        navigController = UINavigationController(rootViewController: vc)
        navigController?.navigationBar.isHidden = true
        
        
        return navigController ?? UINavigationController()
    }
    
    func loginApp(){
        self.window?.rootViewController = navController(vc: LoginVC())
    }

    func mainApp(){
        self.window?.rootViewController = navController(vc: MainTabBarController())
    }

}

