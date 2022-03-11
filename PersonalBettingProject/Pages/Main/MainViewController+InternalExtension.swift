//
//  MainViewController+InternalExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

internal extension MainViewController {
    func getData() {
        _ = NetworkManager.shared.getBettingSports().done { bettingSports in
            self.bettingSports = bettingSports
            for _ in 0..<bettingSports.count {
                self.bettingSportSectionIsExpanded.append(false)
            }
        }.catch { error in
            debugPrint(error.localizedDescription)
        }
    }
    
    func setupUI() {
        if !UIDevice().isIPodOrIPhoneWithoutNotch() {
            headerViewHeightLayoutConstraint.constant = 130
        }
    }
}
