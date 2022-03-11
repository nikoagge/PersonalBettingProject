//
//  Coordinator+Extension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

extension Coordinator {
    func navigate(_ navigationItem: NavigationItem) {
        var controllersToInitialNavigation: [UIViewController] = []
        var controllerToNavigate: UIViewController!

        switch navigationItem.pageType {
        case .viewControllers(let viewControllers):
            controllersToInitialNavigation = viewControllers
            
        case .viewController(let viewController):
            controllerToNavigate = viewController
            
        case .mainViewController:
            controllerToNavigate = StoryboardType.main.getController(MainViewController.self)
        }
        
        if let controllerToNavigate = controllerToNavigate {
            controllersToInitialNavigation.append(controllerToNavigate)
        }
        
        DispatchQueue.main.async {
            switch navigationItem.navigationStyle {
            case .present(let animated):
                controllerToNavigate.modalPresentationStyle = .overFullScreen
                self.present(controllerToNavigate, animated: animated)
                
            case .presentWithinNavigation(let animated, let hidesBottomBar):
                controllerToNavigate.tabBarController?.hidesBottomBarWhenPushed = hidesBottomBar
                let navigationController = UINavigationController(rootViewController: controllerToNavigate)
                navigationController.isNavigationBarHidden = true
                self.present(navigationController, animated: animated)
                
            case .push(let animated):
                self.navigationController?.pushViewController(controllerToNavigate, animated: animated)
                
            case .replace(let animated):
                if var viewControllers = self.navigationController?.viewControllers {
                    viewControllers.removeLast()
                    viewControllers.append(controllerToNavigate)
                    self.navigationController?.setViewControllers(viewControllers, animated: animated)
                }
                
            case .setInitialNavigationRootControllers(let animated):
                if #available(iOS 13.0, *) {
                    Constants.appDelegate.initialNavigationController.setViewControllers(controllersToInitialNavigation, animated: animated)
                } else {
                    // Fallback on earlier versions
                }
            }
        }
    }
}

extension UINavigationController: UIGestureRecognizerDelegate {}
