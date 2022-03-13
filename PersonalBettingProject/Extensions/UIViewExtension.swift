//
//  UIViewExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

extension UIView {
    static func newViewSetForAutoLayout() -> Self {
        let view: UIView = Self()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view as! Self
    }
}

extension UIView {
    func roundAllCorners(with cornerRadius: CGFloat) {
        layer.cornerRadius = cornerRadius
        layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner, .layerMaxXMinYCorner, .layerMaxXMaxYCorner]
    }
    
    func fround(with cornerRadius: CGFloat) {
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
    }
    
    func addBorderAroundView(view: UIView, cornerRadius: CGFloat, borderWidth: CGFloat, color: UIColor) {
        view.layer.cornerRadius = cornerRadius
        view.layer.borderWidth = borderWidth
        view.layer.borderColor = color.cgColor
        view.clipsToBounds = true
    }
}
