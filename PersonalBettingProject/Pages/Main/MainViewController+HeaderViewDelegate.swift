//
//  MainViewController+HeaderViewDelegate.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 13/3/22.
//

import UIKit

extension MainViewController: HeaderViewDelegate {
    func profileButtonTouchUpInside() {
        let profileViewController = ProfileViewController()
        self.present(profileViewController, animated: true)
    }
    
    func settingsButtonTouchUpInside() {
        let settingsViewController = SettingsViewController()
        self.present(settingsViewController, animated: true)
    }
}
