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

extension UIView {
    func getTime(from matchTime: Int) -> String {
        let epochTime = TimeInterval((matchTime)) / 1000
        let date = Date(timeIntervalSinceNow: epochTime)
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let hourStringValue = addExtraZeroForOneDigitIntValue(intValue: hour)
        let minutes = calendar.component(.minute, from: date)
        let minutesStringValue = addExtraZeroForOneDigitIntValue(intValue: minutes)
        let seconds = calendar.component(.second, from: date)
        let secondsStringValue = addExtraZeroForOneDigitIntValue(intValue: seconds)
        
        return "\(hourStringValue):\(minutesStringValue):\(secondsStringValue)"
    }
    
    func addExtraZeroForOneDigitIntValue(intValue: Int) -> String {
        if intValue < 10 {
            return "0\(intValue)"
        } else {
            return "\(intValue)"
        }
    }
}
