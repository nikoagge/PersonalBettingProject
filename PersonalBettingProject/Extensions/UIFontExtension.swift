//
//  UIFontExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

extension UIFont {
    static func makeSystem(_ fontSize: CGFloat, _ weight: Weight) -> UIFont {
        return UIFont.systemFont(ofSize: fontSize, weight: weight)
    }
}
