//
//  UIDeviceExtensions.swift
//  SwifterSwift
//
//  Created by SwifterSwift on 06/04/2024.
//  Copyright © 2024 SwifterSwift
//
#if canImport(UIKit) && os(iOS)
import UIKit

public extension UIDevice {
    
    var modelName: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machineMirror = Mirror(reflecting: systemInfo.machine)
        let identifier = machineMirror.children.reduce("") { identifier, element in
            guard let value = element.value as? Int8, value != 0 else { return identifier }
            return identifier + String(UnicodeScalar(UInt8(value)))
        }
        
        switch identifier {
            //More data: https://gist.github.com/adamawolf/3048717
            //IPHONE
        case "iPod5,1":                                 return "iPod Touch 5"
        case "iPod7,1":                                 return "iPod Touch 6"
        case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
        case "iPhone4,1":                               return "iPhone 4s"
        case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
        case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
        case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
        case "iPhone7,2":                               return "iPhone 6"
        case "iPhone7,1":                               return "iPhone 6 Plus"
        case "iPhone8,1":                               return "iPhone 6s"
        case "iPhone8,2":                               return "iPhone 6s Plus"
        case "iPhone8,4" : return "iPhone SE (GSM)"
        case "iPhone9,1" : return "iPhone 7"
        case "iPhone9,2" : return "iPhone 7 Plus"
        case "iPhone9,3" : return "iPhone 7"
        case "iPhone9,4" : return "iPhone 7 Plus"
        case "iPhone10,1" : return "iPhone 8"
        case "iPhone10,2" : return "iPhone 8 Plus"
        case "iPhone10,3" : return "iPhone X Global"
        case "iPhone10,4" : return "iPhone 8"
        case "iPhone10,5" : return "iPhone 8 Plus"
        case "iPhone10,6" : return "iPhone X GSM"
        case "iPhone11,2" : return "iPhone XS"
        case "iPhone11,4" : return "iPhone XS Max"
        case "iPhone11,6" : return "iPhone XS Max Global"
        case "iPhone11,8" : return "iPhone XR"
        case "iPhone12,1" : return "iPhone 11"
        case "iPhone12,3" : return "iPhone 11 Pro"
        case "iPhone12,5" : return "iPhone 11 Pro Max"
        case "iPhone12,8" : return "iPhone SE 2nd Gen"
        case "iPhone13,1" : return "iPhone 12 Mini"
        case "iPhone13,2" : return "iPhone 12"
        case "iPhone13,3" : return "iPhone 12 Pro"
        case "iPhone13,4" : return "iPhone 12 Pro Max"
        case "iPhone14,2" : return "iPhone 13 Pro"
        case "iPhone14,3" : return "iPhone 13 Pro Max"
        case "iPhone14,4" : return "iPhone 13 Mini"
        case "iPhone14,5" : return "iPhone 13"
        case "iPhone14,6" : return "iPhone SE 3rd Gen"
        case "iPhone14,7" : return "iPhone 14"
        case "iPhone14,8" : return "iPhone 14 Plus"
        case "iPhone15,2" : return "iPhone 14 Pro"
        case "iPhone15,3" : return "iPhone 14 Pro Max"
        case "iPhone15,4" : return "iPhone 15"
        case "iPhone15,5" : return "iPhone 15 Plus"
        case "iPhone16,1" : return "iPhone 15 Pro"
        case "iPhone16,2" : return "iPhone 15 Pro Max"
            
            //IPAD
        case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
        case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad 3"
        case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad 4"
        case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
        case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad Mini"
        case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad Mini 2"
        case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad Mini 3"
        case "iPad5,1"                      :           return "iPad Mini 4"
        case "iPad5,2" : return "4th Gen iPad mini (WiFi+Cellular)"
        case "iPad5,3" : return "iPad Air 2 (WiFi)"
        case "iPad5,4" : return "iPad Air 2 (Cellular)"
        case "iPad6,3" : return "iPad Pro (9.7 inch, WiFi)"
        case "iPad6,4" : return "iPad Pro (9.7 inch, WiFi+LTE)"
        case "iPad6,7" : return "iPad Pro (12.9 inch, WiFi)"
        case "iPad6,8" : return "iPad Pro (12.9 inch, WiFi+LTE)"
        case "iPad6,11" : return "iPad (2017)"
        case "iPad6,12" : return "iPad (2017)"
        case "iPad7,1" : return "iPad Pro 2nd Gen (WiFi)"
        case "iPad7,2" : return "iPad Pro 2nd Gen (WiFi+Cellular)"
        case "iPad7,3" : return "iPad Pro 10.5-inch 2nd Gen"
        case "iPad7,4" : return "iPad Pro 10.5-inch 2nd Gen"
        case "iPad7,5" : return "iPad 6th Gen (WiFi)"
        case "iPad7,6" : return "iPad 6th Gen (WiFi+Cellular)"
        case "iPad7,11" : return "iPad 7th Gen 10.2-inch (WiFi)"
        case "iPad7,12" : return "iPad 7th Gen 10.2-inch (WiFi+Cellular)"
        case "iPad8,1" : return "iPad Pro 11 inch 3rd Gen (WiFi)"
        case "iPad8,2" : return "iPad Pro 11 inch 3rd Gen (1TB, WiFi)"
        case "iPad8,3" : return "iPad Pro 11 inch 3rd Gen (WiFi+Cellular)"
        case "iPad8,4" : return "iPad Pro 11 inch 3rd Gen (1TB, WiFi+Cellular)"
        case "iPad8,5" : return "iPad Pro 12.9 inch 3rd Gen (WiFi)"
        case "iPad8,6" : return "iPad Pro 12.9 inch 3rd Gen (1TB, WiFi)"
        case "iPad8,7" : return "iPad Pro 12.9 inch 3rd Gen (WiFi+Cellular)"
        case "iPad8,8" : return "iPad Pro 12.9 inch 3rd Gen (1TB, WiFi+Cellular)"
        case "iPad8,9" : return "iPad Pro 11 inch 4th Gen (WiFi)"
        case "iPad8,10" : return "iPad Pro 11 inch 4th Gen (WiFi+Cellular)"
        case "iPad8,11" : return "iPad Pro 12.9 inch 4th Gen (WiFi)"
        case "iPad8,12" : return "iPad Pro 12.9 inch 4th Gen (WiFi+Cellular)"
        case "iPad11,1" : return "iPad mini 5th Gen (WiFi)"
        case "iPad11,2" : return "iPad mini 5th Gen"
        case "iPad11,3" : return "iPad Air 3rd Gen (WiFi)"
        case "iPad11,4" : return "iPad Air 3rd Gen"
        case "iPad11,6" : return "iPad 8th Gen (WiFi)"
        case "iPad11,7" : return "iPad 8th Gen (WiFi+Cellular)"
        case "iPad12,1" : return "iPad 9th Gen (WiFi)"
        case "iPad12,2" : return "iPad 9th Gen (WiFi+Cellular)"
        case "iPad14,1" : return "iPad mini 6th Gen (WiFi)"
        case "iPad14,2" : return "iPad mini 6th Gen (WiFi+Cellular)"
        case "iPad13,1" : return "iPad Air 4th Gen (WiFi)"
        case "iPad13,2" : return "iPad Air 4th Gen (WiFi+Cellular)"
        case "iPad13,4" : return "iPad Pro 11 inch 5th Gen"
        case "iPad13,5" : return "iPad Pro 11 inch 5th Gen"
        case "iPad13,6" : return "iPad Pro 11 inch 5th Gen"
        case "iPad13,7" : return "iPad Pro 11 inch 5th Gen"
        case "iPad13,8" : return "iPad Pro 12.9 inch 5th Gen"
        case "iPad13,9" : return "iPad Pro 12.9 inch 5th Gen"
        case "iPad13,10" : return "iPad Pro 12.9 inch 5th Gen"
        case "iPad13,11" : return "iPad Pro 12.9 inch 5th Gen"
        case "iPad13,16" : return "iPad Air 5th Gen (WiFi)"
        case "iPad13,17" : return "iPad Air 5th Gen (WiFi+Cellular)"
        case "iPad13,18" : return "iPad 10th Gen"
        case "iPad13,19" : return "iPad 10th Gen"
        case "iPad14,3" : return "iPad Pro 11 inch 4th Gen"
        case "iPad14,4" : return "iPad Pro 11 inch 4th Gen"
        case "iPad14,5" : return "iPad Pro 12.9 inch 6th Gen"
        case "iPad14,6" : return "iPad Pro 12.9 inch 6th Gen"
            
            //TIVI
        case "AppleTV5,3": return "Apple TV"
        case "i386", "x86_64": return "Simulator"
            
            
            //Apple watch
        case "Watch1,1" : return "Apple Watch 38mm case"
        case "Watch1,2" : return "Apple Watch 42mm case"
        case "Watch2,6" : return "Apple Watch Series 1 38mm case"
        case "Watch2,7" : return "Apple Watch Series 1 42mm case"
        case "Watch2,3" : return "Apple Watch Series 2 38mm case"
        case "Watch2,4" : return "Apple Watch Series 2 42mm case"
        case "Watch3,1" : return "Apple Watch Series 3 38mm case (GPS+Cellular)"
        case "Watch3,2" : return "Apple Watch Series 3 42mm case (GPS+Cellular)"
        case "Watch3,3" : return "Apple Watch Series 3 38mm case (GPS)"
        case "Watch3,4" : return "Apple Watch Series 3 42mm case (GPS)"
        case "Watch4,1" : return "Apple Watch Series 4 40mm case (GPS)"
        case "Watch4,2" : return "Apple Watch Series 4 44mm case (GPS)"
        case "Watch4,3" : return "Apple Watch Series 4 40mm case (GPS+Cellular)"
        case "Watch4,4" : return "Apple Watch Series 4 44mm case (GPS+Cellular)"
        case "Watch5,1" : return "Apple Watch Series 5 40mm case (GPS)"
        case "Watch5,2" : return "Apple Watch Series 5 44mm case (GPS)"
        case "Watch5,3" : return "Apple Watch Series 5 40mm case (GPS+Cellular)"
        case "Watch5,4" : return "Apple Watch Series 5 44mm case (GPS+Cellular)"
        case "Watch5,9" : return "Apple Watch SE 40mm case (GPS)"
        case "Watch5,10" : return "Apple Watch SE 44mm case (GPS)"
        case "Watch5,11" : return "Apple Watch SE 40mm case (GPS+Cellular)"
        case "Watch5,12" : return "Apple Watch SE 44mm case (GPS+Cellular)"
        case "Watch6,1" : return "Apple Watch Series 6 40mm case (GPS)"
        case "Watch6,2" : return "Apple Watch Series 6 44mm case (GPS)"
        case "Watch6,3" : return "Apple Watch Series 6 40mm case (GPS+Cellular)"
        case "Watch6,4" : return "Apple Watch Series 6 44mm case (GPS+Cellular)"
        case "Watch6,6" : return "Apple Watch Series 7 41mm case (GPS)"
        case "Watch6,7" : return "Apple Watch Series 7 45mm case (GPS)"
        case "Watch6,8" : return "Apple Watch Series 7 41mm case (GPS+Cellular)"
        case "Watch6,9" : return "Apple Watch Series 7 45mm case (GPS+Cellular)"
        case "Watch6,10" : return "Apple Watch SE 40mm case (GPS)"
        case "Watch6,11" : return "Apple Watch SE 44mm case (GPS)"
        case "Watch6,12" : return "Apple Watch SE 40mm case (GPS+Cellular)"
        case "Watch6,13" : return "Apple Watch SE 44mm case (GPS+Cellular)"
        case "Watch6,14" : return "Apple Watch Series 8 41mm case (GPS)"
        case "Watch6,15" : return "Apple Watch Series 8 45mm case (GPS)"
        case "Watch6,16" : return "Apple Watch Series 8 41mm case (GPS+Cellular)"
        case "Watch6,17" : return "Apple Watch Series 8 45mm case (GPS+Cellular)"
        case "Watch6,18" : return "Apple Watch Ultra"
        case "Watch7,1" : return "Apple Watch Series 9 41mm case (GPS)"
        case "Watch7,2" : return "Apple Watch Series 9 45mm case (GPS)"
        case "Watch7,3" : return "Apple Watch Series 9 41mm case (GPS+Cellular)"
        case "Watch7,4" : return "Apple Watch Series 9 45mm case (GPS+Cellular)"
        case "Watch7,5" : return "Apple Watch Ultra 2"
            
        default: return identifier
        }
    }
    
}
#endif