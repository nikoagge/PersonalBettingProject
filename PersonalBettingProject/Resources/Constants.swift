//
//  Constants.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

class Constants {
    static let urlComponentsScheme = "https"
    static let urlComponentsHost = "618d3aa7fe09aa001744060a.mockapi.io"
    static let urlComponentsPath = "/api/sports"
    
    static let networkTimeout: TimeInterval = 94
    static let screeSize = UIScreen.main.bounds.size
    @available(iOS 13.0, *)
    static let appDelegate = UIApplication.shared.delegate as! AppDelegate
    static let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
    static let bundleVersion = Bundle.main.infoDictionary?["CFBundleVersion"] as? String ?? ""
    static let bundleIdentifier = Bundle.main.infoDictionary?["CFBundleIdentifier"] as? String
    static let deviceModel = UIDevice().type
    static let osVersion = UIDevice.current.systemVersion
    static let appPlatform = "ios"
    static let deviceManufacturer = "Apple Inc."
}
