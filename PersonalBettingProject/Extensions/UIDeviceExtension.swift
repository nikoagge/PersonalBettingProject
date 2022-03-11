//
//  UIDeviceExtension.swift
//  PersonalBettingProject
//
//  Created by Nikos Aggelidis on 11/3/22.
//

import UIKit

extension UIDevice {
    var iPhone: Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    var iPad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    var screenType: ScreenType {
        switch UIScreen.main.nativeBounds.height {
        case 480:
            return .iPods_1_2_3
            
        case 960:
            return .iPhones_4_4S_iPod_4
            
        case 1024:
            return .iPads_1_2_Mini
            
        case 1136:
            return .iPhones_5_5S_5C_SE_iPods_5_6_7
            
        case 1334:
            return .iPhones_6_6S_7_8_SE2ndgen
            
        case 1792:
            return .iPhones_XR_11
            
        case 1920:
            return .iPhone8Plus
            
        case 2048:
            return .iPads_3_4_5_6_Air_Air2_Mini2_Mini3_Mini4_Mini5_Pro1_9_7
            
        case 2160:
            return .iPads_7_8_9
            
        case 2208:
            return .iPhones_6Plus_6SPlus_7Plus
            
        case 2224:
            return .iPads_Air3_Pro2_10_5
            
        case 2266:
            return .iPadMini6
            
        case 2340:
            return .iPhones_12Mini_13Mini
            
        case 2360:
            return .iPadAir4
            
        case 2388:
            return .iPads_Pro3_11_Pro4_11_Pro5_11
            
        case 2436:
            return .iPhones_X_XS_11Pro
            
        case 2532:
            return .iPhones_12_12Pro_13_13Pro
            
        case 2688:
            return .iPhones_XSMax_11ProMax
            
        case 2732:
            return .iPads_Pro1_12_9_Pro2_12_9_Pro3_12_9_Pro4_12_9_Pro5_12_9
            
        case 2778:
            return .iPhones_12ProMax_13ProMax
            
        default:
            return .iPhones_12ProMax_13ProMax
        }
    }
    
    var type: DeviceModel {
        var systemInfo = utsname()
        uname(&systemInfo)
        let modelCode = withUnsafePointer(to: &systemInfo.machine) { $0.withMemoryRebound(to: CChar.self, capacity: 1) { unsafePointer in
            String(validatingUTF8: unsafePointer)
            }
        }
        
        let modelMap : [String: DeviceModel] = [
                    "i386"      : .simulator,
                    "x86_64"    : .simulator,
            
                    "iPod1,1"   : .iPod1,
                    "iPod2,1"   : .iPod2,
                    "iPod3,1"   : .iPod3,
                    "iPod4,1"   : .iPod4,
                    "iPod5,1"   : .iPod5,
                    "iPod7,1"   : .iPod6,
                    "iPod9,1"   : .iPod7,
            
                    "iPad2,1"   : .iPad2,
                    "iPad2,2"   : .iPad2,
                    "iPad2,3"   : .iPad2,
                    "iPad2,4"   : .iPad2,
                    "iPad3,1"   : .iPad3,
                    "iPad3,2"   : .iPad3,
                    "iPad3,3"   : .iPad3,
                    "iPad3,4"   : .iPad4,
                    "iPad3,5"   : .iPad4,
                    "iPad3,6"   : .iPad4,
                    "iPad6,11"  : .iPad5,
                    "iPad6,12"  : .iPad5,
                    "iPad7,5"   : .iPad6,
                    "iPad7,6"   : .iPad6,
                    "iPad7,11"  : .iPad7,
                    "iPad7,12"  : .iPad7,
                    "iPad11,6"  : .iPad8,
                    "iPad11,7"  : .iPad8,
                    "iPad12,1"  : .iPad9,
                    "iPad12,2"  : .iPad9,
            
                    "iPad2,5"   : .iPadMini,
                    "iPad2,6"   : .iPadMini,
                    "iPad2,7"   : .iPadMini,
                    "iPad4,4"   : .iPadMini2,
                    "iPad4,5"   : .iPadMini2,
                    "iPad4,6"   : .iPadMini2,
                    "iPad4,7"   : .iPadMini3,
                    "iPad4,8"   : .iPadMini3,
                    "iPad4,9"   : .iPadMini3,
                    "iPad5,1"   : .iPadMini4,
                    "iPad5,2"   : .iPadMini4,
                    "iPad11,1"  : .iPadMini5,
                    "iPad11,2"  : .iPadMini5,
                    "iPad14,1"  : .iPadMini6,
                    "iPad14,2"  : .iPadMini6,
            
                    "iPad6,3"   : .iPadPro9_7,
                    "iPad6,4"   : .iPadPro9_7,
                    "iPad7,3"   : .iPadPro10_5,
                    "iPad7,4"   : .iPadPro10_5,
                    "iPad6,7"   : .iPadPro12_9,
                    "iPad6,8"   : .iPadPro12_9,
                    "iPad7,1"   : .iPadPro2_12_9,
                    "iPad7,2"   : .iPadPro2_12_9,
                    "iPad8,1"   : .iPadPro11,
                    "iPad8,2"   : .iPadPro11,
                    "iPad8,3"   : .iPadPro11,
                    "iPad8,4"   : .iPadPro11,
                    "iPad8,9"   : .iPadPro2_11,
                    "iPad8,10"  : .iPadPro2_11,
                    "iPad13,4"  : .iPadPro3_11,
                    "iPad13,5"  : .iPadPro3_11,
                    "iPad13,6"  : .iPadPro3_11,
                    "iPad13,7"  : .iPadPro3_11,
                    "iPad8,5"   : .iPadPro3_12_9,
                    "iPad8,6"   : .iPadPro3_12_9,
                    "iPad8,7"   : .iPadPro3_12_9,
                    "iPad8,8"   : .iPadPro3_12_9,
                    "iPad8,11"  : .iPadPro4_12_9,
                    "iPad8,12"  : .iPadPro4_12_9,
                    "iPad13,8"  : .iPadPro5_12_9,
                    "iPad13,9"  : .iPadPro5_12_9,
                    "iPad13,10" : .iPadPro5_12_9,
                    "iPad13,11" : .iPadPro5_12_9,
            
                    "iPad4,1"   : .iPadAir,
                    "iPad4,2"   : .iPadAir,
                    "iPad4,3"   : .iPadAir,
                    "iPad5,3"   : .iPadAir2,
                    "iPad5,4"   : .iPadAir2,
                    "iPad11,3"  : .iPadAir3,
                    "iPad11,4"  : .iPadAir3,
                    "iPad13,1"  : .iPadAir4,
                    "iPad13,2"  : .iPadAir4,
                    
                    "iPhone3,1" : .iPhone4,
                    "iPhone3,2" : .iPhone4,
                    "iPhone3,3" : .iPhone4,
                    "iPhone4,1" : .iPhone4S,
                    "iPhone5,1" : .iPhone5,
                    "iPhone5,2" : .iPhone5,
                    "iPhone5,3" : .iPhone5C,
                    "iPhone5,4" : .iPhone5C,
                    "iPhone6,1" : .iPhone5S,
                    "iPhone6,2" : .iPhone5S,
                    "iPhone7,1" : .iPhone6Plus,
                    "iPhone7,2" : .iPhone6,
                    "iPhone8,1" : .iPhone6S,
                    "iPhone8,2" : .iPhone6SPlus,
                    "iPhone8,4" : .iPhoneSE,
                    "iPhone9,1" : .iPhone7,
                    "iPhone9,3" : .iPhone7,
                    "iPhone9,2" : .iPhone7Plus,
                    "iPhone9,4" : .iPhone7Plus,
                    "iPhone10,1" : .iPhone8,
                    "iPhone10,4" : .iPhone8,
                    "iPhone10,2" : .iPhone8Plus,
                    "iPhone10,5" : .iPhone8Plus,
                    "iPhone10,3" : .iPhoneX,
                    "iPhone10,6" : .iPhoneX,
                    "iPhone11,2" : .iPhoneXS,
                    "iPhone11,4" : .iPhoneXSMax,
                    "iPhone11,6" : .iPhoneXSMax,
                    "iPhone11,8" : .iPhoneXR,
                    "iPhone12,1" : .iPhone11,
                    "iPhone12,3" : .iPhone11Pro,
                    "iPhone12,5" : .iPhone11ProMax,
                    "iPhone12,8" : .iPhoneSE2,
                    "iPhone13,1" : .iPhone12Mini,
                    "iPhone13,2" : .iPhone12,
                    "iPhone13,3" : .iPhone12Pro,
                    "iPhone13,4" : .iPhone12ProMax,
                    "iPhone14,4" : .iPhone13Mini,
                    "iPhone14,5" : .iPhone13,
                    "iPhone14,2" : .iPhone13Pro,
                    "iPhone14,3" : .iPhone13ProMax,
                    
                    "Watch1,1" : .AppleWatch1,
                    "Watch1,2" : .AppleWatch1,
                    "Watch2,6" : .AppleWatchS1,
                    "Watch2,7" : .AppleWatchS1,
                    "Watch2,3" : .AppleWatchS2,
                    "Watch2,4" : .AppleWatchS2,
                    "Watch3,1" : .AppleWatchS3,
                    "Watch3,2" : .AppleWatchS3,
                    "Watch3,3" : .AppleWatchS3,
                    "Watch3,4" : .AppleWatchS3,
                    "Watch4,1" : .AppleWatchS4,
                    "Watch4,2" : .AppleWatchS4,
                    "Watch4,3" : .AppleWatchS4,
                    "Watch4,4" : .AppleWatchS4,
                    "Watch5,1" : .AppleWatchS5,
                    "Watch5,2" : .AppleWatchS5,
                    "Watch5,3" : .AppleWatchS5,
                    "Watch5,4" : .AppleWatchS5,
                    "Watch5,9" : .AppleWatchSE,
                    "Watch5,10" : .AppleWatchSE,
                    "Watch5,11" : .AppleWatchSE,
                    "Watch5,12" : .AppleWatchSE,
                    "Watch6,1" : .AppleWatchS6,
                    "Watch6,2" : .AppleWatchS6,
                    "Watch6,3" : .AppleWatchS6,
                    "Watch6,4" : .AppleWatchS6,
                    "Watch6,6" : .AppleWatchS7,
                    "Watch6,7" : .AppleWatchS7,
                    "Watch6,8" : .AppleWatchS7,
                    "Watch6,9" : .AppleWatchS7,
            
                    //Apple TV
                    "AppleTV1,1" : .AppleTV1,
                    "AppleTV2,1" : .AppleTV2,
                    "AppleTV3,1" : .AppleTV3,
                    "AppleTV3,2" : .AppleTV3,
                    "AppleTV5,3" : .AppleTV4,
                    "AppleTV6,2" : .AppleTV_4K,
                    "AppleTV11,1" : .AppleTV2_4K
                ]
        
        if let deviceModel = modelMap[String(validatingUTF8: modelCode!)!] {
            if deviceModel == .simulator {
                if let simModelCode = ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] {
                    if let simModel = modelMap[String(validatingUTF8: simModelCode)!] {
                        return simModel
                    }
                }
            }
            
            return deviceModel
        }
        
        return DeviceModel.unrecognized
    }
}

extension UIDevice {
    var hasNotch: Bool {
        if #available(iOS 11.0, *) {
            let bottom = UIApplication.shared.keyWindow?.safeAreaInsets.bottom ?? 0
            
            return bottom > 0
        } else {
            return false
        }
    }
}

extension UIDevice {
    func  isIPodOrIPhoneWithoutNotch() -> Bool {
        if UIDevice().screenType == .iPhones_5_5S_5C_SE_iPods_5_6_7 || UIDevice().screenType == .iPhones_4_4S_iPod_4 || UIDevice().screenType == .iPhone8Plus || UIDevice().screenType == .iPhones_6Plus_6SPlus_7Plus || UIDevice().screenType == .iPhones_6_6S_7_8_SE2ndgen || UIDevice().screenType == .iPods_1_2_3 {
            return true
        }
        
        return false
    }
}
