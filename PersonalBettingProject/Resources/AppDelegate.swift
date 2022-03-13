//
//  AppDelegate.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 10/3/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var inactivityTimer: Timer!
    var initialNavigationController: UINavigationController!
    var rootViewController: UIViewController!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        showInitialViewController()
        
        return true
    }
    
    func showInitialViewController() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let mainViewController = mainStoryboard.instantiateViewController(withIdentifier: "MainViewController")
        window?.rootViewController = UINavigationController(rootViewController: mainViewController)
        self.window?.makeKeyAndVisible()
    }
}
