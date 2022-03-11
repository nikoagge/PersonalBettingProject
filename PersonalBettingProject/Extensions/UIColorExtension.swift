//
//  UIColorExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(red: (rgb >> 16) & 0xFF, green: (rgb >> 8) & 0xFF, blue: rgb & 0xFF)
    }
    
    var hexString: String? {
        if let components = self.cgColor.components {
            let r = components[0]
            let g = components[1]
            let b = components[2]
            
            return String(format: "%02X%02X%02X", Int(r * 255), Int(g * 255), Int(b * 255))
        }
        
        return nil
    }
    
    static let gondola = UIColor(red: 53, green: 53, blue: 53)
    static let smalt = UIColor(red: 0, green: 60, blue: 150)
    static let echoBlue = UIColor(red: 163, green: 181, blue: 212)
    static let mainVeryLightBackgroundColor = UIColor(red: 253, green: 254, blue: 253)
    static let mainLightBackgroundColor = UIColor(red: 243, green: 246, blue: 243)
    static let mainDarkBackgroundColor = UIColor(red: 136, green: 136, blue: 136)
    static let mainDarkPrimaryColor = UIColor(red: 109, green: 202, blue: 214)
    static let mainPrimaryColor = UIColor(red: 125, green: 218, blue: 230)
    static let mainLightPrimaryColor = UIColor(red: 186, green: 232, blue: 226)
    static let mainVeryLightPrimaryColor = UIColor(red: 207, green: 248, blue: 242)
    static let mainVeryVeryLightPrimaryColor = UIColor(red: 234, green: 253, blue: 250)
    static let mainDarkSecondaryColor = UIColor(red: 36, green: 39, blue: 38)
    static let mainSecondaryColor = UIColor(red: 62, green: 67, blue: 65)
    static let mainLightSecondaryColor = UIColor(red: 170, green: 192, blue: 215)
    static let mainVeryLightSecondaryColor = UIColor(red: 228, green: 231, blue: 238)
    static let mainVeryVeryLightSecondaryColor = UIColor(red: 238, green: 239, blue: 240)
    static let mainAttentionColor = UIColor(red: 240, green: 78, blue: 59)
    static let mainLightAttentionColor = UIColor(red: 249, green: 93, blue: 80)
    static let mainBarColor = UIColor(red: 62, green: 67, blue: 65)
    static let mainBarMenuColor = UIColor(red: 254, green: 254, blue: 254)
    static let secondMainBarColor = UIColor(red: 255, green: 255, blue: 255)
    static let secondMainBarMenuColor = UIColor(red: 51, green: 51, blue: 51)
    static let mainFloatingMenuColor = UIColor(red: 217, green: 223, blue: 217)
    static let shadowColor = UIColor(red: 0, green: 0, blue: 0)
}
