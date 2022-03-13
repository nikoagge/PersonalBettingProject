//
//  BettingMatchCollectionViewCell+InternalExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 13/3/22.
//

import UIKit

internal extension BettingMatchCollectionViewCell {
    func setupUI() {
        addBorderAroundView(view: timeAndDateView, cornerRadius: 4, borderWidth: 2, color: .white)
    }
}
