//
//  UIImageExtensions.swift
//  NanoSettings
//

import SwiftUI

extension UIImage {
    private static func loadPreferences() {
        let path = "/System/Library/PrivateFrameworks/Preferences.framework/Preferences"
        if dlopen(path, RTLD_NOLOAD) == nil {
            dlopen(path, RTLD_NOW)
        }
    }
    
    private static func performSelector(_ name: String, with argument: Any) -> UIImage? {
        let selector = NSSelectorFromString(name)
        guard UIImage.responds(to: selector) else {
            return nil
        }
        let result = UIImage.perform(selector, with: argument)
        return result?.takeUnretainedValue() as? UIImage
    }
    
    static func icon(forUTI uti: String) -> UIImage? {
        loadPreferences()
        return performSelector("ps_synchronousIconWithTypeIdentifier:", with: uti)
    }

    static func icon(forBundleID bundleID: String) -> UIImage? {
        loadPreferences()
        return performSelector("ps_synchronousIconWithApplicationBundleIdentifier:", with: bundleID)
    }
}
