//
//  StoryboardType+Extension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

extension StoryboardType {
    func getStoryboard() -> UIStoryboard {
        return UIStoryboard(name: rawValue, bundle: nil)
    }
    
    func getController<T: UIViewController>(_ type: T.Type, setup: ((T) -> Void) = { _ in }) -> T? {
        if let viewController = self.getStoryboard().instantiateViewController(withIdentifier: String(describing: T.self)) as? T {
            setup(viewController)
            
            return viewController
        }
        
        return nil
    }
}
