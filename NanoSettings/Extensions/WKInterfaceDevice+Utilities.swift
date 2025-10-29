//
//  WKInterfaceDevice+Utilities.swift
//  NanoSettings
//

import SwiftUI

extension WKInterfaceDevice {
    /// Returns whether the host is on a simulated/preview instance or on a physical device.
    static let IsSimulated: Bool = {
        if let answer = MGHelper.read(key: "ulMliLomP737aAOJ/w/evA") { // IsSimulator key
            return Bool(answer)!
        }
        
        // Fallback
        return ProcessInfo().environment["SIMULATOR_MODEL_IDENTIFIER"] != nil
    }()
}
