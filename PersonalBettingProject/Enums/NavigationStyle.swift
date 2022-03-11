//
//  NavigationStyle.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import Foundation

enum NavigationStyle {
    case present(animated: Bool)
    case presentWithinNavigation(animated: Bool, hidesBottomBar: Bool)
    case push(animated: Bool)
    case replace(animated: Bool)
    case setInitialNavigationRootControllers(animated: Bool)
}
