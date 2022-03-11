//
//  Coordinator.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

protocol Coordinator where Self: UIViewController {
    func navigate(_ navigationItem: NavigationItem)
}
