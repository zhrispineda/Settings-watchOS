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
    
    private static func performSelector(_ selectorName: String, with argument: Any) -> UIImage? {
        let selector = NSSelectorFromString(selectorName)
        guard self.responds(to: selector) else { return nil }
        let result = self.perform(selector, with: argument)
        return result?.takeUnretainedValue() as? UIImage
    }
    
    /// Returns a UIImage given a UTI identifier.
    /// - Parameter uti: UTI identifier for icon to query.
    /// - Returns: UIImage of icon if valid. Invalid UTIs will return a doc icon with a question mark.
    ///
    /// - Warning: Do not use this method for public apps. Usage is not recommended as it is not publicly supported and may be unstable.
    static func icon(forUTI uti: String) -> UIImage? {
        loadPreferences()
        SettingsLogger.log("Loading icon with UTI: \(uti)")
        return performSelector("ps_synchronousIconWithTypeIdentifier:", with: uti)
    }
    
    /// Returns a UIImage given a bundle identifier.
    /// - Parameter bundleID: Bundle identifier for icon to query.
    /// - Returns: UIImage of icon if valid. Invalid bundle IDs will return a template icon.
    ///
    /// - Warning: Do not use this method for public apps. Usage is not recommended as it is not publicly supported and may be unstable.
    static func icon(forBundleID bundleID: String) -> UIImage? {
        loadPreferences()
        SettingsLogger.log("Loading icon with bundle ID: \(bundleID)")
        return performSelector("ps_synchronousIconWithApplicationBundleIdentifier:", with: bundleID)
    }
}
