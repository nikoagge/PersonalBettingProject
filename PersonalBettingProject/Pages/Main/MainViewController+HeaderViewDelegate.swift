//
//  MainViewController+HeaderViewDelegate.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 13/3/22.
//

import UIKit

extension MainViewController: HeaderViewDelegate {
    func profileButtonTouchUpInside() {
        navigate(.init(pageType: .profileViewController, navigationStyle: .push(animated: true)))
    }
    
    func settingsButtonTouchUpInside() {
        navigate(.init(pageType: .settingsViewController, navigationStyle: .push(animated: true)))
    }
}
