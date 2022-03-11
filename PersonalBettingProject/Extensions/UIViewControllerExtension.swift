//
//  UIViewControllerExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

extension UIViewController {
    func isModal() -> Bool {
        if presentingViewController != nil {
            return true
        } else if navigationController?.presentingViewController?.presentedViewController == navigationController {
            return true
        } else if tabBarController?.presentingViewController is UITabBarController {
            return true
        } else if let index = navigationController?.viewControllers.firstIndex(of: self), index > 0 {
            return false
        } else {
            return false
        }
    }
    
    func backAction() {
        if isModal() {
            dismiss(animated: true)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
}

extension UIViewController {
    func revealMainViewController() -> MainViewController? {
        var viewController = self
        if viewController is MainViewController {
            return viewController as? MainViewController
        }
        
        while(!(viewController is MainViewController) && viewController.parent != nil) {
            viewController = viewController.parent!
        }
        
        if viewController is MainViewController {
            return viewController as? MainViewController
        }
        
        return nil
    }
}

extension UIViewController {
    func moveScrollViewToSelectedTextField(selectedTextField: UITextField, scrollView: UIScrollView) {
        var originPoint = selectedTextField.frame.origin
        originPoint.y = originPoint.y - 5
        
        scrollView.setContentOffset(originPoint, animated: true)
    }
}
